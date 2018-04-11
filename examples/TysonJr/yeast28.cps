<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.22 (Build 170) (http://www.copasi.org) at 2018-04-10 21:51:19 UTC -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="22" versionDevel="170" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_81" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="Heav" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:04:05Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        if(x lt 0,0,1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="x" order="0" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="Sigmoid" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:05:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        total/(1+exp(-sigma)^wfunction)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_262" name="total" order="0" role="variable"/>
        <ParameterDescription key="FunctionParameter_246" name="sigma" order="1" role="variable"/>
        <ParameterDescription key="FunctionParameter_265" name="wfunction" order="2" role="variable"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Rate Law for Growth_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:10:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        mu*V
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_254" name="V" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_266" name="mu" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Rate Law for Cln3 Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_n3*Dn3*V/(Jn3+Dn3*V)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_268" name="Dn3" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="Jn3" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="V" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_267" name="ks_n3" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Rate Law for Bck2 Synth_1" type="UserDefined" reversible="false">
      <Expression>
        V*ks_k2
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_273" name="V" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_269" name="ks_k2" order="1" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Rate Law for WHI5deP Synth_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:10:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        gamma*(Sigmoid(WHI5T,sig,kdp_i5+kdp_i5_14*CDC14-kp_i5-kp_i5_n3*CLN3-kp_i5_k2*BCK2-kp_i5_n2*CLN2-kp_i5_b5*CLB5)-WHI5deP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_292" name="BCK2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="CDC14" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_300" name="CLB5" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_296" name="CLN2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_288" name="CLN3" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_274" name="WHI5T" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="WHI5deP" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_258" name="gamma" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_278" name="kdp_i5" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_280" name="kdp_i5_14" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="kp_i5" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_298" name="kp_i5_b5" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_290" name="kp_i5_k2" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_294" name="kp_i5_n2" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_286" name="kp_i5_n3" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="sig" order="15" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_46" name="Rate Law for SBFdeP Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gamma*(Sigmoid(SBFT,sig,kdp_bf-kp_bf_b2*CLB2)-SBFdeP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_283" name="CLB2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_299" name="SBFT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="SBFdeP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_303" name="gamma" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="kdp_bf" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="kp_bf_b2" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="sig" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_47" name="Rate Law for Cln2 Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_n2+ks_n2_bf*SBF
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_293" name="SBF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_277" name="ks_n2" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_285" name="ks_n2_bf" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_48" name="Rate Law for CKIT Synth_1" type="UserDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:10:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ks_ki+ks_ki_swi5*SWI5A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="SWI5A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_297" name="ks_ki" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="ks_ki_swi5" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_49" name="Rate Law for CKIT Degr_1" type="UserDefined" reversible="false">
      <Expression>
        kd_ki*(CKIT-CKIP)+kd_kip*CKIP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="CKIP" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_289" name="CKIT" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_271" name="kd_ki" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_307" name="kd_kip" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_50" name="Rate Law for CKIP Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gammaki*(Sigmoid(CKIT,sig,kp_ki_e*(e_ki_n3*CLN3+e_ki_k2*BCK2+e_ki_n2*CLN2+e_ki_b5*CLB5+e_ki_b2*CLB2)-kdp_ki-kdp_ki_14*CDC14)-CKIP)-kd_kip*CKIP
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_319" name="BCK2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_337" name="CDC14" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_339" name="CKIP" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_304" name="CKIT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_331" name="CLB2" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_327" name="CLB5" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_323" name="CLN2" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_315" name="CLN3" order="7" role="modifier"/>
        <ParameterDescription key="FunctionParameter_329" name="e_ki_b2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_325" name="e_ki_b5" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_317" name="e_ki_k2" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_321" name="e_ki_n2" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_313" name="e_ki_n3" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_308" name="gammaki" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_341" name="kd_kip" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_333" name="kdp_ki" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_335" name="kdp_ki_14" order="16" role="constant"/>
        <ParameterDescription key="FunctionParameter_311" name="kp_ki_e" order="17" role="constant"/>
        <ParameterDescription key="FunctionParameter_309" name="sig" order="18" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_51" name="Rate Law for Clb5T Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_b5+ks_b5_bf*SBF
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_334" name="SBF" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_342" name="ks_b5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_338" name="ks_b5_bf" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_52" name="Rate Law for Clb5T Degr_1" type="UserDefined" reversible="false">
      <Expression>
        (kd_b5+kd_b5_20*CDC20A+kd_b5_20_i*CDC20A_APC)*CLB5T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_328" name="CDC20A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_320" name="CDC20A_APC" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_316" name="CLB5T" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_332" name="kd_b5" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_340" name="kd_b5_20" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_324" name="kd_b5_20_i" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_53" name="Rate Law for Clb2T Synth_1" type="UserDefined" reversible="false">
      <Expression>
        (ks_b2+ks_b2_m1*MCM1)*V
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_330" name="MCM1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_312" name="V" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_314" name="ks_b2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_322" name="ks_b2_m1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_54" name="Rate Law for Clb2T Degr_1" type="UserDefined" reversible="false">
      <Expression>
        (kd_b2+kd_b2_20*CDC20A+kd_b2_20_i*CDC20A_APC+kd_b2_h1*CDH1A)*CLB2T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_301" name="CDC20A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_345" name="CDC20A_APC" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_349" name="CDH1A" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_351" name="CLB2T" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_310" name="kd_b2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_326" name="kd_b2_20" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_343" name="kd_b2_20_i" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_347" name="kd_b2_h1" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_55" name="Rate Law for BUD Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_bud_e*(e_bud_n3*CLN3+e_bud_n2*CLN2+e_bud_b5*CLB5+e_bud_b2*CLB2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_361" name="CLB2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_357" name="CLB5" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_353" name="CLN2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_344" name="CLN3" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_359" name="e_bud_b2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_355" name="e_bud_b5" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_318" name="e_bud_n2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_348" name="e_bud_n3" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_352" name="ks_bud_e" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_56" name="Rate Law for ORI Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_ori_e*(e_ori_b5*CLB5+e_ori_b2*CLB2)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_350" name="CLB2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_354" name="CLB5" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_306" name="e_ori_b2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_358" name="e_ori_b5" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_362" name="ks_ori_e" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_57" name="Rate Law for SPN Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_spn*Heav(CLB2-Jspn)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_336" name="CLB2" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_360" name="Jspn" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_363" name="ks_spn" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_58" name="Rate Law for SWI5T Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_swi5+ks_swi5_m1*MCM1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_366" name="MCM1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_364" name="ks_swi5" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_346" name="ks_swi5_m1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_59" name="Rate Law for CDC20T Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_20+ks_20_m1*MCM1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_369" name="MCM1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_367" name="ks_20" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_356" name="ks_20_m1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_60" name="Rate Law for CDC20A_APCP Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gamma*(Sigmoid(CDC20A_APCP_T,sig,ka_20-ki_20_ori*Heav(ORI-1)*(1-Heav(SPN-1)))-CDC20A)-kd_20*CDC20A
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_382" name="CDC20A" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_365" name="CDC20A_APCP_T" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_378" name="ORI" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_380" name="SPN" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_370" name="gamma" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_374" name="ka_20" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_384" name="kd_20" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_376" name="ki_20_ori" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_372" name="sig" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_61" name="Rate Law for APCP Synth_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:10:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        gammacp*(Sigmoid(APCPT,sig,ka_cp_b2*CLB2-ki_cp)-APCP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_389" name="APCP" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_381" name="APCPT" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_368" name="CLB2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_385" name="gammacp" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_373" name="ka_cp_b2" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_387" name="ki_cp" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_377" name="sig" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_62" name="Rate Law for CDH1A Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gamma*(Sigmoid(CDH1T,sig,ka_h1+ka_h1_14*CDC14-ki_h1-ki_h1_e*(e_h1_n3*CLN3+e_h1_n2*CLN2+e_h1_b5*CLB5+e_h1_b2*CLB2))-CDH1A)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_394" name="CDC14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_416" name="CDH1A" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_386" name="CDH1T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_414" name="CLB2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_410" name="CLB5" order="4" role="modifier"/>
        <ParameterDescription key="FunctionParameter_406" name="CLN2" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_402" name="CLN3" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_412" name="e_h1_b2" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_408" name="e_h1_b5" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_404" name="e_h1_n2" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_400" name="e_h1_n3" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_390" name="gamma" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_383" name="ka_h1" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_392" name="ka_h1_14" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_396" name="ki_h1" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_398" name="ki_h1_e" order="15" role="constant"/>
        <ParameterDescription key="FunctionParameter_375" name="sig" order="16" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_63" name="Rate Law for NET1deP Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gamma*(Sigmoid(NET1T,signet,kdp_net+kdp_net_14*CDC14+kdp_net_px*PPX-kp_net-kp_net_b2*CLB2-kp_net_en*MEN-kp_net_15*CDC15)-NET1deP)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_397" name="CDC14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_429" name="CDC15" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_421" name="CLB2" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_425" name="MEN" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_413" name="NET1T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_431" name="NET1deP" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_379" name="PPX" order="6" role="modifier"/>
        <ParameterDescription key="FunctionParameter_417" name="gamma" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_405" name="kdp_net" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_401" name="kdp_net_14" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_393" name="kdp_net_px" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_388" name="kp_net" order="11" role="constant"/>
        <ParameterDescription key="FunctionParameter_427" name="kp_net_15" order="12" role="constant"/>
        <ParameterDescription key="FunctionParameter_419" name="kp_net_b2" order="13" role="constant"/>
        <ParameterDescription key="FunctionParameter_423" name="kp_net_en" order="14" role="constant"/>
        <ParameterDescription key="FunctionParameter_409" name="signet" order="15" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_64" name="Rate Law for PPX Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gamma*(Sigmoid(PPXT,sig,ka_px-ki_px-ki_px_p1*ESP1)-PPX)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_403" name="ESP1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_411" name="PPX" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_428" name="PPXT" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_432" name="gamma" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_420" name="ka_px" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_371" name="ki_px" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_395" name="ki_px_p1" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_424" name="sig" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_65" name="Rate Law for PDS1T Degr_1" type="UserDefined" reversible="false">
      <Expression>
        (kd_pds+ks_pds_20*CDC20A+kd_pds_20_i*CDC20A_APC)*PDS1T
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_418" name="CDC20A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_433" name="CDC20A_APC" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_435" name="PDS1T" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_415" name="kd_pds" order="3" role="constant"/>
        <ParameterDescription key="FunctionParameter_426" name="kd_pds_20_i" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_399" name="ks_pds_20" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_66" name="Rate Law for CDC15 Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gamma*(Sigmoid(CDC15T,sig,ka_15+ka_15_14*CDC14-ki_15-ki_15_b2*CLB2)-CDC15)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_441" name="CDC14" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_449" name="CDC15" order="1" role="product"/>
        <ParameterDescription key="FunctionParameter_430" name="CDC15T" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_447" name="CLB2" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_436" name="gamma" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_437" name="ka_15" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_439" name="ka_15_14" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_443" name="ki_15" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_445" name="ki_15_b2" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_391" name="sig" order="9" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_67" name="Rate Law for TEM1 Synth_1" type="UserDefined" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:10:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        gammatem*(Sigmoid(TEM1T,sig,ka_tem+ka_tem_lo*POLOA+ka_tem_p1*ESP1-ki_tem-ki_tem_px*PPX)-TEM1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_455" name="ESP1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_451" name="POLOA" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_461" name="PPX" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_463" name="TEM1" order="3" role="product"/>
        <ParameterDescription key="FunctionParameter_446" name="TEM1T" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_450" name="gammatem" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_438" name="ka_tem" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_422" name="ka_tem_lo" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_453" name="ka_tem_p1" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_457" name="ki_tem" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_459" name="ki_tem_px" order="10" role="constant"/>
        <ParameterDescription key="FunctionParameter_442" name="sig" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_68" name="Rate Law for POLOT Synth_1" type="UserDefined" reversible="false">
      <Expression>
        ks_lo+ks_lo_m1*MCM1
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_456" name="MCM1" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_464" name="ks_lo" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_460" name="ks_lo_m1" order="2" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_69" name="Rate Law for POLOT Degr_1" type="UserDefined" reversible="false">
      <Expression>
        (kd_lo+kd_lo_h1*CDH1A)*POLOT
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_434" name="CDH1A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_440" name="POLOT" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_454" name="kd_lo" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_462" name="kd_lo_h1" order="3" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_70" name="Rate Law for POLOA Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gamma*(Sigmoid(POLOT,sig,ka_lo+ka_lo_b2*CLB2-ki_lo)-POLOA)-(kd_lo+kd_lo_h1*CDH1A)*POLOA
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_480" name="CDH1A" order="0" role="modifier"/>
        <ParameterDescription key="FunctionParameter_470" name="CLB2" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_474" name="POLOA" order="2" role="product"/>
        <ParameterDescription key="FunctionParameter_452" name="POLOT" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_444" name="gamma" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_466" name="ka_lo" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_468" name="ka_lo_b2" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_476" name="kd_lo" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_478" name="kd_lo_h1" order="8" role="constant"/>
        <ParameterDescription key="FunctionParameter_472" name="ki_lo" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_448" name="sig" order="10" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_71" name="Rate Law for CDC20A_APC Synth_1" type="UserDefined" reversible="true">
      <Expression>
        gamma*(Sigmoid(CDC20A_APC_T,sig,ka_20-ki_20_ori*Heav(ORI-1)*(1-Heav(SPN-1)))-CDC20A_APC)-kd_20*CDC20A_APC
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_485" name="CDC20A_APC" order="0" role="product"/>
        <ParameterDescription key="FunctionParameter_477" name="CDC20A_APC_T" order="1" role="modifier"/>
        <ParameterDescription key="FunctionParameter_407" name="ORI" order="2" role="modifier"/>
        <ParameterDescription key="FunctionParameter_483" name="SPN" order="3" role="modifier"/>
        <ParameterDescription key="FunctionParameter_481" name="gamma" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_469" name="ka_20" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_487" name="kd_20" order="6" role="constant"/>
        <ParameterDescription key="FunctionParameter_465" name="ki_20_ori" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_473" name="sig" order="8" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="Yeast Cell Cycle" simulationType="time" timeUnit="min" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221408570000002e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T09:04:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Bag>
        <rdf:li>
          <rdf:Description>
            <vCard:N>
              <rdf:Description>
                <vCard:Family>Mitra</vCard:Family>
                <vCard:Given>Eshan</vCard:Given>
              </rdf:Description>
            </vCard:N>
            <vCard:ORG>
              <rdf:Description>
                <vCard:Orgname>Los Alamos National Lab</vCard:Orgname>
              </rdf:Description>
            </vCard:ORG>
          </rdf:Description>
        </rdf:li>
      </rdf:Bag>
    </dcterms:creator>
    <dcterms:modified>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T09:04:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:modified>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <Comment>
      <body xmlns="http://www.w3.org/1999/xhtml">
    <pre>Model of the yeast cell cycle originally described in Oguz et al (2013) "Optimization and model reduction in the high dimensional parameter space of a budding yeast cell cycle model" BMC Syst. Biol.
Adapted to SBML format and used as an example problem in Mitra et al (2018) "Using both qualitative and quantitative data to imporve parameter identification for systems biology models".</pre>
  </body>
    </Comment>
    <ListOfCompartments>
      <Compartment key="Compartment_0" name="cell" simulationType="fixed" dimensionality="3">
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_67" name="V" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T09:10:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="BCK2" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T09:13:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="CLN3" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:04:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="WHI5deP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="SBFdeP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="CLN2" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:18:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="CKIT" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="CKIP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="CLB5T" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:17:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="CLB2T" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="BUD" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="ORI" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="SPN" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="SWI5T" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:17:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="CDC20T" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="CDC20A_APCP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="APCP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="CDH1A" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:18:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="NET1deP" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:17:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="PPX" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="PDS1T" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="CDC15" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:17:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="TEM1" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:26:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="POLOT" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:35:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="POLOA" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_42" name="CDC20A_APC" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:21:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="FuncSafety" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:04:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          Heav(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[APCP],Reference=Concentration>)+Sigmoid(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[APCPT],Reference=Value>,1,1)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="CLB5" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:19:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Concentration>*(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Concentration>+&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT],Reference=Concentration>)/(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Concentration>+&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Concentration>+0.001)*Heav(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Concentration>+&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="CLB2" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:22:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Concentration>*(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Concentration>+&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT],Reference=Concentration>)/(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Concentration>+&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Concentration>+0.001)*Heav(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Concentration>+&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="SBF" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:24:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SBFdeP],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[WHI5deP],Reference=Concentration>)*Heav(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SBFdeP],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[WHI5deP],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="CDC14" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:27:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[CDC14T],Reference=Value>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kas_net],Reference=Value>*&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[NET1deP],Reference=Concentration>)*Heav(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[CDC14T],Reference=Value>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kas_net],Reference=Value>*&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[NET1deP],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="ESP1" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:29:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          (&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ESP1T],Reference=Value>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[PDS1T],Reference=Concentration>)*Heav(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ESP1T],Reference=Value>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[PDS1T],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="MEN" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:31:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[TEM1],Reference=Concentration> lt &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC15],Reference=Concentration>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[TEM1],Reference=Concentration>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC15],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="MCM1" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:32:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          Sigmoid(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[MCM1T],Reference=Value>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=Value>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_m1_b2],Reference=Value>*&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_m1],Reference=Value>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="SWI5A" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T12:36:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          Sigmoid(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SWI5T],Reference=Concentration>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=Value>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_swi5_14],Reference=Value>*&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC14],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_swi5_b2],Reference=Value>*&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="CDC20A_APCP_T" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:15:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T],Reference=Concentration> lt &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[APCP],Reference=Concentration>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T],Reference=Concentration>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[APCP],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="CDC20A_APC_T" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:46:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          if(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20A_APCP_T],Reference=Concentration> lt &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[APCPT],Reference=Value>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[APCP],Reference=Concentration>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20A_APCP_T],Reference=Concentration>,&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[APCPT],Reference=Value>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[APCP],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="DIV_COUNT" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_29" name="FLAG_BUD" simulationType="reactions" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:21:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="FLAG_UDNA" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_27" name="FLAG_SPC" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_26" name="dCKIT_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_25" name="CKIT_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_24" name="OffsetTime" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:15:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Reference=Time>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[phi_28],Reference=Value>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_23" name="VDiv1" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_22" name="VDiv2" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_21" name="VDiv3" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_20" name="Diff1" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:35:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          abs(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv2],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv1],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_19" name="Diff2" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T16:36:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          abs(&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv3],Reference=Concentration>-&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv2],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_18" name="dCln3_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_17" name="dBck2_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_16" name="dCln2_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_15" name="dClb5T_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_14" name="dClb2T_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_13" name="dSWI5T_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_12" name="dCDC20T_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_11" name="dPDS1T_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_10" name="dPOLOT_sign" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_9" name="Cln3_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_8" name="Bck2_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_7" name="Cln2_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_6" name="Clb5T_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_5" name="Clb2T_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_4" name="SWI5T_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_3" name="CDC20T_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_2" name="PDS1T_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_1" name="POLOT_peaks" simulationType="reactions" compartment="Compartment_0">
      </Metabolite>
      <Metabolite key="Metabolite_0" name="CLB2CLB5" simulationType="assignment" compartment="Compartment_0">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:22:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2],Reference=Concentration>+&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5],Reference=Concentration>
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_127" name="mdt" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_127">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T09:20:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_126" name="mu" simulationType="assignment">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_126">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T09:19:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:unknown rdf:resource="#" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          log(2)/&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[mdt],Reference=Value>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_125" name="ks_n3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_124" name="Dn3" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_124">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T09:59:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_123" name="Jn3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_122" name="kd_n3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_121" name="gamma" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_120" name="gammaki" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_119" name="gammacp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_118" name="gammatem" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_117" name="sig" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_116" name="signet" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_115" name="ks_k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_114" name="kd_k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_113" name="kdp_i5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_112" name="kdp_i5_14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_111" name="kp_i5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_110" name="kp_i5_n3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_109" name="kp_i5_k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_108" name="kp_i5_n2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_107" name="kp_i5_b5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_106" name="kdp_bf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_105" name="kp_bf_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_104" name="ks_n2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_103" name="ks_n2_bf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_102" name="kd_n2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_101" name="ks_ki" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_100" name="ks_ki_swi5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_99" name="kd_ki" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_98" name="kd_kip" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_97" name="kp_ki_e" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_96" name="e_ki_n3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_95" name="e_ki_k2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_94" name="e_ki_n2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_93" name="e_ki_b5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_92" name="e_ki_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_91" name="kdp_ki" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_90" name="kdp_ki_14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_89" name="ks_b5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_88" name="ks_b5_bf" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_87" name="kd_b5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_86" name="kd_b5_20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_85" name="ks_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_84" name="ks_b2_m1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_83" name="kd_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_82" name="kd_b2_20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_81" name="kd_b2_h1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_80" name="ks_bud_e" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_79" name="e_bud_n3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_78" name="e_bud_n2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_77" name="e_bud_b5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_76" name="e_bud_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_75" name="kd_bud" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_74" name="ks_spn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_73" name="kd_spn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_72" name="Jspn" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_71" name="ks_ori_e" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_70" name="e_ori_b5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_69" name="e_ori_b2" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:30:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_68" name="kd_ori" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_67" name="ks_swi5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_66" name="ks_swi5_m1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_65" name="kd_swi5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_64" name="ka_swi5_14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_63" name="ki_swi5_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_62" name="ka_m1_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_61" name="ki_m1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_60" name="ks_20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_59" name="ks_20_m1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_58" name="kd_20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_57" name="ka_20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_56" name="kd_b5_20_i" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_55" name="kd_b2_20_i" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_54" name="ki_20_ori" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_53" name="ka_cp_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_52" name="ki_cp" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_51" name="ka_h1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_50" name="ka_h1_14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_49" name="ki_h1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_48" name="ki_h1_e" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_47" name="e_h1_n3" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_46" name="e_h1_n2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_45" name="e_h1_b5" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_44" name="e_h1_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_43" name="kdp_net" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_42" name="kdp_net_14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_41" name="kdp_net_px" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_40" name="kp_net" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_39" name="kp_net_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_38" name="kp_net_en" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_37" name="kp_net_15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_36" name="ka_px" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_35" name="ki_px" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_34" name="ki_px_p1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_33" name="ks_pds" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_32" name="kd_pds" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_31" name="kd_pds_20" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_30" name="ka_15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_29" name="ka_15_14" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_28" name="ki_15" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_27" name="ki_15_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_26" name="ka_tem" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_25" name="ka_tem_lo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_24" name="ka_tem_p1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_23" name="ki_tem" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_22" name="ki_tem_px" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_21" name="ks_lo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_20" name="ks_lo_m1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_19" name="kd_lo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_18" name="kd_lo_h1" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_17" name="ka_lo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_16" name="ka_lo_b2" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_15" name="ki_lo" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_14" name="kas_net" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_13" name="WHI5T" simulationType="fixed">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T11:01:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="SBFT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_11" name="MCM1T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_10" name="APCPT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_9" name="CDH1T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_8" name="NET1T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_7" name="CDC14T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_6" name="PPXT" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_5" name="ESP1T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_4" name="CDC15T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_3" name="TEM1T" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_2" name="kd_pds_20_i" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_1" name="f" simulationType="fixed">
      </ModelValue>
      <ModelValue key="ModelValue_0" name="phi_28" simulationType="fixed">
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_38" name="Growth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T09:14:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_2580" name="mu" value="0.00770164"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_254">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="ModelValue_126"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="Cln3 Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:01:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2579" name="Dn3" value="0.732"/>
          <Constant key="Parameter_2578" name="Jn3" value="4.27"/>
          <Constant key="Parameter_2577" name="ks_n3" value="1.11"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="ModelValue_124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="ModelValue_123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="ModelValue_125"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="Cln3 Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T10:10:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_2576" name="k1" value="0.794"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="Bck2 Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T11:00:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2575" name="ks_k2" value="0.0553"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="ModelValue_115"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="Bck2 Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T11:02:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_66" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_2574" name="k1" value="3.01"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_114"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="WHI5deP Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T11:11:35Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_64" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_2573" name="WHI5T" value="2.1"/>
          <Constant key="Parameter_2572" name="gamma" value="2.22"/>
          <Constant key="Parameter_2571" name="kdp_i5" value="1.22"/>
          <Constant key="Parameter_2570" name="kdp_i5_14" value="0.195"/>
          <Constant key="Parameter_2569" name="kp_i5" value="0.0275"/>
          <Constant key="Parameter_4682" name="kp_i5_b5" value="0.0422"/>
          <Constant key="Parameter_4714" name="kp_i5_k2" value="23.7"/>
          <Constant key="Parameter_4715" name="kp_i5_n2" value="2.97"/>
          <Constant key="Parameter_4716" name="kp_i5_n3" value="6.1"/>
          <Constant key="Parameter_4685" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="ModelValue_13"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_64"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_258">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="ModelValue_113"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="ModelValue_112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="ModelValue_111"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_298">
              <SourceParameter reference="ModelValue_107"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="ModelValue_109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="ModelValue_108"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="ModelValue_110"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="SBFdeP Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T13:24:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_63" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4686" name="SBFT" value="0.468"/>
          <Constant key="Parameter_4687" name="gamma" value="2.22"/>
          <Constant key="Parameter_4688" name="kdp_bf" value="2.93"/>
          <Constant key="Parameter_4689" name="kp_bf_b2" value="9.36"/>
          <Constant key="Parameter_4690" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_46" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="ModelValue_12"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_63"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="ModelValue_106"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="ModelValue_105"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Cln2 Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T13:31:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4691" name="ks_n2" value="1e-08"/>
          <Constant key="Parameter_4692" name="ks_n2_bf" value="0.996"/>
        </ListOfConstants>
        <KineticLaw function="Function_47" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="ModelValue_104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="ModelValue_103"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="Cln2 Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T13:32:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4693" name="k1" value="0.032"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_102"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="CKIT Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T13:35:10Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_33" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4694" name="ks_ki" value="0.00663"/>
          <Constant key="Parameter_4695" name="ks_ki_swi5" value="0.089"/>
        </ListOfConstants>
        <KineticLaw function="Function_48" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Metabolite_33"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="ModelValue_101"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="ModelValue_100"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="CKIT Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T13:42:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4696" name="kd_ki" value="0.0524"/>
          <Constant key="Parameter_4697" name="kd_kip" value="0.899"/>
        </ListOfConstants>
        <KineticLaw function="Function_49" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="ModelValue_99"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_307">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="CKIP Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T13:44:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_66" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4698" name="e_ki_b2" value="3.12"/>
          <Constant key="Parameter_4699" name="e_ki_b5" value="2.39"/>
          <Constant key="Parameter_4700" name="e_ki_k2" value="0.397"/>
          <Constant key="Parameter_4701" name="e_ki_n2" value="19.5"/>
          <Constant key="Parameter_4702" name="e_ki_n3" value="1.05"/>
          <Constant key="Parameter_4703" name="gammaki" value="12.9"/>
          <Constant key="Parameter_4704" name="kd_kip" value="0.899"/>
          <Constant key="Parameter_4705" name="kdp_ki" value="0.836"/>
          <Constant key="Parameter_4706" name="kdp_ki_14" value="1.11"/>
          <Constant key="Parameter_4707" name="kp_ki_e" value="0.65"/>
          <Constant key="Parameter_4708" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_50" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_319">
              <SourceParameter reference="Metabolite_66"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_337">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_339">
              <SourceParameter reference="Metabolite_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_331">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_327">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_323">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_315">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_329">
              <SourceParameter reference="ModelValue_92"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_325">
              <SourceParameter reference="ModelValue_93"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_317">
              <SourceParameter reference="ModelValue_95"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_321">
              <SourceParameter reference="ModelValue_94"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_313">
              <SourceParameter reference="ModelValue_96"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_308">
              <SourceParameter reference="ModelValue_120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_341">
              <SourceParameter reference="ModelValue_98"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_333">
              <SourceParameter reference="ModelValue_91"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_335">
              <SourceParameter reference="ModelValue_90"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_311">
              <SourceParameter reference="ModelValue_97"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_309">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="Clb5T Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T13:50:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4722" name="ks_b5" value="0.000538"/>
          <Constant key="Parameter_4723" name="ks_b5_bf" value="0.0178"/>
        </ListOfConstants>
        <KineticLaw function="Function_51" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_334">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_342">
              <SourceParameter reference="ModelValue_89"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_338">
              <SourceParameter reference="ModelValue_88"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="Clb5T Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T13:52:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4724" name="kd_b5" value="0.0556"/>
          <Constant key="Parameter_4725" name="kd_b5_20" value="0.0445"/>
          <Constant key="Parameter_4726" name="kd_b5_20_i" value="0.00498"/>
        </ListOfConstants>
        <KineticLaw function="Function_52" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_328">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_320">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_316">
              <SourceParameter reference="Metabolite_59"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_332">
              <SourceParameter reference="ModelValue_87"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_340">
              <SourceParameter reference="ModelValue_86"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_324">
              <SourceParameter reference="ModelValue_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="Clb2T Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:00:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4727" name="ks_b2" value="0.00762"/>
          <Constant key="Parameter_4728" name="ks_b2_m1" value="0.031"/>
        </ListOfConstants>
        <KineticLaw function="Function_53" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_330">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_312">
              <SourceParameter reference="Metabolite_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_314">
              <SourceParameter reference="ModelValue_85"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_322">
              <SourceParameter reference="ModelValue_84"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_23" name="Clb2T Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:01:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4729" name="kd_b2" value="0.00298"/>
          <Constant key="Parameter_4730" name="kd_b2_20" value="0.136"/>
          <Constant key="Parameter_4731" name="kd_b2_20_i" value="0.0374"/>
          <Constant key="Parameter_4732" name="kd_b2_h1" value="0.662"/>
        </ListOfConstants>
        <KineticLaw function="Function_54" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_345">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_349">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_351">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_310">
              <SourceParameter reference="ModelValue_83"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_326">
              <SourceParameter reference="ModelValue_82"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_343">
              <SourceParameter reference="ModelValue_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_347">
              <SourceParameter reference="ModelValue_81"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_22" name="BUD Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:05:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4733" name="e_bud_b2" value="1.89"/>
          <Constant key="Parameter_4734" name="e_bud_b5" value="3"/>
          <Constant key="Parameter_4735" name="e_bud_n2" value="1.12"/>
          <Constant key="Parameter_4736" name="e_bud_n3" value="0.0078"/>
          <Constant key="Parameter_4737" name="ks_bud_e" value="0.287"/>
        </ListOfConstants>
        <KineticLaw function="Function_55" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_361">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_357">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_353">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_344">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_359">
              <SourceParameter reference="ModelValue_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_355">
              <SourceParameter reference="ModelValue_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_318">
              <SourceParameter reference="ModelValue_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_348">
              <SourceParameter reference="ModelValue_79"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_352">
              <SourceParameter reference="ModelValue_80"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_21" name="BUD Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_21">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:06:23Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4738" name="k1" value="0.059"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_75"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_20" name="ORI Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:08:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4739" name="e_ori_b2" value="0.124"/>
          <Constant key="Parameter_4740" name="e_ori_b5" value="5.04"/>
          <Constant key="Parameter_4741" name="ks_ori_e" value="1.9"/>
        </ListOfConstants>
        <KineticLaw function="Function_56" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_350">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_354">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_306">
              <SourceParameter reference="ModelValue_69"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_358">
              <SourceParameter reference="ModelValue_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_362">
              <SourceParameter reference="ModelValue_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_19" name="ORI Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:09:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_56" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4742" name="k1" value="0.0817"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_68"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_18" name="SPN Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:09:51Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4743" name="Jspn" value="0.809"/>
          <Constant key="Parameter_4744" name="ks_spn" value="0.0743"/>
        </ListOfConstants>
        <KineticLaw function="Function_57" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_336">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_360">
              <SourceParameter reference="ModelValue_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_363">
              <SourceParameter reference="ModelValue_74"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_17" name="SPN Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:10:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4745" name="k1" value="0.0384"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_73"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_16" name="SWI5T Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:11:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4746" name="ks_swi5" value="0.00558"/>
          <Constant key="Parameter_4747" name="ks_swi5_m1" value="0.0389"/>
        </ListOfConstants>
        <KineticLaw function="Function_58" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_366">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_364">
              <SourceParameter reference="ModelValue_67"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_346">
              <SourceParameter reference="ModelValue_66"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_15" name="SWI5T Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:13:43Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4748" name="k1" value="0.042"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_54"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_14" name="CDC20T Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:11:31Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4749" name="ks_20" value="0.0221"/>
          <Constant key="Parameter_4750" name="ks_20_m1" value="0.354"/>
        </ListOfConstants>
        <KineticLaw function="Function_59" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_369">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_367">
              <SourceParameter reference="ModelValue_60"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_356">
              <SourceParameter reference="ModelValue_59"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_13" name="CDC20T Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:14:33Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4751" name="k1" value="0.124"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_12" name="CDC20A_APCP Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:17:25Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_32" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_56" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4752" name="gamma" value="2.22"/>
          <Constant key="Parameter_4753" name="ka_20" value="0.0104"/>
          <Constant key="Parameter_4754" name="kd_20" value="0.124"/>
          <Constant key="Parameter_4760" name="ki_20_ori" value="5.04"/>
          <Constant key="Parameter_4759" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_60" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_382">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_365">
              <SourceParameter reference="Metabolite_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_378">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_380">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_370">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_374">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_384">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_376">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_372">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_11" name="APCP Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:21:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4758" name="APCPT" value="45.7"/>
          <Constant key="Parameter_4756" name="gammacp" value="1.34"/>
          <Constant key="Parameter_4755" name="ka_cp_b2" value="0.334"/>
          <Constant key="Parameter_4757" name="ki_cp" value="0.21"/>
          <Constant key="Parameter_4761" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_61" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_389">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_381">
              <SourceParameter reference="ModelValue_10"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_368">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_385">
              <SourceParameter reference="ModelValue_119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_373">
              <SourceParameter reference="ModelValue_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_387">
              <SourceParameter reference="ModelValue_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_377">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_10" name="CDH1A Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:22:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_62" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_40" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4762" name="CDH1T" value="0.808"/>
          <Constant key="Parameter_4764" name="e_h1_b2" value="2.35"/>
          <Constant key="Parameter_4765" name="e_h1_b5" value="9.73"/>
          <Constant key="Parameter_4763" name="e_h1_n2" value="1.56"/>
          <Constant key="Parameter_4766" name="e_h1_n3" value="3.75"/>
          <Constant key="Parameter_4767" name="gamma" value="2.22"/>
          <Constant key="Parameter_4768" name="ka_h1" value="0.241"/>
          <Constant key="Parameter_4769" name="ka_h1_14" value="32.2"/>
          <Constant key="Parameter_4770" name="ki_h1" value="0.144"/>
          <Constant key="Parameter_4771" name="ki_h1_e" value="0.215"/>
          <Constant key="Parameter_4772" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_62" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_394">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_416">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_386">
              <SourceParameter reference="ModelValue_9"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_414">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_410">
              <SourceParameter reference="Metabolite_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_406">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_402">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_412">
              <SourceParameter reference="ModelValue_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_408">
              <SourceParameter reference="ModelValue_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_404">
              <SourceParameter reference="ModelValue_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_400">
              <SourceParameter reference="ModelValue_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_390">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_383">
              <SourceParameter reference="ModelValue_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_392">
              <SourceParameter reference="ModelValue_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_396">
              <SourceParameter reference="ModelValue_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_398">
              <SourceParameter reference="ModelValue_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_375">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_9" name="NET1deP Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:26:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_35" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4773" name="NET1T" value="6.4"/>
          <Constant key="Parameter_4774" name="gamma" value="2.22"/>
          <Constant key="Parameter_4775" name="kdp_net" value="0.106"/>
          <Constant key="Parameter_4776" name="kdp_net_14" value="0.00663"/>
          <Constant key="Parameter_4777" name="kdp_net_px" value="83.3"/>
          <Constant key="Parameter_4778" name="kp_net" value="0.556"/>
          <Constant key="Parameter_4779" name="kp_net_15" value="0.00881"/>
          <Constant key="Parameter_4780" name="kp_net_b2" value="1.5"/>
          <Constant key="Parameter_4781" name="kp_net_en" value="6.88"/>
          <Constant key="Parameter_4782" name="signet" value="1.52"/>
        </ListOfConstants>
        <KineticLaw function="Function_63" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_397">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_429">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_421">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_425">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_413">
              <SourceParameter reference="ModelValue_8"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_431">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_379">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_417">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_405">
              <SourceParameter reference="ModelValue_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_401">
              <SourceParameter reference="ModelValue_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_393">
              <SourceParameter reference="ModelValue_41"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_388">
              <SourceParameter reference="ModelValue_40"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_427">
              <SourceParameter reference="ModelValue_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_419">
              <SourceParameter reference="ModelValue_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_423">
              <SourceParameter reference="ModelValue_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_409">
              <SourceParameter reference="ModelValue_116"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_8" name="PPX Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:29:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4783" name="PPXT" value="0.866"/>
          <Constant key="Parameter_4784" name="gamma" value="2.22"/>
          <Constant key="Parameter_4785" name="ka_px" value="0.055"/>
          <Constant key="Parameter_4786" name="ki_px" value="0.119"/>
          <Constant key="Parameter_4787" name="ki_px_p1" value="6.69"/>
          <Constant key="Parameter_4788" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_64" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_403">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_411">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_428">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_432">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_420">
              <SourceParameter reference="ModelValue_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_371">
              <SourceParameter reference="ModelValue_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_395">
              <SourceParameter reference="ModelValue_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_424">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_7" name="PDS1T Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:30:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4789" name="v" value="0.0467"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="ModelValue_33"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_6" name="PDS1T Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:31:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_52" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4790" name="kd_pds" value="0.0144"/>
          <Constant key="Parameter_4791" name="kd_pds_20_i" value="0.125"/>
          <Constant key="Parameter_4792" name="ks_pds_20" value="3.04"/>
        </ListOfConstants>
        <KineticLaw function="Function_65" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_418">
              <SourceParameter reference="Metabolite_52"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_433">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_435">
              <SourceParameter reference="Metabolite_47"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_415">
              <SourceParameter reference="ModelValue_32"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_426">
              <SourceParameter reference="ModelValue_2"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_399">
              <SourceParameter reference="ModelValue_31"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_5" name="CDC15 Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:33:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_37" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4793" name="CDC15T" value="1.02"/>
          <Constant key="Parameter_4794" name="gamma" value="2.22"/>
          <Constant key="Parameter_4795" name="ka_15" value="0.709"/>
          <Constant key="Parameter_4796" name="ka_15_14" value="7.38"/>
          <Constant key="Parameter_4797" name="ki_15" value="0.894"/>
          <Constant key="Parameter_4798" name="ki_15_b2" value="2.16"/>
          <Constant key="Parameter_4669" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_66" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_441">
              <SourceParameter reference="Metabolite_37"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_449">
              <SourceParameter reference="Metabolite_46"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_430">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_447">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_436">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_437">
              <SourceParameter reference="ModelValue_30"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_439">
              <SourceParameter reference="ModelValue_29"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_443">
              <SourceParameter reference="ModelValue_28"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_445">
              <SourceParameter reference="ModelValue_27"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_391">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_4" name="TEM1 Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:34:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_36" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4670" name="TEM1T" value="1.29"/>
          <Constant key="Parameter_4671" name="gammatem" value="0.369"/>
          <Constant key="Parameter_4672" name="ka_tem" value="0.0848"/>
          <Constant key="Parameter_4673" name="ka_tem_lo" value="3.84"/>
          <Constant key="Parameter_4674" name="ka_tem_p1" value="0.0638"/>
          <Constant key="Parameter_4675" name="ki_tem" value="0.323"/>
          <Constant key="Parameter_4676" name="ki_tem_px" value="1.92"/>
          <Constant key="Parameter_4677" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_67" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_455">
              <SourceParameter reference="Metabolite_36"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_451">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_461">
              <SourceParameter reference="Metabolite_48"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_463">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_446">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_450">
              <SourceParameter reference="ModelValue_118"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_438">
              <SourceParameter reference="ModelValue_26"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_422">
              <SourceParameter reference="ModelValue_25"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_453">
              <SourceParameter reference="ModelValue_24"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_457">
              <SourceParameter reference="ModelValue_23"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_459">
              <SourceParameter reference="ModelValue_22"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_442">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_3" name="POLOT Synth" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:37:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4678" name="ks_lo" value="0.045"/>
          <Constant key="Parameter_4679" name="ks_lo_m1" value="0.0113"/>
        </ListOfConstants>
        <KineticLaw function="Function_68" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_456">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_464">
              <SourceParameter reference="ModelValue_21"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_460">
              <SourceParameter reference="ModelValue_20"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_2" name="POLOT Degr" reversible="false" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:38:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4680" name="kd_lo" value="0.00483"/>
          <Constant key="Parameter_4681" name="kd_lo_h1" value="0.139"/>
        </ListOfConstants>
        <KineticLaw function="Function_69" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_434">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_440">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_454">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_462">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_1" name="POLOA Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:39:37Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_44" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_39" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4799" name="gamma" value="2.22"/>
          <Constant key="Parameter_4800" name="ka_lo" value="0.0232"/>
          <Constant key="Parameter_4801" name="ka_lo_b2" value="1.11"/>
          <Constant key="Parameter_4802" name="kd_lo" value="0.00483"/>
          <Constant key="Parameter_4803" name="kd_lo_h1" value="0.139"/>
          <Constant key="Parameter_4804" name="ki_lo" value="0.965"/>
          <Constant key="Parameter_4805" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_70" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_480">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_470">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_474">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_452">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_444">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_466">
              <SourceParameter reference="ModelValue_17"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_468">
              <SourceParameter reference="ModelValue_16"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_476">
              <SourceParameter reference="ModelValue_19"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_478">
              <SourceParameter reference="ModelValue_18"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_472">
              <SourceParameter reference="ModelValue_15"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_448">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_0" name="CDC20A_APC Synth" reversible="true" fast="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-01-06T14:45:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfProducts>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_31" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_56" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_55" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4806" name="gamma" value="2.22"/>
          <Constant key="Parameter_4807" name="ka_20" value="0.0104"/>
          <Constant key="Parameter_4808" name="kd_20" value="0.124"/>
          <Constant key="Parameter_4809" name="ki_20_ori" value="5.04"/>
          <Constant key="Parameter_4810" name="sig" value="9.63"/>
        </ListOfConstants>
        <KineticLaw function="Function_71" unitType="Default" scalingCompartment="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_485">
              <SourceParameter reference="Metabolite_42"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_477">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_407">
              <SourceParameter reference="Metabolite_56"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_483">
              <SourceParameter reference="Metabolite_55"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_481">
              <SourceParameter reference="ModelValue_121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_469">
              <SourceParameter reference="ModelValue_57"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_487">
              <SourceParameter reference="ModelValue_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_465">
              <SourceParameter reference="ModelValue_54"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_473">
              <SourceParameter reference="ModelValue_117"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfEvents>
      <Event key="Event_24" name="Cell division" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_24">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:31:04Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2],Reference=Concentration> lt 0.20000000000000001
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_67">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[V],Reference=Concentration>*&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[f],Reference=Value>
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_57">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_30">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[DIV_COUNT],Reference=Concentration>+1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_29">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_27">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_28">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_23">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[V],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_22">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv1],Reference=Concentration>
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_21">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv2],Reference=Concentration>
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_23" name="Origin relicensing" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:32:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2],Reference=Concentration>+&lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5],Reference=Concentration> lt 0.20000000000000001
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_56">
            <Expression>
              0
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_55">
            <Expression>
              0
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_22" name="Bud emergence" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_22">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:31:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[BUD],Reference=Concentration> ge 1
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_29">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_21" name="ORI activation" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[ORI],Reference=Concentration> ge 1
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_28">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_20" name="SPN completion" delayAssignment="true" fireAtInitialTime="0" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_20">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:32:12Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SPN],Reference=Concentration> ge 1
        </TriggerExpression>
        <DelayExpression>
          0
        </DelayExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_27">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_19" name="CKI_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_19">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:32:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCKIT_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_25">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_26">
            <Expression>
              -1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_18" name="CKI_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_18">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-09T15:55:32Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCKIT_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_26">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_17" name="Cln3_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_17">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:25:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLN3],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCln3_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_18">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_9">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Cln3_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_16" name="Cln3_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_16">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:26:53Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLN3],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCln3_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_18">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_15" name="Bck2_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_15">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:36:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[BCK2],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dBck2_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_17">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_8">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Bck2_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_14" name="Bck2_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_14">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:37:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[BCK2],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dBck2_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_17">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_13" name="Cln2_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_13">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:39:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLN2],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCln2_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_16">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_7">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Cln2_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_12" name="Cln2_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_12">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:40:24Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLN2],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCln2_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_16">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_11" name="Clb5T_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_11">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:42:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dClb5T_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_15">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_6">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Clb5T_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_10" name="Clb5T_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_10">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:48:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dClb5T_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_15">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_9" name="Clb2T_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_9">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:49:29Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dClb2T_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_14">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_5">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Clb2T_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_8" name="Clb2T_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:50:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dClb2T_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_14">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_7" name="SW15T_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:52:13Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SWI5T],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dSWI5T_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_13">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_4">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SWI5T_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_6" name="SWI5T_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:53:36Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SWI5T],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dSWI5T_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_13">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_5" name="CDC20T_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:55:40Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCDC20T_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_12">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_3">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_4" name="CDC20T_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:56:47Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCDC20T_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_12">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_3" name="PDS1T_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:58:11Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[PDS1T],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dPDS1T_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_11">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_2">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[PDS1T_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_2" name="PDS1T_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T14:59:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[PDS1T],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dPDS1T_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_11">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_1" name="POLOT_max" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:00:41Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[POLOT],Reference=Rate> lt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dPOLOT_sign],Reference=Concentration> eq 1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_10">
            <Expression>
              -1
            </Expression>
          </Assignment>
          <Assignment targetKey="Metabolite_1">
            <Expression>
              &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[POLOT_peaks],Reference=Concentration>+1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
      <Event key="Event_0" name="POLOT_min" fireAtInitialTime="1" persistentTrigger="1">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Event_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-04-10T15:02:01Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <TriggerExpression>
          &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[POLOT],Reference=Rate> gt 0 and &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dPOLOT_sign],Reference=Concentration> eq -1
        </TriggerExpression>
        <ListOfAssignments>
          <Assignment targetKey="Metabolite_10">
            <Expression>
              1
            </Expression>
          </Assignment>
        </ListOfAssignments>
      </Event>
    </ListOfEvents>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[V]" value="2.7701847942200001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[BCK2]" value="1.2586274391129999e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLN3]" value="4.3660521213250001e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[WHI5deP]" value="1.065918931689e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SBFdeP]" value="4.0830115010460004e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLN2]" value="3.7698601764820001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT]" value="3.3483103164919997e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIP]" value="2.1077492999500002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5T]" value="3.1254911047830002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2T]" value="8.9127684683600002e+21" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[BUD]" value="1.4453138056800002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[ORI]" value="3.9565465430489997e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SPN]" value="8.9729898769300001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SWI5T]" value="7.3470118455400001e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T]" value="4.8357791081710003e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20A_APCP]" value="1.56575662282e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[APCP]" value="8.9127684683599997e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDH1A]" value="1.6560887356750001e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[NET1deP]" value="1.4874687916790001e+24" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[PPX]" value="1.9451514968110002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[PDS1T]" value="1.4212252422519999e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC15]" value="3.8903029936220005e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[TEM1]" value="4.293786431041e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[POLOT]" value="5.5825245744390006e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[POLOA]" value="6.0040744344289997e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20A_APC]" value="3.2218453584950002e+22" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[FuncSafety]" value="2.0721811535692416e+25" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB5]" value="5.1245127419632697e+21" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2]" value="1.4613254061860575e+21" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SBF]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC14]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[ESP1]" value="1.6861994399600015e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[MEN]" value="4.293786431041e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[MCM1]" value="1257024356.8376269" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SWI5A]" value="3.6723041258761773e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20A_APCP_T]" value="4.8357791081710003e+22" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20A_APC_T]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[DIV_COUNT]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[FLAG_BUD]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[FLAG_UDNA]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[FLAG_SPC]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCKIT_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CKIT_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[OffsetTime]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv1]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv2]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[VDiv3]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Diff1]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Diff2]" value="0" type="Species" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCln3_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dBck2_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCln2_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dClb5T_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dClb2T_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dSWI5T_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dCDC20T_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dPDS1T_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[dPOLOT_sign]" value="6.0221408570000002e+23" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Cln3_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Bck2_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Cln2_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Clb5T_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[Clb2T_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[SWI5T_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CDC20T_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[PDS1T_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[POLOT_peaks]" value="0" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Compartments[cell],Vector=Metabolites[CLB2CLB5]" value="6.5858381481493272e+21" type="Species" simulationType="assignment"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[mdt]" value="90" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[mu]" value="0.0077016353395549476" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_n3]" value="1.1100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[Dn3]" value="0.73199999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[Jn3]" value="4.2699999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_n3]" value="0.79400000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma]" value="2.2200000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[gammaki]" value="12.9" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[gammacp]" value="1.3400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[gammatem]" value="0.36899999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig]" value="9.6300000000000008" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[signet]" value="1.52" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_k2]" value="0.055300000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_k2]" value="3.0099999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_i5]" value="1.22" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_i5_14]" value="0.19500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5]" value="0.0275" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5_n3]" value="6.0999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5_k2]" value="23.699999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5_n2]" value="2.9700000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5_b5]" value="0.042200000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_bf]" value="2.9300000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_bf_b2]" value="9.3599999999999994" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_n2]" value="1e-08" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_n2_bf]" value="0.996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_n2]" value="0.032000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_ki]" value="0.0066299999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_ki_swi5]" value="0.088999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_ki]" value="0.052400000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_kip]" value="0.89900000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_ki_e]" value="0.65000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_n3]" value="1.05" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_k2]" value="0.39700000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_n2]" value="19.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_b5]" value="2.3900000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_b2]" value="3.1200000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_ki]" value="0.83599999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_ki_14]" value="1.1100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_b5]" value="0.00053799999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_b5_bf]" value="0.0178" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b5]" value="0.055599999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b5_20]" value="0.044499999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_b2]" value="0.00762" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_b2_m1]" value="0.031" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b2]" value="0.00298" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b2_20]" value="0.13600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b2_h1]" value="0.66200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_bud_e]" value="0.28699999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_bud_n3]" value="0.0077999999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_bud_n2]" value="1.1200000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_bud_b5]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_bud_b2]" value="1.8899999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_bud]" value="0.058999999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_spn]" value="0.074300000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_spn]" value="0.038399999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[Jspn]" value="0.80900000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_ori_e]" value="1.8999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ori_b5]" value="5.04" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ori_b2]" value="0.124" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_ori]" value="0.081699999999999995" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_swi5]" value="0.0055799999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_swi5_m1]" value="0.038899999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_swi5]" value="0.042000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_swi5_14]" value="1.4099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_swi5_b2]" value="0.028000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_m1_b2]" value="4.6500000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_m1]" value="3.3900000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_20]" value="0.022100000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_20_m1]" value="0.35399999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_20]" value="0.124" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_20]" value="0.0104" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b5_20_i]" value="0.0049800000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b2_20_i]" value="0.037400000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_20_ori]" value="5.04" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_cp_b2]" value="0.33400000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_cp]" value="0.20999999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_h1]" value="0.24099999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_h1_14]" value="32.200000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_h1]" value="0.14399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_h1_e]" value="0.215" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_h1_n3]" value="3.75" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_h1_n2]" value="1.5600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_h1_b5]" value="9.7300000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_h1_b2]" value="2.3500000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_net]" value="0.106" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_net_14]" value="0.0066299999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_net_px]" value="83.299999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_net]" value="0.55600000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_net_b2]" value="1.5" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_net_en]" value="6.8799999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_net_15]" value="0.0088100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_px]" value="0.055" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_px]" value="0.11899999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_px_p1]" value="6.6900000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_pds]" value="0.046699999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_pds]" value="0.0144" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_pds_20]" value="3.04" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_15]" value="0.70899999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_15_14]" value="7.3799999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_15]" value="0.89400000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_15_b2]" value="2.1600000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_tem]" value="0.0848" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_tem_lo]" value="3.8399999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_tem_p1]" value="0.063799999999999996" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_tem]" value="0.32300000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_tem_px]" value="1.9199999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_lo]" value="0.044999999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_lo_m1]" value="0.011299999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_lo]" value="0.0048300000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_lo_h1]" value="0.13900000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_lo]" value="0.023199999999999998" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_lo_b2]" value="1.1100000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_lo]" value="0.96499999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kas_net]" value="5.6100000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[WHI5T]" value="2.1000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[SBFT]" value="0.46800000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[MCM1T]" value="0.28199999999999997" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[APCPT]" value="45.700000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[CDH1T]" value="0.80800000000000005" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[NET1T]" value="6.4000000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[CDC14T]" value="6.2300000000000004" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[PPXT]" value="0.86599999999999999" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[ESP1T]" value="0.26400000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[CDC15T]" value="1.02" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[TEM1T]" value="1.29" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_pds_20_i]" value="0.125" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[f]" value="0.40000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Values[phi_28]" value="0" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Growth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Growth],ParameterGroup=Parameters,Parameter=mu" value="0.0077016353395549476" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[mu],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln3 Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln3 Synth],ParameterGroup=Parameters,Parameter=Dn3" value="0.73199999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[Dn3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln3 Synth],ParameterGroup=Parameters,Parameter=Jn3" value="4.2699999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[Jn3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln3 Synth],ParameterGroup=Parameters,Parameter=ks_n3" value="1.1100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_n3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln3 Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln3 Degr],ParameterGroup=Parameters,Parameter=k1" value="0.79400000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_n3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Bck2 Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Bck2 Synth],ParameterGroup=Parameters,Parameter=ks_k2" value="0.055300000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Bck2 Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Bck2 Degr],ParameterGroup=Parameters,Parameter=k1" value="3.0099999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=WHI5T" value="2.1000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[WHI5T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=kdp_i5" value="1.22" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_i5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=kdp_i5_14" value="0.19500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_i5_14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=kp_i5" value="0.0275" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=kp_i5_b5" value="0.042200000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5_b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=kp_i5_k2" value="23.699999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5_k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=kp_i5_n2" value="2.9700000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5_n2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=kp_i5_n3" value="6.0999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_i5_n3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[WHI5deP Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SBFdeP Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SBFdeP Synth],ParameterGroup=Parameters,Parameter=SBFT" value="0.46800000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[SBFT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SBFdeP Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SBFdeP Synth],ParameterGroup=Parameters,Parameter=kdp_bf" value="2.9300000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_bf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SBFdeP Synth],ParameterGroup=Parameters,Parameter=kp_bf_b2" value="9.3599999999999994" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_bf_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SBFdeP Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln2 Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln2 Synth],ParameterGroup=Parameters,Parameter=ks_n2" value="1e-08" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_n2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln2 Synth],ParameterGroup=Parameters,Parameter=ks_n2_bf" value="0.996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_n2_bf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln2 Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Cln2 Degr],ParameterGroup=Parameters,Parameter=k1" value="0.032000000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_n2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIT Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIT Synth],ParameterGroup=Parameters,Parameter=ks_ki" value="0.0066299999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_ki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIT Synth],ParameterGroup=Parameters,Parameter=ks_ki_swi5" value="0.088999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_ki_swi5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIT Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIT Degr],ParameterGroup=Parameters,Parameter=kd_ki" value="0.052400000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_ki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIT Degr],ParameterGroup=Parameters,Parameter=kd_kip" value="0.89900000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_kip],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=e_ki_b2" value="3.1200000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=e_ki_b5" value="2.3900000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=e_ki_k2" value="0.39700000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_k2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=e_ki_n2" value="19.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_n2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=e_ki_n3" value="1.05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ki_n3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=gammaki" value="12.9" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gammaki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=kd_kip" value="0.89900000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_kip],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=kdp_ki" value="0.83599999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_ki],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=kdp_ki_14" value="1.1100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_ki_14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=kp_ki_e" value="0.65000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_ki_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CKIP Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb5T Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb5T Synth],ParameterGroup=Parameters,Parameter=ks_b5" value="0.00053799999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb5T Synth],ParameterGroup=Parameters,Parameter=ks_b5_bf" value="0.0178" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_b5_bf],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb5T Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb5T Degr],ParameterGroup=Parameters,Parameter=kd_b5" value="0.055599999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb5T Degr],ParameterGroup=Parameters,Parameter=kd_b5_20" value="0.044499999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b5_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb5T Degr],ParameterGroup=Parameters,Parameter=kd_b5_20_i" value="0.0049800000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b5_20_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb2T Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb2T Synth],ParameterGroup=Parameters,Parameter=ks_b2" value="0.00762" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb2T Synth],ParameterGroup=Parameters,Parameter=ks_b2_m1" value="0.031" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_b2_m1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb2T Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb2T Degr],ParameterGroup=Parameters,Parameter=kd_b2" value="0.00298" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb2T Degr],ParameterGroup=Parameters,Parameter=kd_b2_20" value="0.13600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b2_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb2T Degr],ParameterGroup=Parameters,Parameter=kd_b2_20_i" value="0.037400000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b2_20_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[Clb2T Degr],ParameterGroup=Parameters,Parameter=kd_b2_h1" value="0.66200000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_b2_h1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[BUD Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[BUD Synth],ParameterGroup=Parameters,Parameter=e_bud_b2" value="1.8899999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_bud_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[BUD Synth],ParameterGroup=Parameters,Parameter=e_bud_b5" value="3" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_bud_b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[BUD Synth],ParameterGroup=Parameters,Parameter=e_bud_n2" value="1.1200000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_bud_n2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[BUD Synth],ParameterGroup=Parameters,Parameter=e_bud_n3" value="0.0077999999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_bud_n3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[BUD Synth],ParameterGroup=Parameters,Parameter=ks_bud_e" value="0.28699999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_bud_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[BUD Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[BUD Degr],ParameterGroup=Parameters,Parameter=k1" value="0.058999999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_bud],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[ORI Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[ORI Synth],ParameterGroup=Parameters,Parameter=e_ori_b2" value="0.124" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ori_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[ORI Synth],ParameterGroup=Parameters,Parameter=e_ori_b5" value="5.04" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_ori_b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[ORI Synth],ParameterGroup=Parameters,Parameter=ks_ori_e" value="1.8999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_ori_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[ORI Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[ORI Degr],ParameterGroup=Parameters,Parameter=k1" value="0.081699999999999995" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_ori],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SPN Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SPN Synth],ParameterGroup=Parameters,Parameter=Jspn" value="0.80900000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[Jspn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SPN Synth],ParameterGroup=Parameters,Parameter=ks_spn" value="0.074300000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_spn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SPN Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SPN Degr],ParameterGroup=Parameters,Parameter=k1" value="0.038399999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_spn],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SWI5T Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SWI5T Synth],ParameterGroup=Parameters,Parameter=ks_swi5" value="0.0055799999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_swi5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SWI5T Synth],ParameterGroup=Parameters,Parameter=ks_swi5_m1" value="0.038899999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_swi5_m1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SWI5T Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[SWI5T Degr],ParameterGroup=Parameters,Parameter=k1" value="0.042000000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_swi5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20T Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20T Synth],ParameterGroup=Parameters,Parameter=ks_20" value="0.022100000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20T Synth],ParameterGroup=Parameters,Parameter=ks_20_m1" value="0.35399999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_20_m1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20T Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20T Degr],ParameterGroup=Parameters,Parameter=k1" value="0.124" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APCP Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APCP Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APCP Synth],ParameterGroup=Parameters,Parameter=ka_20" value="0.0104" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APCP Synth],ParameterGroup=Parameters,Parameter=kd_20" value="0.124" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APCP Synth],ParameterGroup=Parameters,Parameter=ki_20_ori" value="5.04" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_20_ori],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APCP Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[APCP Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[APCP Synth],ParameterGroup=Parameters,Parameter=APCPT" value="45.700000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[APCPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[APCP Synth],ParameterGroup=Parameters,Parameter=gammacp" value="1.3400000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gammacp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[APCP Synth],ParameterGroup=Parameters,Parameter=ka_cp_b2" value="0.33400000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_cp_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[APCP Synth],ParameterGroup=Parameters,Parameter=ki_cp" value="0.20999999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_cp],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[APCP Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=CDH1T" value="0.80800000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[CDH1T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=e_h1_b2" value="2.3500000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_h1_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=e_h1_b5" value="9.7300000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_h1_b5],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=e_h1_n2" value="1.5600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_h1_n2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=e_h1_n3" value="3.75" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[e_h1_n3],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=ka_h1" value="0.24099999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_h1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=ka_h1_14" value="32.200000000000003" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_h1_14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=ki_h1" value="0.14399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_h1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=ki_h1_e" value="0.215" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_h1_e],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDH1A Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=NET1T" value="6.4000000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[NET1T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=kdp_net" value="0.106" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_net],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=kdp_net_14" value="0.0066299999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_net_14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=kdp_net_px" value="83.299999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kdp_net_px],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=kp_net" value="0.55600000000000005" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_net],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=kp_net_15" value="0.0088100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_net_15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=kp_net_b2" value="1.5" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_net_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=kp_net_en" value="6.8799999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kp_net_en],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[NET1deP Synth],ParameterGroup=Parameters,Parameter=signet" value="1.52" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[signet],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PPX Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PPX Synth],ParameterGroup=Parameters,Parameter=PPXT" value="0.86599999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[PPXT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PPX Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PPX Synth],ParameterGroup=Parameters,Parameter=ka_px" value="0.055" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_px],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PPX Synth],ParameterGroup=Parameters,Parameter=ki_px" value="0.11899999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_px],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PPX Synth],ParameterGroup=Parameters,Parameter=ki_px_p1" value="6.6900000000000004" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_px_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PPX Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PDS1T Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PDS1T Synth],ParameterGroup=Parameters,Parameter=v" value="0.046699999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_pds],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PDS1T Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PDS1T Degr],ParameterGroup=Parameters,Parameter=kd_pds" value="0.0144" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_pds],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PDS1T Degr],ParameterGroup=Parameters,Parameter=kd_pds_20_i" value="0.125" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_pds_20_i],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[PDS1T Degr],ParameterGroup=Parameters,Parameter=ks_pds_20" value="3.04" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_pds_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC15 Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC15 Synth],ParameterGroup=Parameters,Parameter=CDC15T" value="1.02" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[CDC15T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC15 Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC15 Synth],ParameterGroup=Parameters,Parameter=ka_15" value="0.70899999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC15 Synth],ParameterGroup=Parameters,Parameter=ka_15_14" value="7.3799999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_15_14],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC15 Synth],ParameterGroup=Parameters,Parameter=ki_15" value="0.89400000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_15],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC15 Synth],ParameterGroup=Parameters,Parameter=ki_15_b2" value="2.1600000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_15_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC15 Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth],ParameterGroup=Parameters,Parameter=TEM1T" value="1.29" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[TEM1T],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth],ParameterGroup=Parameters,Parameter=gammatem" value="0.36899999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gammatem],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth],ParameterGroup=Parameters,Parameter=ka_tem" value="0.0848" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_tem],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth],ParameterGroup=Parameters,Parameter=ka_tem_lo" value="3.8399999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_tem_lo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth],ParameterGroup=Parameters,Parameter=ka_tem_p1" value="0.063799999999999996" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_tem_p1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth],ParameterGroup=Parameters,Parameter=ki_tem" value="0.32300000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_tem],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth],ParameterGroup=Parameters,Parameter=ki_tem_px" value="1.9199999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_tem_px],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[TEM1 Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOT Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOT Synth],ParameterGroup=Parameters,Parameter=ks_lo" value="0.044999999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_lo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOT Synth],ParameterGroup=Parameters,Parameter=ks_lo_m1" value="0.011299999999999999" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ks_lo_m1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOT Degr]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOT Degr],ParameterGroup=Parameters,Parameter=kd_lo" value="0.0048300000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_lo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOT Degr],ParameterGroup=Parameters,Parameter=kd_lo_h1" value="0.13900000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_lo_h1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOA Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOA Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOA Synth],ParameterGroup=Parameters,Parameter=ka_lo" value="0.023199999999999998" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_lo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOA Synth],ParameterGroup=Parameters,Parameter=ka_lo_b2" value="1.1100000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_lo_b2],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOA Synth],ParameterGroup=Parameters,Parameter=kd_lo" value="0.0048300000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_lo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOA Synth],ParameterGroup=Parameters,Parameter=kd_lo_h1" value="0.13900000000000001" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_lo_h1],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOA Synth],ParameterGroup=Parameters,Parameter=ki_lo" value="0.96499999999999997" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_lo],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[POLOA Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APC Synth]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APC Synth],ParameterGroup=Parameters,Parameter=gamma" value="2.2200000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[gamma],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APC Synth],ParameterGroup=Parameters,Parameter=ka_20" value="0.0104" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ka_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APC Synth],ParameterGroup=Parameters,Parameter=kd_20" value="0.124" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[kd_20],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APC Synth],ParameterGroup=Parameters,Parameter=ki_20_ori" value="5.04" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[ki_20_ori],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=Yeast Cell Cycle,Vector=Reactions[CDC20A_APC Synth],ParameterGroup=Parameters,Parameter=sig" value="9.6300000000000008" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=Yeast Cell Cycle,Vector=Values[sig],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_24"/>
      <StateTemplateVariable objectReference="Metabolite_20"/>
      <StateTemplateVariable objectReference="Metabolite_19"/>
      <StateTemplateVariable objectReference="Metabolite_0"/>
      <StateTemplateVariable objectReference="ModelValue_126"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_26"/>
      <StateTemplateVariable objectReference="Metabolite_25"/>
      <StateTemplateVariable objectReference="Metabolite_23"/>
      <StateTemplateVariable objectReference="Metabolite_22"/>
      <StateTemplateVariable objectReference="Metabolite_21"/>
      <StateTemplateVariable objectReference="Metabolite_18"/>
      <StateTemplateVariable objectReference="Metabolite_17"/>
      <StateTemplateVariable objectReference="Metabolite_16"/>
      <StateTemplateVariable objectReference="Metabolite_15"/>
      <StateTemplateVariable objectReference="Metabolite_14"/>
      <StateTemplateVariable objectReference="Metabolite_13"/>
      <StateTemplateVariable objectReference="Metabolite_12"/>
      <StateTemplateVariable objectReference="Metabolite_11"/>
      <StateTemplateVariable objectReference="Metabolite_10"/>
      <StateTemplateVariable objectReference="Metabolite_9"/>
      <StateTemplateVariable objectReference="Metabolite_8"/>
      <StateTemplateVariable objectReference="Metabolite_7"/>
      <StateTemplateVariable objectReference="Metabolite_6"/>
      <StateTemplateVariable objectReference="Metabolite_5"/>
      <StateTemplateVariable objectReference="Metabolite_4"/>
      <StateTemplateVariable objectReference="Metabolite_3"/>
      <StateTemplateVariable objectReference="Metabolite_2"/>
      <StateTemplateVariable objectReference="Metabolite_1"/>
      <StateTemplateVariable objectReference="Compartment_0"/>
      <StateTemplateVariable objectReference="ModelValue_127"/>
      <StateTemplateVariable objectReference="ModelValue_125"/>
      <StateTemplateVariable objectReference="ModelValue_124"/>
      <StateTemplateVariable objectReference="ModelValue_123"/>
      <StateTemplateVariable objectReference="ModelValue_122"/>
      <StateTemplateVariable objectReference="ModelValue_121"/>
      <StateTemplateVariable objectReference="ModelValue_120"/>
      <StateTemplateVariable objectReference="ModelValue_119"/>
      <StateTemplateVariable objectReference="ModelValue_118"/>
      <StateTemplateVariable objectReference="ModelValue_117"/>
      <StateTemplateVariable objectReference="ModelValue_116"/>
      <StateTemplateVariable objectReference="ModelValue_115"/>
      <StateTemplateVariable objectReference="ModelValue_114"/>
      <StateTemplateVariable objectReference="ModelValue_113"/>
      <StateTemplateVariable objectReference="ModelValue_112"/>
      <StateTemplateVariable objectReference="ModelValue_111"/>
      <StateTemplateVariable objectReference="ModelValue_110"/>
      <StateTemplateVariable objectReference="ModelValue_109"/>
      <StateTemplateVariable objectReference="ModelValue_108"/>
      <StateTemplateVariable objectReference="ModelValue_107"/>
      <StateTemplateVariable objectReference="ModelValue_106"/>
      <StateTemplateVariable objectReference="ModelValue_105"/>
      <StateTemplateVariable objectReference="ModelValue_104"/>
      <StateTemplateVariable objectReference="ModelValue_103"/>
      <StateTemplateVariable objectReference="ModelValue_102"/>
      <StateTemplateVariable objectReference="ModelValue_101"/>
      <StateTemplateVariable objectReference="ModelValue_100"/>
      <StateTemplateVariable objectReference="ModelValue_99"/>
      <StateTemplateVariable objectReference="ModelValue_98"/>
      <StateTemplateVariable objectReference="ModelValue_97"/>
      <StateTemplateVariable objectReference="ModelValue_96"/>
      <StateTemplateVariable objectReference="ModelValue_95"/>
      <StateTemplateVariable objectReference="ModelValue_94"/>
      <StateTemplateVariable objectReference="ModelValue_93"/>
      <StateTemplateVariable objectReference="ModelValue_92"/>
      <StateTemplateVariable objectReference="ModelValue_91"/>
      <StateTemplateVariable objectReference="ModelValue_90"/>
      <StateTemplateVariable objectReference="ModelValue_89"/>
      <StateTemplateVariable objectReference="ModelValue_88"/>
      <StateTemplateVariable objectReference="ModelValue_87"/>
      <StateTemplateVariable objectReference="ModelValue_86"/>
      <StateTemplateVariable objectReference="ModelValue_85"/>
      <StateTemplateVariable objectReference="ModelValue_84"/>
      <StateTemplateVariable objectReference="ModelValue_83"/>
      <StateTemplateVariable objectReference="ModelValue_82"/>
      <StateTemplateVariable objectReference="ModelValue_81"/>
      <StateTemplateVariable objectReference="ModelValue_80"/>
      <StateTemplateVariable objectReference="ModelValue_79"/>
      <StateTemplateVariable objectReference="ModelValue_78"/>
      <StateTemplateVariable objectReference="ModelValue_77"/>
      <StateTemplateVariable objectReference="ModelValue_76"/>
      <StateTemplateVariable objectReference="ModelValue_75"/>
      <StateTemplateVariable objectReference="ModelValue_74"/>
      <StateTemplateVariable objectReference="ModelValue_73"/>
      <StateTemplateVariable objectReference="ModelValue_72"/>
      <StateTemplateVariable objectReference="ModelValue_71"/>
      <StateTemplateVariable objectReference="ModelValue_70"/>
      <StateTemplateVariable objectReference="ModelValue_69"/>
      <StateTemplateVariable objectReference="ModelValue_68"/>
      <StateTemplateVariable objectReference="ModelValue_67"/>
      <StateTemplateVariable objectReference="ModelValue_66"/>
      <StateTemplateVariable objectReference="ModelValue_65"/>
      <StateTemplateVariable objectReference="ModelValue_64"/>
      <StateTemplateVariable objectReference="ModelValue_63"/>
      <StateTemplateVariable objectReference="ModelValue_62"/>
      <StateTemplateVariable objectReference="ModelValue_61"/>
      <StateTemplateVariable objectReference="ModelValue_60"/>
      <StateTemplateVariable objectReference="ModelValue_59"/>
      <StateTemplateVariable objectReference="ModelValue_58"/>
      <StateTemplateVariable objectReference="ModelValue_57"/>
      <StateTemplateVariable objectReference="ModelValue_56"/>
      <StateTemplateVariable objectReference="ModelValue_55"/>
      <StateTemplateVariable objectReference="ModelValue_54"/>
      <StateTemplateVariable objectReference="ModelValue_53"/>
      <StateTemplateVariable objectReference="ModelValue_52"/>
      <StateTemplateVariable objectReference="ModelValue_51"/>
      <StateTemplateVariable objectReference="ModelValue_50"/>
      <StateTemplateVariable objectReference="ModelValue_49"/>
      <StateTemplateVariable objectReference="ModelValue_48"/>
      <StateTemplateVariable objectReference="ModelValue_47"/>
      <StateTemplateVariable objectReference="ModelValue_46"/>
      <StateTemplateVariable objectReference="ModelValue_45"/>
      <StateTemplateVariable objectReference="ModelValue_44"/>
      <StateTemplateVariable objectReference="ModelValue_43"/>
      <StateTemplateVariable objectReference="ModelValue_42"/>
      <StateTemplateVariable objectReference="ModelValue_41"/>
      <StateTemplateVariable objectReference="ModelValue_40"/>
      <StateTemplateVariable objectReference="ModelValue_39"/>
      <StateTemplateVariable objectReference="ModelValue_38"/>
      <StateTemplateVariable objectReference="ModelValue_37"/>
      <StateTemplateVariable objectReference="ModelValue_36"/>
      <StateTemplateVariable objectReference="ModelValue_35"/>
      <StateTemplateVariable objectReference="ModelValue_34"/>
      <StateTemplateVariable objectReference="ModelValue_33"/>
      <StateTemplateVariable objectReference="ModelValue_32"/>
      <StateTemplateVariable objectReference="ModelValue_31"/>
      <StateTemplateVariable objectReference="ModelValue_30"/>
      <StateTemplateVariable objectReference="ModelValue_29"/>
      <StateTemplateVariable objectReference="ModelValue_28"/>
      <StateTemplateVariable objectReference="ModelValue_27"/>
      <StateTemplateVariable objectReference="ModelValue_26"/>
      <StateTemplateVariable objectReference="ModelValue_25"/>
      <StateTemplateVariable objectReference="ModelValue_24"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
      <StateTemplateVariable objectReference="ModelValue_11"/>
      <StateTemplateVariable objectReference="ModelValue_10"/>
      <StateTemplateVariable objectReference="ModelValue_9"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_2"/>
      <StateTemplateVariable objectReference="ModelValue_1"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 1.2586274391129999e+22 4.3660521213250001e+23 3.7698601764820001e+22 3.3483103164919997e+22 3.1254911047830002e+22 8.9127684683600002e+21 1.4453138056800002e+22 3.9565465430489997e+22 8.9729898769300001e+22 7.3470118455400001e+22 4.8357791081710003e+22 1.4212252422519999e+23 5.5825245744390006e+22 2.7701847942200001e+23 1.065918931689e+24 1.56575662282e+23 8.9127684683599997e+23 1.6560887356750001e+24 1.4874687916790001e+24 1.9451514968110002e+23 2.1077492999500002e+22 3.8903029936220005e+23 4.293786431041e+22 4.0830115010460004e+23 6.0040744344289997e+22 3.2218453584950002e+22 2.0721811535692416e+25 5.1245127419632697e+21 1.4613254061860575e+21 0 0 1.6861994399600015e+22 4.293786431041e+22 1257024356.8376269 3.6723041258761773e+22 4.8357791081710003e+22 0 0 0 0 6.5858381481493272e+21 0.0077016353395549476 0 0 0 0 6.0221408570000002e+23 0 0 0 0 6.0221408570000002e+23 6.0221408570000002e+23 6.0221408570000002e+23 6.0221408570000002e+23 6.0221408570000002e+23 6.0221408570000002e+23 6.0221408570000002e+23 6.0221408570000002e+23 6.0221408570000002e+23 0 0 0 0 0 0 0 0 0 1 90 1.1100000000000001 0.73199999999999998 4.2699999999999996 0.79400000000000004 2.2200000000000002 12.9 1.3400000000000001 0.36899999999999999 9.6300000000000008 1.52 0.055300000000000002 3.0099999999999998 1.22 0.19500000000000001 0.0275 6.0999999999999996 23.699999999999999 2.9700000000000002 0.042200000000000001 2.9300000000000002 9.3599999999999994 1e-08 0.996 0.032000000000000001 0.0066299999999999996 0.088999999999999996 0.052400000000000002 0.89900000000000002 0.65000000000000002 1.05 0.39700000000000002 19.5 2.3900000000000001 3.1200000000000001 0.83599999999999997 1.1100000000000001 0.00053799999999999996 0.0178 0.055599999999999997 0.044499999999999998 0.00762 0.031 0.00298 0.13600000000000001 0.66200000000000003 0.28699999999999998 0.0077999999999999996 1.1200000000000001 3 1.8899999999999999 0.058999999999999997 0.074300000000000005 0.038399999999999997 0.80900000000000005 1.8999999999999999 5.04 0.124 0.081699999999999995 0.0055799999999999999 0.038899999999999997 0.042000000000000003 1.4099999999999999 0.028000000000000001 4.6500000000000004 3.3900000000000001 0.022100000000000002 0.35399999999999998 0.124 0.0104 0.0049800000000000001 0.037400000000000003 5.04 0.33400000000000002 0.20999999999999999 0.24099999999999999 32.200000000000003 0.14399999999999999 0.215 3.75 1.5600000000000001 9.7300000000000004 2.3500000000000001 0.106 0.0066299999999999996 83.299999999999997 0.55600000000000005 1.5 6.8799999999999999 0.0088100000000000001 0.055 0.11899999999999999 6.6900000000000004 0.046699999999999998 0.0144 3.04 0.70899999999999996 7.3799999999999999 0.89400000000000002 2.1600000000000001 0.0848 3.8399999999999999 0.063799999999999996 0.32300000000000001 1.9199999999999999 0.044999999999999998 0.011299999999999999 0.0048300000000000001 0.13900000000000001 0.023199999999999998 1.1100000000000001 0.96499999999999997 5.6100000000000003 2.1000000000000001 0.46800000000000003 0.28199999999999997 45.700000000000003 0.80800000000000005 6.4000000000000004 6.2300000000000004 0.86599999999999999 0.26400000000000001 1.02 1.29 0.125 0.40000000000000002 0 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_13" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_1" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="1"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_3" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_4" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_9" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_11" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_0" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_13"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_0" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <GUI>
  </GUI>
  <SBMLReference file="yeast_15.xml">
    <SBMLMap SBMLid="APCP" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="APCPT" COPASIkey="ModelValue_10"/>
    <SBMLMap SBMLid="APCP_Synth" COPASIkey="Reaction_11"/>
    <SBMLMap SBMLid="BCK2" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="BUD" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="BUD_Degr" COPASIkey="Reaction_21"/>
    <SBMLMap SBMLid="BUD_Synth" COPASIkey="Reaction_22"/>
    <SBMLMap SBMLid="Bck2_Degr" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="Bck2_Synth" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="Bck2_peaks" COPASIkey="Metabolite_8"/>
    <SBMLMap SBMLid="CDC14" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="CDC14T" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="CDC15" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="CDC15T" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="CDC15_Synth" COPASIkey="Reaction_5"/>
    <SBMLMap SBMLid="CDC20A" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="CDC20A_APC" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="CDC20A_APCP_T" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="CDC20A_APC_Synth" COPASIkey="Reaction_0"/>
    <SBMLMap SBMLid="CDC20A_APC_T" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="CDC20A_Synth" COPASIkey="Reaction_12"/>
    <SBMLMap SBMLid="CDC20T" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="CDC20T_Degr" COPASIkey="Reaction_13"/>
    <SBMLMap SBMLid="CDC20T_Synth" COPASIkey="Reaction_14"/>
    <SBMLMap SBMLid="CDC20T_peaks" COPASIkey="Metabolite_3"/>
    <SBMLMap SBMLid="CDH1A" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="CDH1A_Synth" COPASIkey="Reaction_10"/>
    <SBMLMap SBMLid="CDH1T" COPASIkey="ModelValue_9"/>
    <SBMLMap SBMLid="CKIP" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="CKIP_Synth" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="CKIT" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="CKIT_Degr" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="CKIT_Synth" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="CKIT_peaks" COPASIkey="Metabolite_25"/>
    <SBMLMap SBMLid="CLB2" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="CLB2CLB5" COPASIkey="Metabolite_0"/>
    <SBMLMap SBMLid="CLB2T" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="CLB5" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="CLB5T" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="CLN2" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="CLN3" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="Clb2T_Degr" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="Clb2T_Synth" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="Clb2T_peaks" COPASIkey="Metabolite_5"/>
    <SBMLMap SBMLid="Clb5T_Degr" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="Clb5T_Synth" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="Clb5T_peaks" COPASIkey="Metabolite_6"/>
    <SBMLMap SBMLid="Cln2_Degr" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="Cln2_Synth" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Cln2_peaks" COPASIkey="Metabolite_7"/>
    <SBMLMap SBMLid="Cln3_Degr" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="Cln3_Synth" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="Cln3_peaks" COPASIkey="Metabolite_9"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="DIV_COUNT" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="Diff1" COPASIkey="Metabolite_20"/>
    <SBMLMap SBMLid="Diff2" COPASIkey="Metabolite_19"/>
    <SBMLMap SBMLid="Dn3" COPASIkey="ModelValue_124"/>
    <SBMLMap SBMLid="ESP1" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="ESP1T" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="FLAG_BUD" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="FLAG_SPC" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="FLAG_UDNA" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="FuncSafety" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="Growth" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="Heav" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="Jn3" COPASIkey="ModelValue_123"/>
    <SBMLMap SBMLid="Jspn" COPASIkey="ModelValue_72"/>
    <SBMLMap SBMLid="MCM1" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="MCM1T" COPASIkey="ModelValue_11"/>
    <SBMLMap SBMLid="MEN" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="NET1T" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="NET1deP" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="NET1deP_Synth" COPASIkey="Reaction_9"/>
    <SBMLMap SBMLid="ORI" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="ORI_Degr" COPASIkey="Reaction_19"/>
    <SBMLMap SBMLid="ORI_Synth" COPASIkey="Reaction_20"/>
    <SBMLMap SBMLid="OffsetTime" COPASIkey="Metabolite_24"/>
    <SBMLMap SBMLid="PDS1T" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="PDS1T_Degr" COPASIkey="Reaction_6"/>
    <SBMLMap SBMLid="PDS1T_Synth" COPASIkey="Reaction_7"/>
    <SBMLMap SBMLid="PDS1T_peaks" COPASIkey="Metabolite_2"/>
    <SBMLMap SBMLid="POLOA" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="POLOA_Synth" COPASIkey="Reaction_1"/>
    <SBMLMap SBMLid="POLOT" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="POLOT_Degr" COPASIkey="Reaction_2"/>
    <SBMLMap SBMLid="POLOT_Synth" COPASIkey="Reaction_3"/>
    <SBMLMap SBMLid="POLOT_peaks" COPASIkey="Metabolite_1"/>
    <SBMLMap SBMLid="PPX" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="PPXT" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="PPX_Synth" COPASIkey="Reaction_8"/>
    <SBMLMap SBMLid="Rate_Law_for_APCP_Synth_1" COPASIkey="Function_61"/>
    <SBMLMap SBMLid="Rate_Law_for_BUD_Synth_1" COPASIkey="Function_55"/>
    <SBMLMap SBMLid="Rate_Law_for_Bck2_Synth_1" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="Rate_Law_for_CDC15_Synth_1" COPASIkey="Function_66"/>
    <SBMLMap SBMLid="Rate_Law_for_CDC20A_APCP_Synth_1" COPASIkey="Function_60"/>
    <SBMLMap SBMLid="Rate_Law_for_CDC20A_APC_Synth_1" COPASIkey="Function_71"/>
    <SBMLMap SBMLid="Rate_Law_for_CDC20T_Synth_1" COPASIkey="Function_59"/>
    <SBMLMap SBMLid="Rate_Law_for_CDH1A_Synth_1" COPASIkey="Function_62"/>
    <SBMLMap SBMLid="Rate_Law_for_CKIP_Synth_1" COPASIkey="Function_50"/>
    <SBMLMap SBMLid="Rate_Law_for_CKIT_Degr_1" COPASIkey="Function_49"/>
    <SBMLMap SBMLid="Rate_Law_for_CKIT_Synth_1" COPASIkey="Function_48"/>
    <SBMLMap SBMLid="Rate_Law_for_Clb2T_Degr_1" COPASIkey="Function_54"/>
    <SBMLMap SBMLid="Rate_Law_for_Clb2T_Synth_1" COPASIkey="Function_53"/>
    <SBMLMap SBMLid="Rate_Law_for_Clb5T_Degr_1" COPASIkey="Function_52"/>
    <SBMLMap SBMLid="Rate_Law_for_Clb5T_Synth_1" COPASIkey="Function_51"/>
    <SBMLMap SBMLid="Rate_Law_for_Cln2_Synth_1" COPASIkey="Function_47"/>
    <SBMLMap SBMLid="Rate_Law_for_Cln3_Synth_1" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Rate_Law_for_Growth_1" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Rate_Law_for_NET1deP_Synth_1" COPASIkey="Function_63"/>
    <SBMLMap SBMLid="Rate_Law_for_ORI_Synth_1" COPASIkey="Function_56"/>
    <SBMLMap SBMLid="Rate_Law_for_PDS1T_Degr_1" COPASIkey="Function_65"/>
    <SBMLMap SBMLid="Rate_Law_for_POLOA_Synth_1" COPASIkey="Function_70"/>
    <SBMLMap SBMLid="Rate_Law_for_POLOT_Degr_1" COPASIkey="Function_69"/>
    <SBMLMap SBMLid="Rate_Law_for_POLOT_Synth_1" COPASIkey="Function_68"/>
    <SBMLMap SBMLid="Rate_Law_for_PPX_Synth_1" COPASIkey="Function_64"/>
    <SBMLMap SBMLid="Rate_Law_for_SBFdeP_Synth_1" COPASIkey="Function_46"/>
    <SBMLMap SBMLid="Rate_Law_for_SPN_Synth_1" COPASIkey="Function_57"/>
    <SBMLMap SBMLid="Rate_Law_for_SWI5T_Synth_1" COPASIkey="Function_58"/>
    <SBMLMap SBMLid="Rate_Law_for_TEM1_Synth_1" COPASIkey="Function_67"/>
    <SBMLMap SBMLid="Rate_Law_for_WHI5deP_Synth_1" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="SBF" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="SBFT" COPASIkey="ModelValue_12"/>
    <SBMLMap SBMLid="SBFdeP" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="SBFdeP_Synth" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="SPN" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="SPN_Degr" COPASIkey="Reaction_17"/>
    <SBMLMap SBMLid="SPN_Synth" COPASIkey="Reaction_18"/>
    <SBMLMap SBMLid="SWI5A" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="SWI5T" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="SWI5T_Degr" COPASIkey="Reaction_15"/>
    <SBMLMap SBMLid="SWI5T_Synth" COPASIkey="Reaction_16"/>
    <SBMLMap SBMLid="SWI5T_peaks" COPASIkey="Metabolite_4"/>
    <SBMLMap SBMLid="Sigmoid" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="TEM1" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="TEM1T" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="TEM1_Synth" COPASIkey="Reaction_4"/>
    <SBMLMap SBMLid="V" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="VDiv1" COPASIkey="Metabolite_23"/>
    <SBMLMap SBMLid="VDiv2" COPASIkey="Metabolite_22"/>
    <SBMLMap SBMLid="VDiv3" COPASIkey="Metabolite_21"/>
    <SBMLMap SBMLid="WHI5T" COPASIkey="ModelValue_13"/>
    <SBMLMap SBMLid="WHI5deP" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="WHI5deP_Synth" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="cell" COPASIkey="Compartment_0"/>
    <SBMLMap SBMLid="dBck2_sign" COPASIkey="Metabolite_17"/>
    <SBMLMap SBMLid="dCDC20T_sign" COPASIkey="Metabolite_12"/>
    <SBMLMap SBMLid="dCKIT_sign" COPASIkey="Metabolite_26"/>
    <SBMLMap SBMLid="dClb2T_sign" COPASIkey="Metabolite_14"/>
    <SBMLMap SBMLid="dClb5T_sign" COPASIkey="Metabolite_15"/>
    <SBMLMap SBMLid="dCln2_sign" COPASIkey="Metabolite_16"/>
    <SBMLMap SBMLid="dCln3_sign" COPASIkey="Metabolite_18"/>
    <SBMLMap SBMLid="dPDS1T_sign" COPASIkey="Metabolite_11"/>
    <SBMLMap SBMLid="dPOLOT_sign" COPASIkey="Metabolite_10"/>
    <SBMLMap SBMLid="dSWI5T_sign" COPASIkey="Metabolite_13"/>
    <SBMLMap SBMLid="e_bud_b2" COPASIkey="ModelValue_76"/>
    <SBMLMap SBMLid="e_bud_b5" COPASIkey="ModelValue_77"/>
    <SBMLMap SBMLid="e_bud_n2" COPASIkey="ModelValue_78"/>
    <SBMLMap SBMLid="e_bud_n3" COPASIkey="ModelValue_79"/>
    <SBMLMap SBMLid="e_h1_b2" COPASIkey="ModelValue_44"/>
    <SBMLMap SBMLid="e_h1_b5" COPASIkey="ModelValue_45"/>
    <SBMLMap SBMLid="e_h1_n2" COPASIkey="ModelValue_46"/>
    <SBMLMap SBMLid="e_h1_n3" COPASIkey="ModelValue_47"/>
    <SBMLMap SBMLid="e_ki_b2" COPASIkey="ModelValue_92"/>
    <SBMLMap SBMLid="e_ki_b5" COPASIkey="ModelValue_93"/>
    <SBMLMap SBMLid="e_ki_k2" COPASIkey="ModelValue_95"/>
    <SBMLMap SBMLid="e_ki_n2" COPASIkey="ModelValue_94"/>
    <SBMLMap SBMLid="e_ki_n3" COPASIkey="ModelValue_96"/>
    <SBMLMap SBMLid="e_ori_b2" COPASIkey="ModelValue_69"/>
    <SBMLMap SBMLid="e_ori_b5" COPASIkey="ModelValue_70"/>
    <SBMLMap SBMLid="f" COPASIkey="ModelValue_1"/>
    <SBMLMap SBMLid="gamma" COPASIkey="ModelValue_121"/>
    <SBMLMap SBMLid="gammacp" COPASIkey="ModelValue_119"/>
    <SBMLMap SBMLid="gammaki" COPASIkey="ModelValue_120"/>
    <SBMLMap SBMLid="gammatem" COPASIkey="ModelValue_118"/>
    <SBMLMap SBMLid="ka_15" COPASIkey="ModelValue_30"/>
    <SBMLMap SBMLid="ka_15_14" COPASIkey="ModelValue_29"/>
    <SBMLMap SBMLid="ka_20" COPASIkey="ModelValue_57"/>
    <SBMLMap SBMLid="ka_cp_b2" COPASIkey="ModelValue_53"/>
    <SBMLMap SBMLid="ka_h1" COPASIkey="ModelValue_51"/>
    <SBMLMap SBMLid="ka_h1_14" COPASIkey="ModelValue_50"/>
    <SBMLMap SBMLid="ka_lo" COPASIkey="ModelValue_17"/>
    <SBMLMap SBMLid="ka_lo_b2" COPASIkey="ModelValue_16"/>
    <SBMLMap SBMLid="ka_m1_b2" COPASIkey="ModelValue_62"/>
    <SBMLMap SBMLid="ka_px" COPASIkey="ModelValue_36"/>
    <SBMLMap SBMLid="ka_swi5_14" COPASIkey="ModelValue_64"/>
    <SBMLMap SBMLid="ka_tem" COPASIkey="ModelValue_26"/>
    <SBMLMap SBMLid="ka_tem_lo" COPASIkey="ModelValue_25"/>
    <SBMLMap SBMLid="ka_tem_p1" COPASIkey="ModelValue_24"/>
    <SBMLMap SBMLid="kas_net" COPASIkey="ModelValue_14"/>
    <SBMLMap SBMLid="kd_20" COPASIkey="ModelValue_58"/>
    <SBMLMap SBMLid="kd_b2" COPASIkey="ModelValue_83"/>
    <SBMLMap SBMLid="kd_b2_20" COPASIkey="ModelValue_82"/>
    <SBMLMap SBMLid="kd_b2_20_i" COPASIkey="ModelValue_55"/>
    <SBMLMap SBMLid="kd_b2_h1" COPASIkey="ModelValue_81"/>
    <SBMLMap SBMLid="kd_b5" COPASIkey="ModelValue_87"/>
    <SBMLMap SBMLid="kd_b5_20" COPASIkey="ModelValue_86"/>
    <SBMLMap SBMLid="kd_b5_20_i" COPASIkey="ModelValue_56"/>
    <SBMLMap SBMLid="kd_bud" COPASIkey="ModelValue_75"/>
    <SBMLMap SBMLid="kd_k2" COPASIkey="ModelValue_114"/>
    <SBMLMap SBMLid="kd_ki" COPASIkey="ModelValue_99"/>
    <SBMLMap SBMLid="kd_kip" COPASIkey="ModelValue_98"/>
    <SBMLMap SBMLid="kd_lo" COPASIkey="ModelValue_19"/>
    <SBMLMap SBMLid="kd_lo_h1" COPASIkey="ModelValue_18"/>
    <SBMLMap SBMLid="kd_n2" COPASIkey="ModelValue_102"/>
    <SBMLMap SBMLid="kd_n3" COPASIkey="ModelValue_122"/>
    <SBMLMap SBMLid="kd_ori" COPASIkey="ModelValue_68"/>
    <SBMLMap SBMLid="kd_pds" COPASIkey="ModelValue_32"/>
    <SBMLMap SBMLid="kd_pds_20_i" COPASIkey="ModelValue_2"/>
    <SBMLMap SBMLid="kd_spn" COPASIkey="ModelValue_73"/>
    <SBMLMap SBMLid="kd_swi5" COPASIkey="ModelValue_65"/>
    <SBMLMap SBMLid="kdp_bf" COPASIkey="ModelValue_106"/>
    <SBMLMap SBMLid="kdp_i5" COPASIkey="ModelValue_113"/>
    <SBMLMap SBMLid="kdp_i5_14" COPASIkey="ModelValue_112"/>
    <SBMLMap SBMLid="kdp_ki" COPASIkey="ModelValue_91"/>
    <SBMLMap SBMLid="kdp_ki_14" COPASIkey="ModelValue_90"/>
    <SBMLMap SBMLid="kdp_net" COPASIkey="ModelValue_43"/>
    <SBMLMap SBMLid="kdp_net_14" COPASIkey="ModelValue_42"/>
    <SBMLMap SBMLid="kdp_net_px" COPASIkey="ModelValue_41"/>
    <SBMLMap SBMLid="ki_15" COPASIkey="ModelValue_28"/>
    <SBMLMap SBMLid="ki_15_b2" COPASIkey="ModelValue_27"/>
    <SBMLMap SBMLid="ki_20_ori" COPASIkey="ModelValue_54"/>
    <SBMLMap SBMLid="ki_cp" COPASIkey="ModelValue_52"/>
    <SBMLMap SBMLid="ki_h1" COPASIkey="ModelValue_49"/>
    <SBMLMap SBMLid="ki_h1_e" COPASIkey="ModelValue_48"/>
    <SBMLMap SBMLid="ki_lo" COPASIkey="ModelValue_15"/>
    <SBMLMap SBMLid="ki_m1" COPASIkey="ModelValue_61"/>
    <SBMLMap SBMLid="ki_px" COPASIkey="ModelValue_35"/>
    <SBMLMap SBMLid="ki_px_p1" COPASIkey="ModelValue_34"/>
    <SBMLMap SBMLid="ki_swi5_b2" COPASIkey="ModelValue_63"/>
    <SBMLMap SBMLid="ki_tem" COPASIkey="ModelValue_23"/>
    <SBMLMap SBMLid="ki_tem_px" COPASIkey="ModelValue_22"/>
    <SBMLMap SBMLid="kp_bf_b2" COPASIkey="ModelValue_105"/>
    <SBMLMap SBMLid="kp_i5" COPASIkey="ModelValue_111"/>
    <SBMLMap SBMLid="kp_i5_b5" COPASIkey="ModelValue_107"/>
    <SBMLMap SBMLid="kp_i5_k2" COPASIkey="ModelValue_109"/>
    <SBMLMap SBMLid="kp_i5_n2" COPASIkey="ModelValue_108"/>
    <SBMLMap SBMLid="kp_i5_n3" COPASIkey="ModelValue_110"/>
    <SBMLMap SBMLid="kp_ki_e" COPASIkey="ModelValue_97"/>
    <SBMLMap SBMLid="kp_net" COPASIkey="ModelValue_40"/>
    <SBMLMap SBMLid="kp_net_15" COPASIkey="ModelValue_37"/>
    <SBMLMap SBMLid="kp_net_b2" COPASIkey="ModelValue_39"/>
    <SBMLMap SBMLid="kp_net_en" COPASIkey="ModelValue_38"/>
    <SBMLMap SBMLid="ks_20" COPASIkey="ModelValue_60"/>
    <SBMLMap SBMLid="ks_20_m1" COPASIkey="ModelValue_59"/>
    <SBMLMap SBMLid="ks_b2" COPASIkey="ModelValue_85"/>
    <SBMLMap SBMLid="ks_b2_m1" COPASIkey="ModelValue_84"/>
    <SBMLMap SBMLid="ks_b5" COPASIkey="ModelValue_89"/>
    <SBMLMap SBMLid="ks_b5_bf" COPASIkey="ModelValue_88"/>
    <SBMLMap SBMLid="ks_bud_e" COPASIkey="ModelValue_80"/>
    <SBMLMap SBMLid="ks_k2" COPASIkey="ModelValue_115"/>
    <SBMLMap SBMLid="ks_ki" COPASIkey="ModelValue_101"/>
    <SBMLMap SBMLid="ks_ki_swi5" COPASIkey="ModelValue_100"/>
    <SBMLMap SBMLid="ks_lo" COPASIkey="ModelValue_21"/>
    <SBMLMap SBMLid="ks_lo_m1" COPASIkey="ModelValue_20"/>
    <SBMLMap SBMLid="ks_n2" COPASIkey="ModelValue_104"/>
    <SBMLMap SBMLid="ks_n2_bf" COPASIkey="ModelValue_103"/>
    <SBMLMap SBMLid="ks_n3" COPASIkey="ModelValue_125"/>
    <SBMLMap SBMLid="ks_ori_e" COPASIkey="ModelValue_71"/>
    <SBMLMap SBMLid="ks_pds" COPASIkey="ModelValue_33"/>
    <SBMLMap SBMLid="ks_pds_20" COPASIkey="ModelValue_31"/>
    <SBMLMap SBMLid="ks_spn" COPASIkey="ModelValue_74"/>
    <SBMLMap SBMLid="ks_swi5" COPASIkey="ModelValue_67"/>
    <SBMLMap SBMLid="ks_swi5_m1" COPASIkey="ModelValue_66"/>
    <SBMLMap SBMLid="mdt" COPASIkey="ModelValue_127"/>
    <SBMLMap SBMLid="mu" COPASIkey="ModelValue_126"/>
    <SBMLMap SBMLid="sig" COPASIkey="ModelValue_117"/>
    <SBMLMap SBMLid="signet" COPASIkey="ModelValue_116"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_6" name="Avogadro" symbol="Avogadro">
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
