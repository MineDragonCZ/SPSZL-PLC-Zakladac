FUNCTION_BLOCK zakladacZjistiBarvuNastavVysku
  VAR_INPUT
    START : BOOL;
  END_VAR
  VAR_OUTPUT
    PATRO_NAJITO : BOOL;
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    RS_01 : SR;
    RS_02 : SR;
    RS_CERVENA : RS;
    RS_MODRA : RS;
    R_TRIG_POSUV_V : R_TRIG;
    TON_01 : TON;
    R_TRIG_01 : R_TRIG;
    RS_NAJDI_PATRO : RS;
    TON_02 : TON;
    TOF_01 : TOF;
    TON_03 : TON;
    RS_04 : RS;
    TON_04 : TON;
    RS_PATRO_NAJITO : RS;
    TON_05 : TON;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="cfc.xsl" version="1.1"?>
<fbd version="1.1" grid="8">
<inVariable name="START" type="BOOL" id="5">
  <position x="2" y="10" />
</inVariable>
<outVariable name="motor_ver_0" type="BOOL" id="6" order="15">
  <position x="95" y="72" />
  <connection refid="49" name="OR">
    <position x="96" y="73" />
    <position x="93" y="73" />
    <position x="93" y="73" />
    <position x="92" y="73" />
  </connection>
</outVariable>
<outVariable name="motor_ver_1" type="BOOL" id="7" order="18">
  <position x="95" y="80" />
  <connection refid="50" name="OR">
    <position x="96" y="81" />
    <position x="93" y="81" />
    <position x="93" y="81" />
    <position x="92" y="81" />
  </connection>
</outVariable>
<outVariable name="motor_ver_2" type="BOOL" id="8" disabled="1">
  <position x="133" y="72" />
  <connection refid="12" name="OR" disabled="1">
    <position x="134" y="73" />
    <position x="131" y="73" />
    <position x="131" y="73" />
    <position x="130" y="73" />
  </connection>
</outVariable>
<outVariable name="motor_ver_3" type="BOOL" id="9" disabled="1">
  <position x="133" y="79" />
  <connection refid="13" name="OR" disabled="1">
    <position x="134" y="80" />
    <position x="131" y="80" />
    <position x="131" y="80" />
    <position x="130" y="80" />
  </connection>
</outVariable>
<inVariable name="pohybDokoncen_ver" type="BOOL" id="10">
  <position x="-4" y="21" />
</inVariable>
<block name="SR" instance="RS_01" id="11" height="6" width="6" line="5" order="1">
  <position x="27" y="8" />
  <inVariables>
    <variable name="S1" type="BOOL">
      <connection refid="62">
        <position x="27" y="11" />
        <position x="21" y="11" />
        <position x="21" y="11" />
        <position x="18" y="11" />
      </connection>
    </variable>
    <variable name="R" type="BOOL">
      <connection refid="18">
        <position x="27" y="13" />
        <position x="22" y="13" />
        <position x="22" y="16" />
        <position x="31" y="16" />
        <position x="31" y="24" />
        <position x="31" y="24" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="12" height="4" width="3" disabled="1">
  <position x="127" y="72" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
    </variable>
    <variable name="IN2" type="ANY_BIT">
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="13" height="4" width="3" disabled="1">
  <position x="127" y="79" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
    </variable>
    <variable name="IN2" type="ANY_BIT">
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="14">
  <position x="50" y="74" />
  <connection refid="59">
    <position x="50" y="74" />
    <position x="47" y="74" />
    <position x="47" y="32" />
    <position x="47" y="32" />
  </connection>
</node>
<outVariable name="vyber_posuvu" type="BOOL" id="15" order="3">
  <position x="46" y="2" />
  <connection refid="19" name="OR">
    <position x="47" y="3" />
    <position x="44" y="3" />
    <position x="44" y="3" />
    <position x="43" y="3" />
  </connection>
</outVariable>
<outVariable name="zapnout_posuv2" type="BOOL" id="16" order="25">
  <position x="59" y="56" />
  <connection refid="37" name="Q">
    <position x="60" y="57" />
    <position x="56" y="57" />
    <position x="56" y="57" />
    <position x="55" y="57" />
  </connection>
