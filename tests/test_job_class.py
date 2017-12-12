from .context import algorithms
from .context import data
from .context import pset
from os import chdir
from os import mkdir
from os import environ
from os.path import isfile
from os.path import isdir
from shutil import rmtree


class TestJob(object):
    def __init__(self):
        pass

    @classmethod
    def setup_class(cls):
        cls.model = pset.BNGLModel('bngl_files/Tricky.bngl')
        d = {
            'koff__FREE__': 0.1,
            '__koff2__FREE__': 0.1,
            'kase__FREE__': 1,
            'pase__FREE__': 1
        }
        cls.pset = pset.PSet(d)
        cls.bngpath = environ['BNGPATH'] + '/BNG2.pl'
        cls.job = algorithms.Job([cls.model], cls.pset, 'sim_1', cls.bngpath, '.', timeout=None)
        cls.job_to = algorithms.Job([cls.model], cls.pset, 'sim_to', cls.bngpath, '.', timeout=0)

    @classmethod
    def teardown_class(cls):
        rmtree('sim_net')
        rmtree('sim_x')
        rmtree('sim_1')
        rmtree('sim_to')

    def test_job_components(self):
        mkdir('sim_x')
        chdir('sim_x')
        model_files = self.job._write_models()
        self.job.execute(model_files)
        sim_data = self.job.load_simdata()
        assert len(sim_data.keys()) == 1
        assert 'Tricky' in sim_data.keys()
        assert sim_data['Tricky'].keys() == set(['p1_5', 'thing'])
        assert isinstance(list(sim_data['Tricky'].values())[0], data.Data)
        chdir('../')
        assert isfile('sim_x/Tricky_sim_1.bngl')
        assert isdir('sim_x/Tricky_sim_1_thing')

    def test_job_run(self):
        res = self.job.run_simulation()
        assert isinstance(res, algorithms.Result)
        sim_data = res.simdata
        assert len(sim_data.keys()) == 1
        assert 'Tricky' in sim_data.keys()
        assert sim_data['Tricky'].keys() == set(['p1_5', 'thing'])
        assert isinstance(list(sim_data['Tricky'].values())[0], data.Data)
        assert isfile('sim_1/Tricky_sim_1.bngl')
        assert isdir('sim_1/Tricky_sim_1_thing')

    def test_net_job(self):
        netmodel = pset.NetModel('TrickyWP_p1_5', ['simulate({method=>"ode",t_start=>0,t_end=>1,n_steps=>10})'], [], nf='bngl_files/TrickyWP_p1_5.net')
        mkdir('sim_net')
        chdir('sim_net')
        job = algorithms.Job([netmodel], pset.PSet({'f': 0.5}), 'test', self.bngpath, '.', timeout=None)
        job.execute(job._write_models())
        assert isfile('TrickyWP_p1_5_test.net')
        assert isfile('TrickyWP_p1_5_test.bngl')
        assert isfile('TrickyWP_p1_5_test.cdat')
        assert isfile('TrickyWP_p1_5_test.gdat')
        chdir('../')

    def test_timeout(self):
        res = self.job_to.run_simulation()
        assert isinstance(res, algorithms.FailedSimulation)
