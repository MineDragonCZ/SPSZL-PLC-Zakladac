FUNCTION_BLOCK zakladacResetPosToUp
  VAR_INPUT
    RUN : BOOL;
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    R_TRIG_01 : R_TRIG;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="cfc.xsl" version="1.1"?>
<fbd version="1.1" grid="8">
<inVariable name="RUN" type="BOOL" id="1">
  <position x="15" y="10" />
</inVariable>
<block name="R_TRIG" instance="R_TRIG_01" id="4" height="4" width="6" line="3" order="1">
  <position x="25" y="8" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="1">
        <position x="25" y="11" />
        <position x="22" y="11" />
        <position x="22" y="11" />
        <position x="19" y="11" />
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
(*   7	*)	CAL	R_TRIG_01(CLK:=RUN)