</outVariable>
<block name="SR" instance="RS_02" id="17" height="6" width="6" line="25" order="10">
  <position x="37" y="21" />
  <inVariables>
    <variable name="S1" type="BOOL">
      <connection refid="18">
        <position x="37" y="24" />
        <position x="32" y="24" />
        <position x="32" y="24" />
        <position x="31" y="24" />
      </connection>
    </variable>
    <variable name="R" type="BOOL">
      <connection refid="64" name="Q">
        <position x="37" y="26" />
        <position x="35" y="26" />
        <position x="35" y="77" />
        <position x="29" y="77" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="18">
  <position x="31" y="24" />
  <connection refid="21" name="AND">
    <position x="31" y="24" />
    <position x="27" y="24" />
    <position x="27" y="21" />
    <position x="26" y="21" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="19" height="4" width="3" line="9" order="2">
  <position x="40" y="2" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="20">
        <position x="40" y="3" />
        <position x="35" y="3" />
        <position x="35" y="11" />
        <position x="35" y="11" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="24">
        <position x="40" y="5" />
        <position x="38" y="5" />
        <position x="38" y="17" />
        <position x="44" y="17" />
        <position x="44" y="22" />
        <position x="44" y="22" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="20">
  <position x="35" y="11" />
  <connection refid="11" name="Q1">
    <position x="35" y="11" />
    <position x="34" y="11" />
    <position x="34" y="11" />
    <position x="33" y="11" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="21" height="6" width="4" line="22" order="8">
  <position x="22" y="20" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT" negated="true">
      <connection refid="60">
        <position x="22" y="21" />
        <position x="21" y="21" />
        <position x="21" y="17" />
        <position x="11" y="17" />
        <position x="11" y="11" />
        <position x="11" y="11" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="38">
        <position x="22" y="23" />
        <position x="21" y="23" />
        <position x="21" y="23" />
        <position x="20" y="23" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="22">
        <position x="22" y="25" />
        <position x="19" y="25" />
        <position x="19" y="28" />
        <position x="33" y="28" />
        <position x="33" y="17" />
        <position x="37" y="17" />
        <position x="37" y="11" />
        <position x="37" y="11" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="22">
  <position x="37" y="11" />
  <connection refid="20">
    <position x="37" y="11" />
    <position x="36" y="11" />
    <position x="36" y="11" />
    <position x="35" y="11" />
  </connection>
</node>
<outVariable name="posuvChapadlo_ver2" type="BOOL" id="23" order="11">
  <position x="53" y="49" />
  <connection refid="28">
    <position x="54" y="50" />
    <position x="50" y="50" />
    <position x="50" y="36" />
    <position x="50" y="36" />
  </connection>
</outVariable>
<node id="24">
  <position x="44" y="22" />
  <connection refid="17" name="Q1">
    <position x="44" y="22" />
    <position x="44" y="22" />
    <position x="44" y="24" />
    <position x="43" y="24" />
  </connection>
</node>
<block name="RS" instance="RS_CERVENA" id="25" height="6" width="5" line="58" order="20">
  <position x="109" y="42" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="27" name="AND">
        <position x="109" y="45" />
        <position x="99" y="45" />
        <position x="99" y="47" />
        <position x="93" y="47" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="34">
        <position x="109" y="47" />
        <position x="107" y="47" />
        <position x="107" y="47" />
        <position x="106" y="47" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="RS" instance="RS_MODRA" id="26" height="6" width="5" line="62" order="22">
  <position x="109" y="52" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="30" name="AND">
        <position x="109" y="55" />
        <position x="100" y="55" />
        <position x="100" y="55" />
        <position x="93" y="55" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="34">
        <position x="109" y="57" />
        <position x="106" y="57" />
        <position x="106" y="47" />
        <position x="106" y="47" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="27" height="4" width="4" line="54" order="19">
  <position x="89" y="46" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="31">
        <position x="89" y="47" />
        <position x="87" y="47" />
        <position x="87" y="47" />
        <position x="86" y="47" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="29">
        <position x="89" y="49" />
        <position x="87" y="49" />
        <position x="87" y="49" />
        <position x="83" y="49" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="28">
  <position x="50" y="36" />
  <connection refid="24">
    <position x="50" y="36" />
    <position x="50" y="36" />
    <position x="50" y="22" />
    <position x="44" y="22" />
  </connection>
