"""pybnf.parse: grammar and methods for parsing the configuration file"""


from .printing import PybnfError, print1
from .config import Configuration

from string import punctuation

import logging
import pyparsing as pp
import re


logger = logging.getLogger(__name__)


numkeys_int = ['verbosity', 'parallel_count', 'seed', 'delete_old_files', 'max_generations', 'population_size',
               'smoothing', 'max_parents', 'force_different_parents', 'keep_parents', 'divide_by_init',
               'log_transform_sim_data', 'standardize_sim_data', 'standardize_exp_data', 'max_iterations',
               'num_to_output', 'output_every', 'islands', 'migrate_every', 'num_to_migrate', 'init_size',
               'local_min_limit', 'reserve_size', 'burn_in', 'sample_every', 'output_hist_every',
               'hist_bins', 'refine', 'simplex_max_iterations', 'wall_time_sim', 'wall_time_gen', 'verbosity',
               'exchange_every', 'backup_every']
numkeys_float = ['extra_weight', 'swap_rate', 'min_objfunc_value', 'cognitive', 'social', 'particle_weight',
                 'particle_weight_final', 'adaptive_n_max', 'adaptive_n_stop', 'adaptive_abs_tol', 'adaptive_rel_tol',
                 'mutation_rate', 'mutation_factor', 'stop_tolerance', 'step_size', 'simplex_step', 'simplex_log_step',
                 'simplex_reflection', 'simplex_expansion', 'simplex_contraction', 'simplex_shrink', 'cooling',
                 'beta_max']
multnumkeys = ['credible_intervals', 'beta', 'beta_range']
b_var_def_keys = ['uniform_var', 'loguniform_var']
var_def_keys = ['lognormal_var', 'normal_var', 'mutate']
var_def_keys_1or2nums = ['var', 'logvar']
strkeylist = ['bng_command', 'copasi_command', 'job_name', 'output_dir', 'fit_type', 'objfunc', 'initialization',
              'cluster_type', 'scheduler_node']
multstrkeys = ['worker_nodes']


def parse(s):
    equals = pp.Suppress('=')
    colon = pp.Suppress(':')
    comment = pp.Suppress(pp.Optional(pp.Literal('#') - pp.ZeroOrMore(pp.Word(pp.printables))))
    # set up multiple grammars

    # single str value
    strkeys = pp.oneOf(' '.join(strkeylist),
                       caseless=True)
    string = pp.Word(pp.alphanums + punctuation)
    strgram = strkeys - equals - string - comment

    # single num value
    numkeys = pp.oneOf(' '.join(numkeys_int + numkeys_float), caseless=True)
    point = pp.Literal(".")
    e = pp.CaselessLiteral("E")
    num = pp.Combine(pp.Word("+-" + pp.nums, pp.nums) +
                         pp.Optional(point + pp.Optional(pp.Word(pp.nums))) +
                         pp.Optional(e + pp.Word("+-" + pp.nums, pp.nums)))
    numgram = numkeys - equals - num - comment

    # variable definition grammar
    strnumkeys = pp.oneOf(' '.join(var_def_keys + b_var_def_keys), caseless=True)
    bng_parameter = pp.Word(pp.alphas, pp.alphanums + "_")
    varnums = bng_parameter - num - num - pp.Optional(pp.Word("ubBU"))
    strnumgram = strnumkeys - equals - varnums - comment

    # multiple string value grammar
    multstrkey = pp.oneOf(' '.join(multstrkeys), caseless=True)
    multstrgram = multstrkey - equals - pp.OneOrMore(string)

    # var and logvar alt grammar (only one number given)
    varkeys = pp.oneOf(' '.join(var_def_keys_1or2nums), caseless=True)
    vargram = varkeys - equals - bng_parameter - num - pp.Optional(num) - comment

    # multiple num value
    multnumkey = pp.oneOf(' '.join(multnumkeys), caseless=True)
    multnumgram = multnumkey - equals - pp.OneOrMore(num) - comment

    # model-data mapping grammar
    mdmkey = pp.CaselessLiteral("model")
    bngl_file = pp.Regex(".*?\.(bngl|xml)")
    exp_file = pp.Regex(".*?\.(exp|con)")
    mdmgram = mdmkey - equals - bngl_file - colon - pp.delimitedList(exp_file) - comment

    # normalization mapping grammar
    normkey = pp.CaselessLiteral("normalization")
    anything = pp.Word(pp.alphanums+punctuation+' ')
    normgram = normkey - equals - anything  # The set of legal grammars for normalization is too complicated,
    # Will handle with separate code.

    timecourse_key = pp.CaselessLiteral('time_course')
    timecourse_gram = timecourse_key - equals - pp.Optional(bngl_file - colon) - num - num
    paramscan_key = pp.CaselessLiteral('param_scan')
    paramscan_gram = paramscan_key - equals - pp.Optional(bngl_file - colon) - bng_parameter - num - num - num - num

    # check each grammar and output somewhat legible error message
    line = (mdmgram | strgram | numgram | strnumgram | multnumgram | multstrgram | vargram | normgram |
            timecourse_gram | paramscan_gram).parseString(s, parseAll=True).asList()

    return line


