FUNCTION_BLOCK zakladacVemVyrobek
  VAR_INPUT
    VYHLEDAT : BOOL;
    RESET : BOOL;
  END_VAR
  VAR_OUTPUT
    MAM : BOOL;
    NEMAM : BOOL;
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
    CTU_HOR : CTU;
    RS_01 : RS;
    TON_01 : TON;
    RS_02 : RS;
    TON_02 : TON;
    RS_OUT_01 : RS;
    RS_OUT_02 : RS;
    RS_03 : RS;
    TON_03 : TON;
    TON_04 : TON;
    TON_05 : TON;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="cfc.xsl" version="1.1"?>
<fbd version="1.1" grid="8">
<block name="CTU" instance="CTU_HOR" id="1" height="8" width="5" line="58" order="19">
  <position x="77" y="8" />
  <inVariables>
    <variable name="CU" type="BOOL R_EDGE">
      <connection refid="43">
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
<outVariable name="pozice_horizontalni" type="INT" id="3" order="21">
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
<inVariable name="VYHLEDAT" type="BOOL" id="5">
  <position x="6" y="12" />
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
      <connection refid="37" name="OR">
        <position x="27" y="21" />
        <position x="22" y="21" />
        <position x="22" y="24" />
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
  <connection refid="41">
    <position x="21" y="19" />
    <position x="20" y="19" />
    <position x="20" y="15" />
    <position x="20" y="15" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="8" height="4" width="4" line="37" order="11">
  <position x="59" y="29" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="42">
        <position x="59" y="30" />
        <position x="57" y="30" />
        <position x="57" y="30" />
        <position x="55" y="30" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
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
<outVariable name="zapnout_posuv" type="BOOL" id="10" order="17">
  <position x="105" y="27" />
  <connection refid="49" name="Q">
    <position x="106" y="28" />
    <position x="105" y="28" />
    <position x="105" y="28" />
    <position x="104" y="28" />
  </connection>
</outVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="11" height="4" width="4" line="29" order="7">
  <position x="59" y="40" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="42">
        <position x="59" y="41" />
        <position x="55" y="41" />
        <position x="55" y="30" />
        <position x="55" y="30" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="12" height="6" width="3" line="56" order="18">
  <position x="65" y="12" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="29">
        <position x="65" y="13" />
        <position x="49" y="13" />
        <position x="49" y="25" />
        <position x="21" y="25" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="39">
        <position x="65" y="15" />
        <position x="61" y="15" />
        <position x="61" y="19" />
        <position x="80" y="19" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="16">
        <position x="65" y="17" />
        <position x="59" y="17" />
        <position x="59" y="24" />
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
<block name="SUB" instance="" function="true" hiddenPins="true" operator="true" id="13" height="4" width="4" line="60" order="20">
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
<outVariable name="posuvChapadlo_ver1" type="BOOL" id="15" order="8">
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
<block name="TON" instance="TON_01" id="17" height="6" width="6" line="32" order="9">
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
<outVariable name="toggleChapadla.S" type="BOOL" id="20" order="10">
  <position x="83" y="49" />
  <connection refid="26">
    <position x="84" y="50" />
    <position x="83" y="50" />
    <position x="83" y="50" />
    <position x="81" y="50" />
  </connection>
</outVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="21" height="4" width="3" line="49" order="15">
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
      <connection refid="35">
        <position x="86" y="32" />
        <position x="80" y="32" />
        <position x="80" y="54" />
        <position x="84" y="54" />
        <position x="84" y="53" />
        <position x="83" y="53" />
        <position x="83" y="57" />
        <position x="83" y="57" />
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
<block name="RS" instance="RS_02" id="22" height="6" width="5" line="25" order="6">
  <position x="38" y="31" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="44" name="AND">
        <position x="38" y="34" />
        <position x="34" y="34" />
        <position x="34" y="32" />
        <position x="32" y="32" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="38">
        <position x="38" y="36" />
        <position x="37" y="36" />
        <position x="37" y="68" />
        <position x="37" y="68" />
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
    <position x="43" y="34" />
  </connection>