</node>
<inVariable name="cervenaBarva" type="BOOL" id="29">
  <position x="73" y="48" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="30" height="4" width="4" line="60" order="21">
  <position x="89" y="54" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="31">
        <position x="89" y="55" />
        <position x="86" y="55" />
        <position x="86" y="47" />
        <position x="86" y="47" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="32">
        <position x="89" y="57" />
        <position x="87" y="57" />
        <position x="87" y="57" />
        <position x="83" y="57" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="31">
  <position x="86" y="47" />
  <connection refid="28">
    <position x="86" y="47" />
    <position x="68" y="47" />
    <position x="68" y="36" />
    <position x="50" y="36" />
  </connection>
</node>
<inVariable name="modraBarva" type="BOOL" id="32">
  <position x="74" y="56" />
</inVariable>
<inVariable name="RS_PATRO_NAJITO.Q1" type="BOOL" id="33">
  <position x="80" y="40" />
</inVariable>
<node id="34">
  <position x="106" y="47" />
  <connection refid="33">
    <position x="106" y="47" />
    <position x="106" y="47" />
    <position x="106" y="41" />
    <position x="96" y="41" />
  </connection>
</node>
<block name="RS" instance="RS_NAJDI_PATRO" id="35" height="6" width="5" line="92" order="30">
  <position x="68" y="64" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="41" name="Q">
        <position x="68" y="67" />
        <position x="63" y="67" />
        <position x="63" y="67" />
        <position x="61" y="67" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="67">
        <position x="68" y="69" />
        <position x="65" y="69" />
        <position x="65" y="72" />
        <position x="18" y="72" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="36" height="4" width="4" line="89" order="28">
  <position x="48" y="66" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="70">
        <position x="48" y="67" />
        <position x="34" y="67" />
        <position x="34" y="67" />
        <position x="21" y="67" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="39" name="Q">
        <position x="48" y="69" />
        <position x="41" y="69" />
        <position x="41" y="61" />
        <position x="38" y="61" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>
	Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="R_TRIG_POSUV_V" id="37" height="4" width="6" line="82" order="24">
  <position x="49" y="54" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="58" name="OR">
        <position x="49" y="57" />
        <position x="46" y="57" />
        <position x="46" y="43" />
        <position x="44" y="43" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="38">
  <position x="20" y="23" />
  <connection refid="10">
    <position x="20" y="23" />
    <position x="19" y="23" />
    <position x="19" y="22" />
    <position x="16" y="22" />
  </connection>
</node>
<block name="TON" instance="TON_01" id="39" height="6" width="6" line="87" order="27">
  <position x="32" y="58" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="61" name="Q1">
        <position x="32" y="61" />
        <position x="31" y="61" />
        <position x="31" y="53" />
        <position x="32" y="53" />
        <position x="32" y="46" />
        <position x="31" y="46" />
      </connection>
    <comment>input</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="40">
        <position x="32" y="63" />
        <position x="31" y="63" />
        <position x="31" y="63" />
        <position x="28" y="63" />
      </connection>
    <comment>preset</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>output</comment>
    </variable>
    <variable name="ET" type="TIME">
    <comment>value</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="t#700ms" type="TIME" id="40">
  <position x="21" y="62" />
</inVariable>
<block name="R_TRIG" instance="R_TRIG_01" id="41" height="4" width="6" line="91" order="29">
  <position x="55" y="64" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="36" name="AND">
        <position x="55" y="67" />
        <position x="53" y="67" />
        <position x="53" y="67" />
        <position x="52" y="67" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="RS_NAJDI_PATRO.Q1" type="BOOL" id="42">
  <position x="2" y="76" />
</inVariable>
<inVariable name="RS_CERVENA.Q1" type="BOOL" id="43">
  <position x="54" y="74" />