def load_config(path):
    try:
        infile = open(path, 'r')
    except FileNotFoundError:
        raise PybnfError('Configuration file %s not found' % path)
    param_dict = ploop(infile.readlines())
    infile.close()
    return Configuration(param_dict)


def flatten(vs):
    return vs[0] if len(vs) == 1 else vs


def ploop(ls):  # parse loop
    d = {}
    models = set()
    exp_data = set()
    for i, line in enumerate(ls):
        if re.match('\s*$', line) or re.match('\s*#', line):
            continue
        try:
            logger.debug('Parsing line %s' % line.strip())
            l = parse(line)

            # Find parameter assignments that reference distinct parameters
            if l[0] in b_var_def_keys:
                key = (l[0], l[1])
                values = [float(x) for x in l[2:4]]
                if len(l) == 5:
                    values.append(re.fullmatch('b', l[4], flags=re.IGNORECASE) is not None)
                else:
                    values.append(True)
            elif l[0] in var_def_keys_1or2nums or l[0] in var_def_keys:
                key = (l[0], l[1])
                values = [float(x) for x in l[2:]]
            elif l[0] in numkeys_int:
                key = l[0]
                values = int(l[1])
            elif l[0] in numkeys_float:
                key = l[0]
                values = float(l[1])
            elif l[0] in multnumkeys:
                key = l[0]
                values = [float(x) for x in l[1:]]
            else:
                key = l[0]
                values = flatten(l[1:])

            # Find parameter assignments defining model and experimental data
            if l[0] == 'model':
                key = l[1]
                values = l[2:]
                d[key] = values  # individual data files remain in list
                models.add(key)
                exp_data.update(values)
            elif l[0] == 'time_course' or l[0] == 'param_scan':
                # Multiple declarations allowed; dict entry should contain a list of all the declarations.
                # All numbers should get cast to floats
                for xi in range(1, len(l)):
                    try:
                        l[xi] = float(l[xi])
                    except ValueError:
                        pass
                if l[0] in d:
                    d[l[0]].append(l[1:])
                else:
                    d[l[0]] = [l[1:]]
            elif l[0] == 'normalization':
                # Normalization defined with way too many possible options
                # At the end of all this, the config dict has one of the following formats:
                # 'normalization' : 'type'
                # 'normalization' : {'expfile':'type', 'expfile2':[('type1', [numbers]), ('type2', [colnames]), ...]}

                parsed = parse_normalization_def(values)
                if type(parsed) == str:
                    if 'normalization' in d:
                        raise PybnfError('contradictory normalization keys',
                                         "Config file contains multiple 'normalization' keys, one of which specifies"
                                         " no specific exp files, thereby applying to all of them. If you are using "
                                         "this option, you should only have one 'normalization' key in the config file.")
                    d['normalization'] = parsed
                else:
                    if 'normalization' in d:
                        if type(d['normalization']) != dict:
                            raise PybnfError('contradictory normalization keys',
                                             "Config file contains multiple 'normalization' keys, one of which specifies"
                                             " no specific exp files, thereby applying to all of them. If you are using "
                                             "this option, you should only have one 'normalization' key in the config file.")
                    else:
                        d['normalization'] = dict()
                    for k in parsed:
                        if k in d['normalization'] and (type(parsed[k]) == str or type(d['normalization'][k]) == str):
                            raise PybnfError('contradictory normalization keys for %s' % k,
                                             "File %s has normalization specified multiple times in a way that is "
                                             "contradictory." % k)
                        if type(parsed[k]) == str:
                            d['normalization'][k] = parsed[k]
                        else:
                            if k not in d['normalization']:
                                d['normalization'][k] = []
                            d['normalization'][k].append(parsed[k])
            else:
                if key in d:
                    if d[key] == values:
                        print1("Warning: Config key '%s' is specified multiple times" % key)
                    else:
                        raise PybnfError("Config key '%s' is specified multiple times with different values." % key)
                d[key] = values

        except pp.ParseBaseException:
            key = re.split('[ =]', line)[0].lower()
            fmt = ''
            if key in numkeys_int:
                fmt = "'%s=x' where x is an integer" % key
            elif key in numkeys_float:
                fmt = "'%s=x' where x is a decimal number" % key
            elif key in multnumkeys:
                fmt = "'%s=x1 x2 ...' where x1, x2, ... is a list of numbers" % key
            elif key in var_def_keys:
                fmt = "'%s=v x y' where v is a variable name, and x and y are numbers" % key
            elif key in b_var_def_keys:
                fmt = "'%s=v x y z' where v is a variable name, x and y are numbers, and z is optional and specifies " \
                      "whether or not the variable should be bounded ('u' is unbounded, 'b' or left blank is bounded)" % key
            elif key in var_def_keys_1or2nums:
                fmt = "'%s=v x' or '%s=v x y' where v is a variable name, and x and y are decimal numbers" % (key, key)
            elif key in strkeylist:
                fmt = "'%s=s' where s is a string" % key
            elif key == 'model':
                fmt = "'model=modelfile.bngl : datafile.exp' or 'model=modelfile.bngl : datafile1.exp, datafile2.exp'" \
                      " Supported modelfile extensions are .bngl and .xml"
            elif key == 'normalization':
                fmt = "'%s=s' or '%s=s : datafile1.exp, datafile2.exp' where s is a string ('init', 'peak', " \
                      "'unit', or 'zero')"\
                    % (key, key)
            elif key == 'time_course':
                fmt = "time_course=time_end time_step, where time_end and time_step are numbers"
            elif key == 'param_scan':
                fmt = "param_scan=param min max step time, where param is a string, and min, max, step, and time are " \
                      "all numbers"

            message = "Parsing configuration key '%s' on line %s.\n" % (key, i)
            if fmt == '':
                message += '%s is not a valid configuration key.' % key
            else:
                message += '%s should be specified in the format %s' % (key, fmt)

            raise PybnfError("Misconfigured config key '%s' at line: %s" % (line.strip(), i), message)

    d['models'] = models
    d['exp_data'] = exp_data
    return d