</node>
<block name="TON" instance="TON_02" id="24" height="6" width="6" line="39" order="12">
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
<block name="RS" instance="RS_03" id="27" height="6" width="5" line="45" order="14">
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
      <connection refid="47" name="AND">
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
<node id="29">
  <position x="21" y="25" />
  <connection refid="7">
    <position x="21" y="25" />
    <position x="21" y="25" />
    <position x="21" y="19" />
    <position x="21" y="19" />
  </connection>
</node>
<outVariable name="MAM" type="BOOL" id="30" order="23">
  <position x="142" y="29" />
  <connection refid="32" name="Q1">
    <position x="143" y="30" />
    <position x="137" y="30" />
    <position x="137" y="25" />
    <position x="135" y="25" />
  </connection>
</outVariable>
<outVariable name="NEMAM" type="BOOL" id="31" order="25">
  <position x="142" y="33" />
  <connection refid="33" name="Q1">
    <position x="143" y="34" />
    <position x="137" y="34" />
    <position x="137" y="34" />
    <position x="135" y="34" />
  </connection>
</outVariable>
<block name="RS" instance="RS_OUT_01" id="32" height="6" width="5" line="62" order="22">
  <position x="130" y="22" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="35">
        <position x="130" y="25" />
        <position x="119" y="25" />
        <position x="119" y="57" />
        <position x="83" y="57" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="34">
        <position x="130" y="27" />
        <position x="121" y="27" />
        <position x="121" y="36" />
        <position x="121" y="36" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="RS" instance="RS_OUT_02" id="33" height="6" width="5" line="67" order="24">
  <position x="130" y="31" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="36">
        <position x="130" y="34" />
        <position x="92" y="34" />
        <position x="92" y="19" />
        <position x="92" y="19" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="34">
        <position x="130" y="36" />
        <position x="125" y="36" />
        <position x="125" y="36" />
        <position x="121" y="36" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="34">
  <position x="121" y="36" />
  <connection refid="29">
    <position x="121" y="36" />
    <position x="121" y="36" />
    <position x="121" y="78" />
    <position x="63" y="78" />
    <position x="63" y="70" />
    <position x="21" y="70" />
    <position x="21" y="25" />
    <position x="21" y="25" />
  </connection>
</node>
<node id="35">
  <position x="83" y="57" />
  <connection refid="27" name="Q1">
    <position x="83" y="57" />
    <position x="83" y="57" />
    <position x="83" y="71" />
    <position x="78" y="71" />
  </connection>
</node>
<node id="36">
  <position x="92" y="19" />
  <connection refid="1" name="Q">
    <position x="92" y="19" />
    <position x="105" y="19" />
    <position x="105" y="11" />
    <position x="82" y="11" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="37" height="4" width="3" line="11" order="2">
  <position x="15" y="23" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="39">
        <position x="15" y="24" />
        <position x="11" y="24" />
        <position x="11" y="28" />
        <position x="80" y="28" />
        <position x="80" y="19" />
        <position x="80" y="19" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="38">
        <position x="15" y="26" />
        <position x="9" y="26" />
        <position x="9" y="68" />
        <position x="37" y="68" />
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
<node id="38">
  <position x="37" y="68" />
  <connection refid="28">
    <position x="37" y="68" />
    <position x="37" y="68" />
    <position x="37" y="69" />
    <position x="67" y="69" />
    <position x="67" y="62" />
    <position x="67" y="62" />
  </connection>
</node>
<node id="39">
  <position x="80" y="19" />
  <connection refid="36">
    <position x="80" y="19" />
    <position x="86" y="19" />
    <position x="86" y="19" />
    <position x="92" y="19" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="40" height="6" width="4" line="16" order="4">
  <position x="42" y="10" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="45">
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
      <connection refid="41">
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
<node id="41">
  <position x="20" y="15" />
  <connection refid="5">
    <position x="20" y="15" />
    <position x="20" y="15" />
    <position x="20" y="13" />
    <position x="14" y="13" />
  </connection>
</node>
<node id="42">
  <position x="55" y="30" />
  <connection refid="43">
    <position x="55" y="30" />
    <position x="51" y="30" />
    <position x="51" y="11" />
    <position x="51" y="11" />
  </connection>