</inVariable>
<inVariable name="RS_NAJDI_PATRO.Q1" type="BOOL" id="44">
  <position x="51" y="76" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="45" height="4" width="4" line="34" order="12">
  <position x="79" y="74" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="53">
        <position x="79" y="75" />
        <position x="73" y="75" />
        <position x="73" y="75" />
        <position x="71" y="75" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="47">
        <position x="79" y="77" />
        <position x="75" y="77" />
        <position x="75" y="77" />
        <position x="74" y="77" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>
	Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="46" height="4" width="4" line="47" order="16">
  <position x="79" y="82" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="54">
        <position x="79" y="83" />
        <position x="77" y="83" />
        <position x="77" y="83" />
        <position x="70" y="83" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="52">
        <position x="79" y="85" />
        <position x="76" y="85" />
        <position x="76" y="85" />
        <position x="74" y="85" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="47">
  <position x="74" y="77" />
  <connection refid="44">
    <position x="74" y="77" />
    <position x="67" y="77" />
    <position x="67" y="77" />
    <position x="66" y="77" />
  </connection>
</node>
<inVariable name="RS_MODRA.Q1" type="BOOL" id="48">
  <position x="55" y="82" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="49" height="6" width="3" line="44" order="14">
  <position x="89" y="72" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="14">
        <position x="89" y="73" />
        <position x="50" y="73" />
        <position x="50" y="74" />
        <position x="50" y="74" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="45" name="AND">
        <position x="89" y="75" />
        <position x="85" y="75" />
        <position x="85" y="75" />
        <position x="83" y="75" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="55">
        <position x="89" y="77" />
        <position x="85" y="77" />
        <position x="85" y="85" />
        <position x="85" y="85" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>
	Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="50" height="6" width="3" line="51" order="17">
  <position x="89" y="80" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="14">
        <position x="89" y="81" />
        <position x="50" y="81" />
        <position x="50" y="74" />
        <position x="50" y="74" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="46" name="AND">
        <position x="89" y="83" />
        <position x="86" y="83" />
        <position x="86" y="83" />
        <position x="83" y="83" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="55">
        <position x="89" y="85" />
        <position x="86" y="85" />
        <position x="86" y="85" />
        <position x="85" y="85" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>
	Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="51" height="6" width="4" line="40" order="13">
  <position x="79" y="90" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="52">
        <position x="79" y="91" />
        <position x="74" y="91" />
        <position x="74" y="85" />
        <position x="74" y="85" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="53">
        <position x="79" y="93" />
        <position x="71" y="93" />
        <position x="71" y="75" />
        <position x="71" y="75" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT" negated="true">
      <connection refid="54">
        <position x="79" y="95" />
        <position x="70" y="95" />
        <position x="70" y="83" />
        <position x="70" y="83" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>
	Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="52">
  <position x="74" y="85" />
  <connection refid="47">
    <position x="74" y="85" />
    <position x="74" y="85" />
    <position x="74" y="77" />
    <position x="74" y="77" />
  </connection>
</node>
<node id="53">
  <position x="71" y="75" />
  <connection refid="43">
    <position x="71" y="75" />
    <position x="68" y="75" />
    <position x="68" y="75" />
    <position x="66" y="75" />
  </connection>
</node>
<node id="54">
  <position x="70" y="83" />
  <connection refid="48">
    <position x="70" y="83" />
    <position x="68" y="83" />
    <position x="68" y="83" />
    <position x="66" y="83" />
  </connection>
</node>
<node id="55">
  <position x="85" y="85" />
  <connection refid="51" name="AND">
    <position x="85" y="85" />
    <position x="85" y="85" />
    <position x="85" y="91" />
    <position x="83" y="91" />
  </connection>
</node>
<block name="TON" instance="TON_02" id="56" height="6" width="6" line="98" order="31">
  <position x="83" y="64" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="63">
        <position x="83" y="67" />
        <position x="79" y="67" />
        <position x="79" y="67" />
        <position x="76" y="67" />
      </connection>
    <comment>input</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="57">
        <position x="83" y="69" />
        <position x="82" y="69" />
        <position x="82" y="69" />
        <position x="79" y="69" />
      </connection>
    <comment>preset</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>output</comment>
    </variable>
    <variable name="ET" type="TIME">
    <comment>value</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="t#1s" type="TIME" id="57">
  <position x="75" y="68" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="58" height="4" width="3" line="80" order="23">
  <position x="41" y="42" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="59">
        <position x="41" y="43" />
        <position x="40" y="43" />
        <position x="40" y="32" />
        <position x="47" y="32" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="56" name="Q">
        <position x="41" y="45" />
        <position x="40" y="45" />
        <position x="40" y="60" />
        <position x="93" y="60" />
        <position x="93" y="67" />
        <position x="89" y="67" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="OR" type="ANY_BIT">
    <comment>
	Bitwise OR
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if either or all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="59">
  <position x="47" y="32" />
  <connection refid="22">
    <position x="47" y="32" />
    <position x="47" y="32" />
    <position x="47" y="11" />
    <position x="37" y="11" />
  </connection>
