FUNCTION_BLOCK zakladacPosunVlevo
  VAR_INPUT
    RUN : BOOL;
    RESET : BOOL;
  END_VAR
  VAR_OUTPUT
    DONE : BOOL;
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    R_TRIG_01 : R_TRIG;
    RS_TOGGLE_RUN : RS;
    R_TRIG_02 : R_TRIG;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="cfc.xsl" version="1.1"?>
<fbd version="1.1" grid="8">
<inVariable name="RUN" type="BOOL" id="1">
  <position x="17" y="11" />
</inVariable>
<outVariable name="DONE" type="BOOL" id="2">
  <position x="99" y="11" />
</outVariable>
<block name="R_TRIG" instance="R_TRIG_01" id="3" height="4" width="6" line="3" order="1">
  <position x="28" y="9" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="1">
        <position x="28" y="12" />
        <position x="24" y="12" />
        <position x="24" y="12" />
        <position x="21" y="12" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="RS" instance="RS_TOGGLE_RUN" id="6" height="6" width="5" line="5" order="3">
  <position x="41" y="9" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="3" name="Q">
        <position x="41" y="12" />
        <position x="37" y="12" />
        <position x="37" y="12" />
        <position x="34" y="12" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="11" name="Q">
        <position x="41" y="14" />
        <position x="36" y="14" />
        <position x="36" y="19" />
        <position x="34" y="19" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="RESET" type="BOOL" id="9">
  <position x="16" y="18" />
</inVariable>
<block name="R_TRIG" instance="R_TRIG_02" id="11" height="4" width="6" line="4" order="2">
  <position x="28" y="16" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="9">
        <position x="28" y="19" />
        <position x="24" y="19" />
        <position x="24" y="19" />
        <position x="21" y="19" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
END_VAR

//NC
//N000
(*  10	*)	CAL	R_TRIG_01(CLK:=RUN)
(*  55	*)	CAL	R_TRIG_02(CLK:=RESET)
(*  27	*)	CAL	RS_TOGGLE_RUN(S:=R_TRIG_01.Q, R1:=R_TRIG_02.Q)

END_FUNCTION_BLOCK
