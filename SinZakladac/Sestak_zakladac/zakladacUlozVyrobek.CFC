FUNCTION_BLOCK zakladacUlozVyrobek
  VAR_INPUT
    RESET : BOOL;
    ULOZIT : BOOL;
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    CTU_HOR : CTU;
    RS_01 : RS;
    TON_01 : TON;
    RS_02 : RS;
    TON_02 : TON;
    RS_03 : RS;
    TON_05 : TON;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="cfc.xsl" version="1.1"?>
<fbd version="1.1" grid="8">
<block name="CTU" instance="CTU_HOR" id="1" height="8" width="5" line="62" order="21">
  <position x="77" y="8" />
  <inVariables>
    <variable name="CU" type="BOOL R_EDGE">
      <connection refid="34">
        <position x="77" y="11" />
        <position x="60" y="11" />
        <position x="60" y="11" />
        <position x="51" y="11" />
      </connection>
    <comment>up</comment>
    </variable>
    <variable name="R" type="BOOL">
      <connection refid="12" name="OR">
        <position x="77" y="13" />
        <position x="71" y="13" />
        <position x="71" y="13" />
        <position x="68" y="13" />
      </connection>
    <comment>reset</comment>
    </variable>
    <variable name="PV" type="INT">
      <connection refid="2">
        <position x="77" y="15" />
        <position x="75" y="15" />
        <position x="75" y="15" />
        <position x="72" y="15" />
      </connection>
    <comment>preset</comment>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    <comment>output</comment>
    </variable>
    <variable name="CV" type="INT">
    <comment>value</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="6" type="" id="2">
  <position x="70" y="14" />
</inVariable>
<outVariable name="pozice_horizontalni_2" type="INT" id="3" order="23">
  <position x="107" y="12" />
  <connection refid="13" name="SUB">
    <position x="108" y="13" />
    <position x="100" y="13" />
    <position x="100" y="13" />
    <position x="96" y="13" />
  </connection>
</outVariable>
<inVariable name="pohybDokoncen_hor" type="BOOL" id="4">
  <position x="18" y="10" />
</inVariable>
<inVariable name="ULOZIT" type="BOOL" id="5">
  <position x="8" y="12" />
</inVariable>
<block name="RS" instance="RS_01" id="6" height="6" width="5" line="13" order="3">
  <position x="27" y="16" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="7">
        <position x="27" y="19" />
        <position x="24" y="19" />
        <position x="24" y="19" />
        <position x="21" y="19" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="29" name="OR">
        <position x="27" y="21" />
        <position x="24" y="21" />
        <position x="24" y="24" />
        <position x="18" y="24" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="7">
  <position x="21" y="19" />
  <connection refid="32">
    <position x="21" y="19" />
    <position x="20" y="19" />
    <position x="20" y="15" />
    <position x="20" y="15" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="8" height="4" width="4" line="43" order="13">
  <position x="59" y="29" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="33">
        <position x="59" y="30" />
        <position x="57" y="30" />
        <position x="57" y="30" />
        <position x="55" y="30" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="23">
        <position x="59" y="32" />
        <position x="56" y="32" />
        <position x="56" y="34" />
        <position x="53" y="34" />
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
<inVariable name="materialJe" type="BOOL" id="9">
  <position x="11" y="31" />
</inVariable>
<outVariable name="zapnout_posuv_3" type="BOOL" id="10" order="19">
  <position x="105" y="27" />
  <connection refid="39" name="Q">
    <position x="106" y="28" />
    <position x="105" y="28" />
    <position x="105" y="28" />
    <position x="104" y="28" />
  </connection>
</outVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="11" height="4" width="4" line="35" order="9">
  <position x="59" y="40" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="33">
        <position x="59" y="41" />
        <position x="55" y="41" />
        <position x="55" y="30" />
        <position x="55" y="30" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="23">
        <position x="59" y="43" />
        <position x="53" y="43" />
        <position x="53" y="34" />
        <position x="53" y="34" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="12" height="6" width="3" line="60" order="20">
  <position x="65" y="12" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="7">
        <position x="65" y="13" />
        <position x="49" y="13" />
        <position x="49" y="25" />
        <position x="21" y="25" />
        <position x="21" y="19" />
        <position x="21" y="19" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="30">
        <position x="65" y="15" />
        <position x="61" y="15" />
        <position x="61" y="19" />
        <position x="80" y="19" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="16">
        <position x="65" y="17" />
        <position x="60" y="17" />
        <position x="60" y="24" />
        <position x="65" y="24" />
        <position x="65" y="41" />
        <position x="65" y="41" />
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
<block name="SUB" instance="" function="true" hiddenPins="true" operator="true" id="13" height="4" width="4" line="64" order="22">
  <position x="92" y="12" />
  <inVariables>
    <variable name="IN1" type="ANY_NUM">
      <connection refid="14">
        <position x="92" y="13" />
        <position x="90" y="13" />
        <position x="90" y="9" />
        <position x="88" y="9" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_NUM">
      <connection refid="1" name="CV">
        <position x="92" y="15" />
        <position x="87" y="15" />
        <position x="87" y="13" />
        <position x="82" y="13" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="SUB" type="ANY_NUM">
    <comment>Subtraction
	returns IN1 minus IN2
</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="5" type="" id="14">
  <position x="86" y="8" />
</inVariable>
<outVariable name="posuvChapadlo_ver3" type="BOOL" id="15" order="10">
  <position x="82" y="40" />
  <connection refid="18">
    <position x="83" y="41" />
    <position x="70" y="41" />
    <position x="70" y="41" />
    <position x="66" y="41" />
  </connection>
</outVariable>
<node id="16">
  <position x="65" y="41" />
  <connection refid="11" name="AND">
    <position x="65" y="41" />
    <position x="64" y="41" />
    <position x="64" y="41" />
    <position x="63" y="41" />
  </connection>
</node>
<block name="TON" instance="TON_01" id="17" height="6" width="6" line="38" order="11">
  <position x="70" y="47" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="18">
        <position x="70" y="50" />
        <position x="66" y="50" />
        <position x="66" y="41" />
        <position x="66" y="41" />
      </connection>
    <comment>input</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="19">
        <position x="70" y="52" />
        <position x="69" y="52" />
        <position x="69" y="52" />
        <position x="66" y="52" />
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
<node id="18">
  <position x="66" y="41" />
  <connection refid="16">
    <position x="66" y="41" />
    <position x="65" y="41" />
    <position x="65" y="41" />
    <position x="66" y="41" />
    <position x="66" y="41" />
    <position x="65" y="41" />
  </connection>
</node>
<inVariable name="t#2s" type="TIME" id="19">
  <position x="62" y="51" />
</inVariable>
<outVariable name="toggleChapadla.R1" type="BOOL" id="20" order="12">
  <position x="83" y="49" />
  <connection refid="26">
    <position x="84" y="50" />
    <position x="83" y="50" />
    <position x="83" y="50" />
    <position x="81" y="50" />
  </connection>
</outVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="21" height="4" width="3" line="53" order="17">
  <position x="86" y="29" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="8" name="AND">
        <position x="86" y="30" />
        <position x="74" y="30" />
        <position x="74" y="30" />
        <position x="63" y="30" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="27" name="Q1">
        <position x="86" y="32" />
        <position x="80" y="32" />
        <position x="80" y="54" />
        <position x="84" y="54" />
        <position x="84" y="53" />
        <position x="83" y="53" />
        <position x="83" y="71" />
        <position x="78" y="71" />
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
<block name="RS" instance="RS_02" id="22" height="6" width="5" line="31" order="8">
  <position x="42" y="31" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="48" name="AND">
        <position x="42" y="34" />
        <position x="34" y="34" />
        <position x="34" y="32" />
        <position x="32" y="32" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="46" name="OR">
        <position x="42" y="36" />
        <position x="35" y="36" />
        <position x="35" y="43" />
        <position x="34" y="43" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="23">
  <position x="53" y="34" />
  <connection refid="22" name="Q1">
    <position x="53" y="34" />
    <position x="48" y="34" />
    <position x="48" y="34" />
    <position x="47" y="34" />
  </connection>
</node>
<block name="TON" instance="TON_02" id="24" height="6" width="6" line="45" order="14">
  <position x="53" y="59" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="26">
        <position x="53" y="62" />
        <position x="52" y="62" />
        <position x="52" y="56" />
        <position x="81" y="56" />
        <position x="81" y="50" />
        <position x="81" y="50" />
      </connection>
    <comment>input</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="25">
        <position x="53" y="64" />
        <position x="51" y="64" />
        <position x="51" y="64" />
        <position x="47" y="64" />
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
<inVariable name="t#1s" type="TIME" id="25">
  <position x="43" y="63" />