</node>
<node id="60">
  <position x="11" y="11" />
  <connection refid="5">
    <position x="11" y="11" />
    <position x="10" y="11" />
    <position x="10" y="11" />
    <position x="8" y="11" />
  </connection>
</node>
<block name="RS" instance="RS_04" id="61" height="6" width="5" line="86" order="26">
  <position x="26" y="43" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="62">
        <position x="26" y="46" />
        <position x="18" y="46" />
        <position x="18" y="11" />
        <position x="18" y="11" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="63">
        <position x="26" y="48" />
        <position x="18" y="48" />
        <position x="18" y="71" />
        <position x="76" y="71" />
        <position x="76" y="67" />
        <position x="76" y="67" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="62">
  <position x="18" y="11" />
  <connection refid="60">
    <position x="18" y="11" />
    <position x="15" y="11" />
    <position x="15" y="11" />
    <position x="11" y="11" />
  </connection>
</node>
<node id="63">
  <position x="76" y="67" />
  <connection refid="35" name="Q1">
    <position x="76" y="67" />
    <position x="75" y="67" />
    <position x="75" y="67" />
    <position x="73" y="67" />
  </connection>
</node>
<block name="TON" instance="TON_04" id="64" height="6" width="6" line="24" order="9">
  <position x="23" y="74" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="42">
        <position x="23" y="77" />
        <position x="20" y="77" />
        <position x="20" y="77" />
        <position x="17" y="77" />
      </connection>
    <comment>input</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="65">
        <position x="23" y="79" />
        <position x="21" y="79" />
        <position x="21" y="80" />
        <position x="17" y="80" />
      </connection>
    <comment>preset</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>output</comment>
    </variable>
    <variable name="ET" type="TIME">
    <comment>value</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="t#1s" type="TIME" id="65">
  <position x="13" y="79" />
</inVariable>
<block name="RS" instance="RS_PATRO_NAJITO" id="66" height="6" width="5" line="17" order="6">
  <position x="36" y="87" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="69" name="AND">
        <position x="36" y="90" />
        <position x="33" y="90" />
        <position x="33" y="88" />
        <position x="30" y="88" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="68">
        <position x="36" y="92" />
        <position x="30" y="92" />
        <position x="30" y="95" />
        <position x="25" y="95" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="RS_PATRO_NAJITO.Q1" type="BOOL" id="67">
  <position x="2" y="71" />
</inVariable>
<inVariable name="START" type="BOOL" id="68">
  <position x="19" y="94" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="69" height="4" width="4" line="15" order="5">
  <position x="26" y="87" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="70">
        <position x="26" y="88" />
        <position x="21" y="88" />
        <position x="21" y="67" />
        <position x="21" y="67" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="71" name="Q">
        <position x="26" y="90" />
        <position x="22" y="90" />
        <position x="22" y="89" />
        <position x="18" y="89" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="AND" type="ANY_BIT">
    <comment>
	Bitwise AND
	compares every bits on same position in IN1, IN2, ... and generates a 1 result
	if all bits are 1, otherwise it returns 0
</comment>
    </variable>
  </outVariables>
</block>
<node id="70">
  <position x="21" y="67" />
  <connection refid="38">
    <position x="21" y="67" />
    <position x="20" y="67" />
    <position x="20" y="23" />
    <position x="20" y="23" />
  </connection>
</node>
<block name="TON" instance="TON_05" id="71" height="6" width="6" line="13" order="4">
  <position x="12" y="86" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="73">
        <position x="12" y="89" />
        <position x="11" y="89" />
        <position x="11" y="88" />
        <position x="9" y="88" />
      </connection>
    <comment>input</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="72">
        <position x="12" y="91" />
        <position x="10" y="91" />
        <position x="10" y="91" />
        <position x="8" y="91" />
      </connection>
    <comment>preset</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>output</comment>
    </variable>
    <variable name="ET" type="TIME">
    <comment>value</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="t#500ms" type="TIME" id="72">
  <position x="0" y="90" />