</node>
<node id="43">
  <position x="51" y="11" />
  <connection refid="40" name="AND">
    <position x="51" y="11" />
    <position x="48" y="11" />
    <position x="48" y="11" />
    <position x="46" y="11" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="44" height="4" width="4" line="19" order="5">
  <position x="28" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="45">
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
<node id="45">
  <position x="37" y="11" />
  <connection refid="4">
    <position x="37" y="11" />
    <position x="35" y="11" />
    <position x="35" y="11" />
    <position x="33" y="11" />
  </connection>
</node>
<inVariable name="RESET" type="BOOL" id="46">
  <position x="6" y="81" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="47" height="4" width="4" line="43" order="13">
  <position x="19" y="75" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT" negated="true">
      <connection refid="48">
        <position x="19" y="76" />
        <position x="16" y="76" />
        <position x="16" y="76" />
        <position x="12" y="76" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="46">
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
<inVariable name="VYHLEDAT" type="BOOL" id="48">
  <position x="4" y="75" />
</inVariable>
<block name="TON" instance="TON_05" id="49" height="6" width="6" line="51" order="16">
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
      <connection refid="50">
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
<inVariable name="t#500ms" type="TIME" id="50">
  <position x="82" y="36" />
</inVariable>
<inVariable name="VYHLEDAT" type="BOOL" id="113">
  <position x="5" y="4" />
</inVariable>
<outVariable name="RS_ENABLE_POS_HOR_1.S" type="BOOL" id="114" order="1">
  <position x="28" y="4" />
  <connection refid="113">
    <position x="29" y="5" />
    <position x="21" y="5" />
    <position x="21" y="5" />
    <position x="13" y="5" />
  </connection>
</outVariable>
</fbd>
{/NOCODE}
//LVD
VAR
(* 681	*)	_Tmp_For_Back_Conn_7	:	BOOL;
(* 178	*)	_Tmp_For_Back_Conn_6	:	BOOL;
(* 566	*)	_Tmp_For_Back_Conn_5	:	BOOL;
(* 606	*)	_Tmp_For_Back_Conn_4	:	BOOL;
(* 379	*)	_Tmp_For_Back_Conn_3	:	BOOL;
(* 595	*)	_Tmp_For_Back_Conn_2	:	BOOL;
(* 576	*)	_Tmp_For_Back_Conn_1	:	BOOL;
END_VAR

//TVD
VAR_TEMP
(* 708	*)	_Nod_Tmp_20	:	BOOL;
(* 650	*)	_Nod_Tmp_3	:	BOOL;
(* 668	*)	_Nod_Tmp_17	:	BOOL;
(* 593	*)	_Nod_Tmp_15	:	BOOL;
(* 366	*)	_Nod_Tmp_14	:	BOOL;
(* 245	*)	_Nod_Tmp_12	:	BOOL;
(* 411	*)	_Nod_Tmp_11	:	BOOL;
(* 308	*)	_Fun_Tmp_IN1_6_1	:	BOOL;
(* 445	*)	_Nod_Tmp_9	:	BOOL;
(* 544	*)	_Nod_Tmp_7	:	BOOL;
(* 553	*)	_Nod_Tmp_2	:	BOOL;
(* 604	*)	_Nod_Tmp_1	:	BOOL;
END_VAR