</inVariable>
<node id="26">
  <position x="81" y="50" />
  <connection refid="17" name="Q">
    <position x="81" y="50" />
    <position x="80" y="50" />
    <position x="80" y="50" />
    <position x="76" y="50" />
  </connection>
</node>
<block name="RS" instance="RS_03" id="27" height="6" width="5" line="51" order="16">
  <position x="73" y="68" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="28">
        <position x="73" y="71" />
        <position x="69" y="71" />
        <position x="69" y="62" />
        <position x="67" y="62" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="37" name="AND">
        <position x="73" y="73" />
        <position x="39" y="73" />
        <position x="39" y="76" />
        <position x="23" y="76" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="28">
  <position x="67" y="62" />
  <connection refid="24" name="Q">
    <position x="67" y="62" />
    <position x="63" y="62" />
    <position x="63" y="62" />
    <position x="59" y="62" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="29" height="4" width="3" line="11" order="2">
  <position x="15" y="23" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="30">
        <position x="15" y="24" />
        <position x="11" y="24" />
        <position x="11" y="28" />
        <position x="80" y="28" />
        <position x="80" y="19" />
        <position x="80" y="19" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="47">
        <position x="15" y="26" />
        <position x="9" y="26" />
        <position x="9" y="68" />
        <position x="28" y="68" />
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
<node id="30">
  <position x="80" y="19" />
  <connection refid="1" name="Q">
    <position x="80" y="19" />
    <position x="105" y="19" />
    <position x="105" y="11" />
    <position x="82" y="11" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="31" height="6" width="4" line="16" order="4">
  <position x="42" y="10" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="35">
        <position x="42" y="11" />
        <position x="38" y="11" />
        <position x="38" y="11" />
        <position x="37" y="11" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="6" name="Q1">
        <position x="42" y="13" />
        <position x="35" y="13" />
        <position x="35" y="19" />
        <position x="32" y="19" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT" negated="true">
      <connection refid="32">
        <position x="42" y="15" />
        <position x="30" y="15" />
        <position x="30" y="15" />
        <position x="20" y="15" />
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
<node id="32">
  <position x="20" y="15" />
  <connection refid="5">
    <position x="20" y="15" />
    <position x="20" y="15" />
    <position x="20" y="13" />
    <position x="14" y="13" />
  </connection>
</node>
<node id="33">
  <position x="55" y="30" />
  <connection refid="34">
    <position x="55" y="30" />
    <position x="51" y="30" />
    <position x="51" y="11" />
    <position x="51" y="11" />
  </connection>
</node>
<node id="34">
  <position x="51" y="11" />
  <connection refid="31" name="AND">
    <position x="51" y="11" />
    <position x="48" y="11" />
    <position x="48" y="11" />
    <position x="46" y="11" />
  </connection>
</node>
<node id="35">
  <position x="37" y="11" />
  <connection refid="4">
    <position x="37" y="11" />
    <position x="35" y="11" />
    <position x="35" y="11" />
    <position x="33" y="11" />
  </connection>
</node>
<inVariable name="RESET" type="BOOL" id="36">
  <position x="6" y="81" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="37" height="4" width="4" line="49" order="15">
  <position x="19" y="75" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT" negated="true">
      <connection refid="38">
        <position x="19" y="76" />
        <position x="16" y="76" />
        <position x="16" y="76" />
        <position x="12" y="76" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="36">
        <position x="19" y="78" />
        <position x="15" y="78" />
        <position x="15" y="82" />
        <position x="11" y="82" />
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
<inVariable name="ULOZIT" type="BOOL" id="38">
  <position x="6" y="75" />
</inVariable>
<block name="TON" instance="TON_05" id="39" height="6" width="6" line="55" order="18">
  <position x="98" y="25" />
  <inVariables>
    <variable name="IN" type="BOOL">
      <connection refid="21" name="OR">
        <position x="98" y="28" />
        <position x="94" y="28" />
        <position x="94" y="30" />
        <position x="89" y="30" />
      </connection>
    <comment>input</comment>
    </variable>
    <variable name="PT" type="TIME">
      <connection refid="40">
        <position x="98" y="30" />
        <position x="95" y="30" />
        <position x="95" y="37" />
        <position x="89" y="37" />
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
<inVariable name="t#1s" type="TIME" id="40">
  <position x="85" y="36" />