</inVariable>
<inVariable name="TON_02.Q" type="BOOL" id="73">
  <position x="0" y="87" />
  <comment>
output  </comment>
</inVariable>
<outVariable name="PATRO_NAJITO" type="BOOL" id="74" order="7">
  <position x="50" y="89" />
  <connection refid="66" name="Q1">
    <position x="51" y="90" />
    <position x="45" y="90" />
    <position x="45" y="90" />
    <position x="41" y="90" />
  </connection>
</outVariable>
</fbd>
{/NOCODE}
//LVD
VAR
(* 230	*)	_Tmp_For_Back_Conn_6	:	BOOL;
(* 180	*)	_Tmp_For_Back_Conn_5	:	BOOL;
(*  58	*)	_Tmp_For_Back_Conn_4	:	BOOL;
(* 824	*)	_Tmp_For_Back_Conn_3	:	BOOL;
(* 882	*)	_Tmp_For_Back_Conn_2	:	BOOL;
(* 832	*)	_Tmp_For_Back_Conn_1	:	BOOL;
END_VAR

//TVD
VAR_TEMP
(* 861	*)	_Nod_Tmp_23	:	BOOL;
(* 199	*)	_Nod_Tmp_17	:	BOOL;
(* 494	*)	_Nod_Tmp_21	:	BOOL;
(* 159	*)	_Nod_Tmp_18	:	BOOL;
(* 269	*)	_Nod_Tmp_7	:	BOOL;
(* 759	*)	_Nod_Tmp_16	:	BOOL;
(* 624	*)	_Nod_Tmp_14	:	BOOL;
(* 636	*)	_Fun_Tmp_IN2_10_2	:	BOOL;
(* 768	*)	_Nod_Tmp_13	:	BOOL;
(* 777	*)	_Nod_Tmp_11	:	BOOL;
(* 674	*)	_Fun_Tmp_IN2_8_2	:	BOOL;
(* 413	*)	_Nod_Tmp_5	:	BOOL;
(* 906	*)	_Nod_Tmp_1	:	BOOL;
END_VAR