//NC
//N000
(* 786	*)	LD 	VYHLEDAT
(* 789	*)	ST 	RS_ENABLE_POS_HOR_1.S
//N001
(*  56	*)	LD 	pohybDokoncen_hor
(* 708	*)	ST	_Nod_Tmp_20
(*  59	*)	LD 	VYHLEDAT
(* 650	*)	ST	_Nod_Tmp_3
(* 566	*)	LD 	_Tmp_For_Back_Conn_5
(* 576	*)	OR 	_Tmp_For_Back_Conn_1
(*  62	*)	ST 	RS_01.R1
(*  62	*)	CAL	RS_01(S:=_Nod_Tmp_3)
(* 617	*)	LD 	_Nod_Tmp_20
(* 625	*)	AND 	RS_01.Q1
(* 633	*)	ANDN	_Nod_Tmp_3
(* 668	*)	ST	_Nod_Tmp_17
(* 681	*)	LD 	_Tmp_For_Back_Conn_7
(* 691	*)	AND 	materialJe
(* 341	*)	ST 	RS_02.S
//N008
(* 595	*)	LD	_Tmp_For_Back_Conn_2
//N001
(* 593	*)	ST	_Nod_Tmp_15
(* 341	*)	CAL	RS_02(R1:=_Nod_Tmp_15)
(* 341	*)	LD 	RS_02.Q1
(* 366	*)	ST	_Nod_Tmp_14
(* 141	*)	LD 	_Nod_Tmp_17
(* 149	*)	AND 	_Nod_Tmp_14
(* 245	*)	ST	_Nod_Tmp_12
(* 236	*)	ST 	posuvChapadlo_ver1
(* 254	*)	CAL	TON_01(IN:=_Nod_Tmp_12, PT:=t#2s)
(* 254	*)	LD 	TON_01.Q
(* 411	*)	ST	_Nod_Tmp_11
(* 299	*)	ST 	toggleChapadla.S
(* 100	*)	LD 	_Nod_Tmp_17
(* 108	*)	ANDN	_Nod_Tmp_14
(* 312	*)	ST 	_Fun_Tmp_IN1_6_1
(* 375	*)	CAL	TON_02(IN:=_Tmp_For_Back_Conn_3, PT:=t#1s)
(* 375	*)	LD 	TON_02.Q
(* 445	*)	ST	_Nod_Tmp_9
(* 724	*)	LDN	VYHLEDAT
(* 732	*)	AND 	RESET
(* 420	*)	ST 	RS_03.R1
(* 420	*)	CAL	RS_03(S:=_Nod_Tmp_9)
(* 420	*)	LD 	RS_03.Q1
(* 544	*)	ST	_Nod_Tmp_7
(* 312	*)	LD 	_Fun_Tmp_IN1_6_1
(* 320	*)	OR 	_Nod_Tmp_7
(* 752	*)	ST 	TON_05.IN
(* 752	*)	CAL	TON_05(PT:=t#500ms)
(* 752	*)	LD 	TON_05.Q
(* 128	*)	ST 	zapnout_posuv
(* 170	*)	LD 	_Nod_Tmp_3
(* 178	*)	OR 	_Tmp_For_Back_Conn_6
(* 186	*)	OR 	_Nod_Tmp_12
(*   4	*)	ST 	CTU_HOR.R
(*   4	*)	CAL	CTU_HOR(CU:=_Nod_Tmp_17, PV:=6)
(* 209	*)	LD 	5
(* 217	*)	SUB 	CTU_HOR.CV
(*  47	*)	ST 	pozice_horizontalni
(* 481	*)	CAL	RS_OUT_01(S:=_Nod_Tmp_7, R1:=_Nod_Tmp_3)
(* 481	*)	LD 	RS_OUT_01.Q1
(* 463	*)	ST 	MAM
(*   4	*)	LD 	CTU_HOR.Q
(* 553	*)	ST	_Nod_Tmp_2
(* 506	*)	CAL	RS_OUT_02(S:=_Nod_Tmp_2, R1:=_Nod_Tmp_3)
(* 506	*)	LD 	RS_OUT_02.Q1
(* 472	*)	ST 	NEMAM
(* 708	*)	LD	_Nod_Tmp_20
//N002
(* 681	*)	ST	_Tmp_For_Back_Conn_7
//N006
(* 606	*)	LD	_Tmp_For_Back_Conn_4
//N005
(* 604	*)	ST	_Nod_Tmp_1
//N003
(* 178	*)	ST	_Tmp_For_Back_Conn_6
//N005
(* 604	*)	LD	_Nod_Tmp_1
//N004
(* 566	*)	ST	_Tmp_For_Back_Conn_5
//N001
(* 553	*)	LD	_Nod_Tmp_2
//N006
(* 606	*)	ST	_Tmp_For_Back_Conn_4
//N001
(* 411	*)	LD	_Nod_Tmp_11
//N007
(* 379	*)	ST	_Tmp_For_Back_Conn_3
//N001
(* 445	*)	LD	_Nod_Tmp_9
//N008
(* 595	*)	ST	_Tmp_For_Back_Conn_2
//N001
(* 593	*)	LD	_Nod_Tmp_15
//N009
(* 576	*)	ST	_Tmp_For_Back_Conn_1

END_FUNCTION_BLOCK