</inVariable>
<inVariable name="ULOZIT" type="BOOL" id="41">
  <position x="4" y="3" />
</inVariable>
<outVariable name="RS_ENABLE_POS_HOR_1.R1" type="BOOL" id="42" order="1">
  <position x="25" y="3" />
  <connection refid="41">
    <position x="26" y="4" />
    <position x="18" y="4" />
    <position x="18" y="4" />
    <position x="10" y="4" />
  </connection>
</outVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="43" height="4" width="3" line="22" order="6">
  <position x="20" y="36" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="45">
        <position x="20" y="37" />
        <position x="19" y="37" />
        <position x="19" y="37" />
        <position x="17" y="37" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="44">
        <position x="20" y="39" />
        <position x="19" y="39" />
        <position x="19" y="39" />
        <position x="16" y="39" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="EQ" type="BOOL">
    <comment>Equality
  returns true if IN1 = IN2
</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="5" type="" id="44">
  <position x="14" y="38" />
</inVariable>
<inVariable name="pozice_horizontalni_2" type="INT" id="45">
  <position x="0" y="36" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="46" height="4" width="3" line="29" order="7">
  <position x="31" y="42" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="43" name="EQ">
        <position x="31" y="43" />
        <position x="26" y="43" />
        <position x="26" y="37" />
        <position x="23" y="37" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="47">
        <position x="31" y="45" />
        <position x="28" y="45" />
        <position x="28" y="68" />
        <position x="28" y="68" />
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
<node id="47">
  <position x="28" y="68" />
  <connection refid="28">
    <position x="28" y="68" />
    <position x="37" y="68" />
    <position x="37" y="69" />
    <position x="67" y="69" />
    <position x="67" y="62" />
    <position x="67" y="62" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="48" height="4" width="4" line="19" order="5">
  <position x="28" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="35">
        <position x="28" y="32" />
        <position x="25" y="32" />
        <position x="25" y="30" />
        <position x="37" y="30" />
        <position x="37" y="11" />
        <position x="37" y="11" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="9">
        <position x="28" y="34" />
        <position x="23" y="34" />
        <position x="23" y="32" />
        <position x="19" y="32" />
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
</fbd>
{/NOCODE}
//LVD
VAR
(* 728	*)	_Tmp_For_Back_Conn_7	:	BOOL;
(* 489	*)	_Tmp_For_Back_Conn_6	:	BOOL;
(* 180	*)	_Tmp_For_Back_Conn_5	:	BOOL;
(* 460	*)	_Tmp_For_Back_Conn_4	:	BOOL;
(* 381	*)	_Tmp_For_Back_Conn_3	:	BOOL;
(* 715	*)	_Tmp_For_Back_Conn_2	:	BOOL;
(* 470	*)	_Tmp_For_Back_Conn_1	:	BOOL;
END_VAR

//TVD
VAR_TEMP
(* 560	*)	_Nod_Tmp_20	:	BOOL;
(* 533	*)	_Nod_Tmp_19	:	BOOL;
(* 551	*)	_Nod_Tmp_16	:	BOOL;
(* 684	*)	_Fun_Tmp_IN1_12_1	:	BOOL;
(* 713	*)	_Nod_Tmp_13	:	BOOL;
(* 368	*)	_Nod_Tmp_11	:	BOOL;
(* 247	*)	_Nod_Tmp_9	:	BOOL;
(* 413	*)	_Nod_Tmp_8	:	BOOL;
(* 310	*)	_Fun_Tmp_IN1_4_1	:	BOOL;
(* 447	*)	_Nod_Tmp_6	:	BOOL;
(* 487	*)	_Nod_Tmp_1	:	BOOL;
END_VAR