//NC
//N000
(*   4	*)	LD 	START
(* 861	*)	ST	_Nod_Tmp_23
(*  46	*)	CAL	RS_01(S1:=_Nod_Tmp_23, R:=_Tmp_For_Back_Conn_4)
(*  46	*)	LD 	RS_01.Q1
(* 199	*)	ST	_Nod_Tmp_17
(* 172	*)	LD 	_Nod_Tmp_17
(* 180	*)	OR 	_Tmp_For_Back_Conn_5
(* 116	*)	ST 	vyber_posuvu
(*  43	*)	LD 	pohybDokoncen_ver
(* 494	*)	ST	_Nod_Tmp_21
(*1019	*)	CAL	TON_05(IN:=TON_02.Q, PT:=t#500ms)
(* 984	*)	LD 	_Nod_Tmp_21
(* 992	*)	AND 	TON_05.Q
(* 949	*)	ST 	RS_PATRO_NAJITO.S
(* 949	*)	CAL	RS_PATRO_NAJITO(R1:=START)
(* 949	*)	LD 	RS_PATRO_NAJITO.Q1
(*1058	*)	ST 	PATRO_NAJITO
(* 212	*)	LDN	_Nod_Tmp_23
(* 222	*)	AND 	_Nod_Tmp_21
(* 230	*)	AND 	_Tmp_For_Back_Conn_6
(* 159	*)	ST	_Nod_Tmp_18
(* 915	*)	CAL	TON_04(IN:=RS_NAJDI_PATRO.Q1, PT:=t#1s)
(* 134	*)	CAL	RS_02(S1:=_Nod_Tmp_18, R:=TON_04.Q)
(* 134	*)	LD 	RS_02.Q1
(* 269	*)	ST	_Nod_Tmp_7
(* 260	*)	ST 	posuvChapadlo_ver2
(* 559	*)	LD 	RS_CERVENA.Q1
(* 759	*)	ST	_Nod_Tmp_16
(* 562	*)	LD 	RS_NAJDI_PATRO.Q1
(* 624	*)	ST	_Nod_Tmp_14
(* 569	*)	LD 	_Nod_Tmp_16
(* 577	*)	AND 	_Nod_Tmp_14
(* 648	*)	ST 	_Fun_Tmp_IN2_10_2
(* 633	*)	LD 	RS_MODRA.Q1
(* 768	*)	ST	_Nod_Tmp_13
(* 716	*)	LD 	_Nod_Tmp_14
(* 724	*)	ANDN	_Nod_Tmp_16
(* 732	*)	ANDN	_Nod_Tmp_13
(* 777	*)	ST	_Nod_Tmp_11
(* 640	*)	LD 	_Nod_Tmp_17
(* 648	*)	OR 	_Fun_Tmp_IN2_10_2
(* 656	*)	OR 	_Nod_Tmp_11
(*   7	*)	ST 	motor_ver_0
(* 599	*)	LD 	_Nod_Tmp_13
(* 607	*)	AND 	_Nod_Tmp_14
(* 686	*)	ST 	_Fun_Tmp_IN2_8_2
(* 678	*)	LD 	_Nod_Tmp_17
(* 686	*)	OR 	_Fun_Tmp_IN2_8_2
(* 694	*)	OR 	_Nod_Tmp_11
(*  16	*)	ST 	motor_ver_1
(* 332	*)	LD 	_Nod_Tmp_7
(* 340	*)	AND 	cervenaBarva
(* 278	*)	ST 	RS_CERVENA.S
(* 410	*)	LD 	RS_PATRO_NAJITO.Q1
(* 413	*)	ST	_Nod_Tmp_5
(* 278	*)	CAL	RS_CERVENA(R1:=_Nod_Tmp_5)
(* 373	*)	LD 	_Nod_Tmp_7
(* 381	*)	AND 	modraBarva
(* 303	*)	ST 	RS_MODRA.S
(* 303	*)	CAL	RS_MODRA(R1:=_Nod_Tmp_5)
(* 251	*)	LD	_Nod_Tmp_17
//N001
(* 230	*)	ST	_Tmp_For_Back_Conn_6
//N000
(* 269	*)	LD	_Nod_Tmp_7
//N002
(* 180	*)	ST	_Tmp_For_Back_Conn_5
//N000
(* 159	*)	LD	_Nod_Tmp_18
//N003
(*  58	*)	ST	_Tmp_For_Back_Conn_4
//N000
(* 852	*)	LD	_Nod_Tmp_17
//N004
(* 824	*)	ST	_Tmp_For_Back_Conn_3
//N005
(* 824	*)	LD 	_Tmp_For_Back_Conn_3
(* 832	*)	OR 	_Tmp_For_Back_Conn_1
(* 477	*)	ST 	R_TRIG_POSUV_V.CLK
(* 477	*)	CAL	R_TRIG_POSUV_V()
(* 477	*)	LD 	R_TRIG_POSUV_V.Q
(* 125	*)	ST 	zapnout_posuv2
//N000
(* 870	*)	CAL	RS_04(S:=_Nod_Tmp_23, R1:=_Tmp_For_Back_Conn_2)
(* 503	*)	CAL	TON_01(IN:=RS_04.Q1, PT:=t#700ms)
(* 451	*)	LD 	_Nod_Tmp_21
(* 459	*)	AND 	TON_01.Q
(* 539	*)	ST 	R_TRIG_01.CLK
(* 539	*)	CAL	R_TRIG_01()
(* 422	*)	CAL	RS_NAJDI_PATRO(S:=R_TRIG_01.Q, R1:=RS_PATRO_NAJITO.Q1)
(* 422	*)	LD 	RS_NAJDI_PATRO.Q1
(* 906	*)	ST	_Nod_Tmp_1
//N006
(* 882	*)	ST	_Tmp_For_Back_Conn_2
//N000
(* 786	*)	CAL	TON_02(IN:=_Nod_Tmp_1, PT:=t#1s)
(* 786	*)	LD 	TON_02.Q
//N007
(* 832	*)	ST	_Tmp_For_Back_Conn_1

END_FUNCTION_BLOCK