def parse_normalization_def(s):
    """
    Parse the complicated normalization grammar
    If the grammar is specified incorrectly, it will end up calling something invalid the normalization type or the
    exp file, and this error will be caught later.

    :param s: The string following the equals sign in the normalization key
    :return: What to write in the config dictionary: A string, or a dictionary {expfile: string} or
    {expfile: (string, index_list)} or {expfile: (string, name_list)}
    """

    def parse_range(x):
        """Parse a string as a set of numbers like 10,"""
        result = []
        for part in x.split(','):
            if '-' in part:
                a, b = part.split('-')
                a, b = int(a), int(b)
                result.extend(range(a, b + 1))
            else:
                a = int(part)
                result.append(a)
        return result

    # Remove all spaces
    s = re.sub('\s', '', s)
    if ':' in s:
        # List of exp files
        res = dict()
        i = s.index(':')
        normtype = s[:i]
        explist = s[i+1:]
        exps = re.split(r',(?![^()]*\))', explist) # Dark magic: split on commas that aren't inside parentheses
        # Achievement unlocked: Use 16 punctuation marks in a row
        for e in exps:
            if e[0] == '(' and e[-1] == ')':
                # It's an exp in parentheses with column-wise specs
                pair = e[1:-1].split(':')
                if len(pair) == 1:
                    res[pair[0]] = normtype
                elif len(pair) == 2:
                    e, cols = pair
                    if re.match('^[\d,\-]+$', cols):
                        col_nums = parse_range(cols)
                        res[e] = (normtype, col_nums)
                    else:
                        col_names = cols.split(',')
                        res[e] = (normtype, col_names)
                else:
                    raise PybnfError("Parsing normalization key - the item '%s' has too many colons in it" % e)
            else:
                # It's just an exp
                res[e] = normtype
        return res
    else:
        # Single string for all
        return s