//NC
//N000
(* 638	*)	LD 	ULOZIT
(* 641	*)	ST 	RS_ENABLE_POS_HOR_1.R1
//N001
(*  56	*)	LD 	pohybDokoncen_hor
(* 560	*)	ST	_Nod_Tmp_20
(*  59	*)	LD 	ULOZIT
(* 533	*)	ST	_Nod_Tmp_19
(* 460	*)	LD 	_Tmp_For_Back_Conn_4
(* 470	*)	OR 	_Tmp_For_Back_Conn_1
(*  62	*)	ST 	RS_01.R1
(*  62	*)	CAL	RS_01(S:=_Nod_Tmp_19)
(* 500	*)	LD 	_Nod_Tmp_20
(* 508	*)	AND 	RS_01.Q1
(* 516	*)	ANDN	_Nod_Tmp_19
(* 551	*)	ST	_Nod_Tmp_16
(* 728	*)	LD 	_Tmp_For_Back_Conn_7
(* 738	*)	AND 	materialJe
(* 343	*)	ST 	RS_02.S
(* 654	*)	LD 	pozice_horizontalni_2
(* 662	*)	EQ 	5
(* 688	*)	ST 	_Fun_Tmp_IN1_12_1
//N008
(* 715	*)	LD	_Tmp_For_Back_Conn_2
//N001
(* 713	*)	ST	_Nod_Tmp_13
(* 688	*)	LD 	_Fun_Tmp_IN1_12_1
(* 696	*)	OR 	_Nod_Tmp_13
(* 343	*)	ST 	RS_02.R1
(* 343	*)	CAL	RS_02()
(* 343	*)	LD 	RS_02.Q1
(* 368	*)	ST	_Nod_Tmp_11
(* 141	*)	LD 	_Nod_Tmp_16
(* 149	*)	ANDN	_Nod_Tmp_11
(* 247	*)	ST	_Nod_Tmp_9
(* 238	*)	ST 	posuvChapadlo_ver3
(* 256	*)	CAL	TON_01(IN:=_Nod_Tmp_9, PT:=t#2s)
(* 256	*)	LD 	TON_01.Q
(* 413	*)	ST	_Nod_Tmp_8
(* 301	*)	ST 	toggleChapadla.R1
(* 100	*)	LD 	_Nod_Tmp_16
(* 108	*)	AND 	_Nod_Tmp_11
(* 314	*)	ST 	_Fun_Tmp_IN1_4_1
(* 377	*)	CAL	TON_02(IN:=_Tmp_For_Back_Conn_3, PT:=t#1s)
(* 377	*)	LD 	TON_02.Q
(* 447	*)	ST	_Nod_Tmp_6
(* 576	*)	LDN	ULOZIT
(* 584	*)	AND 	RESET
(* 422	*)	ST 	RS_03.R1
(* 422	*)	CAL	RS_03(S:=_Nod_Tmp_6)
(* 314	*)	LD 	_Fun_Tmp_IN1_4_1
(* 322	*)	OR 	RS_03.Q1
(* 604	*)	ST 	TON_05.IN
(* 604	*)	CAL	TON_05(PT:=t#1s)
(* 604	*)	LD 	TON_05.Q
(* 128	*)	ST 	zapnout_posuv_3
(* 170	*)	LD 	_Nod_Tmp_19
(* 180	*)	OR 	_Tmp_For_Back_Conn_5
(* 188	*)	OR 	_Nod_Tmp_9
(*   4	*)	ST 	CTU_HOR.R
(*   4	*)	CAL	CTU_HOR(CU:=_Nod_Tmp_16, PV:=6)
(* 211	*)	LD 	5
(* 219	*)	SUB 	CTU_HOR.CV
(*  47	*)	ST 	pozice_horizontalni_2
(* 560	*)	LD	_Nod_Tmp_20
//N002
(* 728	*)	ST	_Tmp_For_Back_Conn_7
//N001
(*   4	*)	LD 	CTU_HOR.Q
//N003
(* 489	*)	ST	_Tmp_For_Back_Conn_6
(* 489	*)	LD	_Tmp_For_Back_Conn_6
//N006
(* 487	*)	ST	_Nod_Tmp_1
//N004
(* 180	*)	ST	_Tmp_For_Back_Conn_5
//N006
(* 487	*)	LD	_Nod_Tmp_1
//N005
(* 460	*)	ST	_Tmp_For_Back_Conn_4
//N001
(* 413	*)	LD	_Nod_Tmp_8
//N007
(* 381	*)	ST	_Tmp_For_Back_Conn_3
//N001
(* 447	*)	LD	_Nod_Tmp_6
//N008
(* 715	*)	ST	_Tmp_For_Back_Conn_2
//N001
(* 713	*)	LD	_Nod_Tmp_13
//N009
(* 470	*)	ST	_Tmp_For_Back_Conn_1

END_FUNCTION_BLOCK
