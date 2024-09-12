PROGRAM prgZakladacNew
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    START : BOOL;
    INT_TO_BITS : fourBitEncoder;
    INT_TO_BITS_HOR : fourBitEncoder;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="cfc.xsl" version="1.1"?>
<fbd version="1.1" grid="8">
<inVariable name="START" type="BOOL" id="11">
  <position x="19" y="8" />
</inVariable>
<block name="MAX" instance="" function="true" extensible="true" hiddenPins="true" inline="true" id="12" height="6" width="4" line="5" order="1">
  <position x="23" y="52" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="157">
        <position x="23" y="53" />
        <position x="22" y="53" />
        <position x="22" y="53" />
        <position x="21" y="53" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
    </variable>
    <variable name="IN3" type="ANY">
    </variable>
  </inVariables>
  <outVariables>
    <variable name="MAX" type="ANY">
    <comment>
	Maximum
	returns maximum value of all inputs
</comment>
    </variable>
  </outVariables>
</block>
<block name="fourBitEncoder" instance="INT_TO_BITS" id="13" height="10" width="11" line="7" order="2">
  <position x="34" y="50" />
  <inVariables>
    <variable name="INPUT" type="INT">
      <connection refid="12" name="MAX">
        <position x="34" y="53" />
        <position x="29" y="53" />
        <position x="29" y="53" />
        <position x="27" y="53" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="BIT0" type="BOOL">
    </variable>
    <variable name="BIT1" type="BOOL">
    </variable>
    <variable name="BIT2" type="BOOL">
    </variable>
    <variable name="BIT3" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="MAX" instance="" function="true" extensible="true" hiddenPins="true" inline="true" id="14" height="6" width="4" line="54" order="19">
  <position x="24" y="85" />
  <inVariables>
    <variable name="IN1" type="ANY">
    </variable>
    <variable name="IN2" type="ANY">
    </variable>
    <variable name="IN3" type="ANY">
    </variable>
  </inVariables>
  <outVariables>
    <variable name="MAX" type="ANY">
    <comment>Maximum
	returns maximum value of all inputs
</comment>
    </variable>
  </outVariables>
</block>
<block name="fourBitEncoder" instance="INT_TO_BITS_HOR" id="15" height="10" width="11" line="56" order="20">
  <position x="35" y="83" />
  <inVariables>
    <variable name="INPUT" type="INT">
      <connection refid="14" name="MAX">
        <position x="35" y="86" />
        <position x="30" y="86" />
        <position x="30" y="86" />
        <position x="28" y="86" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="BIT0" type="BOOL">
    </variable>
    <variable name="BIT1" type="BOOL">
    </variable>
    <variable name="BIT2" type="BOOL">
    </variable>
    <variable name="BIT3" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="SAVE_NEW_POS" type="BOOL" id="16">
  <position x="17" y="41" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="17" height="4" width="4" line="11" order="3">
  <position x="66" y="38" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="19">
        <position x="66" y="39" />
        <position x="58" y="39" />
        <position x="58" y="42" />
        <position x="58" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="35">
        <position x="66" y="41" />
        <position x="63" y="41" />
        <position x="63" y="46" />
        <position x="63" y="46" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="18" height="4" width="4" line="14" order="4">
  <position x="66" y="43" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="19">
        <position x="66" y="44" />
        <position x="61" y="44" />
        <position x="61" y="42" />
        <position x="58" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="35">
        <position x="66" y="46" />
        <position x="64" y="46" />
        <position x="64" y="46" />
        <position x="63" y="46" />
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
<node id="19">
  <position x="58" y="42" />
  <connection refid="53">
    <position x="58" y="42" />
    <position x="55" y="42" />
    <position x="55" y="42" />
    <position x="53" y="42" />
  </connection>
</node>
<block name="RS" instance="SAVED_POS_VER_0" id="20" height="6" width="5" line="16" order="5">
  <position x="75" y="40" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="17" name="AND">
        <position x="75" y="43" />
        <position x="71" y="43" />
        <position x="71" y="39" />
        <position x="70" y="39" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="18" name="AND">
        <position x="75" y="45" />
        <position x="72" y="45" />
        <position x="72" y="44" />
        <position x="70" y="44" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="poziceMotoru_ver_0" type="BOOL" id="30" order="6">
  <position x="82" y="42" />
  <connection refid="20" name="Q1">
    <position x="83" y="43" />
    <position x="81" y="43" />
    <position x="81" y="43" />
    <position x="80" y="43" />
  </connection>
</outVariable>
<node id="35">
  <position x="63" y="46" />
  <connection refid="13" name="BIT0">
    <position x="63" y="46" />
    <position x="63" y="46" />
    <position x="63" y="53" />
    <position x="45" y="53" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="37" height="4" width="4" line="22" order="7">
  <position x="104" y="35" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="39">
        <position x="104" y="36" />
        <position x="96" y="36" />
        <position x="96" y="37" />
        <position x="96" y="37" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="42">
        <position x="104" y="38" />
        <position x="101" y="38" />
        <position x="101" y="43" />
        <position x="101" y="43" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="38" height="4" width="4" line="25" order="8">
  <position x="104" y="40" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="39">
        <position x="104" y="41" />
        <position x="99" y="41" />
        <position x="99" y="37" />
        <position x="96" y="37" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="42">
        <position x="104" y="43" />
        <position x="102" y="43" />
        <position x="102" y="43" />
        <position x="101" y="43" />
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
<node id="39">
  <position x="96" y="37" />
  <connection refid="88">
    <position x="96" y="37" />
    <position x="94" y="37" />
    <position x="94" y="37" />
    <position x="92" y="37" />
  </connection>
</node>
<block name="RS" instance="SAVED_POS_VER_1" id="40" height="6" width="5" line="27" order="9">
  <position x="113" y="37" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="37" name="AND">
        <position x="113" y="40" />
        <position x="109" y="40" />
        <position x="109" y="36" />
        <position x="108" y="36" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="38" name="AND">
        <position x="113" y="42" />
        <position x="110" y="42" />
        <position x="110" y="41" />
        <position x="108" y="41" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="poziceMotoru_ver_1" type="BOOL" id="41" order="10">
  <position x="120" y="39" />
  <connection refid="40" name="Q1">
    <position x="121" y="40" />
    <position x="119" y="40" />
    <position x="119" y="40" />
    <position x="118" y="40" />
  </connection>
</outVariable>
<node id="42">
  <position x="101" y="43" />
  <connection refid="13" name="BIT1">
    <position x="101" y="43" />
    <position x="101" y="43" />
    <position x="101" y="55" />
    <position x="45" y="55" />
  </connection>
</node>
<node id="53">
  <position x="53" y="42" />
  <connection refid="16">
    <position x="53" y="42" />
    <position x="33" y="42" />
    <position x="33" y="42" />
    <position x="29" y="42" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="55" height="4" width="4" line="33" order="11">
  <position x="165" y="38" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="57">
        <position x="165" y="39" />
        <position x="157" y="39" />
        <position x="157" y="42" />
        <position x="157" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="60">
        <position x="165" y="41" />
        <position x="162" y="41" />
        <position x="162" y="46" />
        <position x="162" y="46" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="56" height="4" width="4" line="36" order="12">
  <position x="165" y="43" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="57">
        <position x="165" y="44" />
        <position x="160" y="44" />
        <position x="160" y="42" />
        <position x="157" y="42" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="60">
        <position x="165" y="46" />
        <position x="163" y="46" />
        <position x="163" y="46" />
        <position x="162" y="46" />
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
<node id="57">
  <position x="157" y="42" />
  <connection refid="67">
    <position x="157" y="42" />
    <position x="154" y="42" />
    <position x="154" y="46" />
    <position x="152" y="46" />
  </connection>
</node>
<block name="RS" instance="SAVED_POS_VER_2" id="58" height="6" width="5" line="38" order="13">
  <position x="174" y="40" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="55" name="AND">
        <position x="174" y="43" />
        <position x="170" y="43" />
        <position x="170" y="39" />
        <position x="169" y="39" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="56" name="AND">
        <position x="174" y="45" />
        <position x="171" y="45" />
        <position x="171" y="44" />
        <position x="169" y="44" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="poziceMotoru_ver_2" type="BOOL" id="59" order="14">
  <position x="181" y="42" />
  <connection refid="58" name="Q1">
    <position x="182" y="43" />
    <position x="180" y="43" />
    <position x="180" y="43" />
    <position x="179" y="43" />
  </connection>
</outVariable>
<node id="60">
  <position x="162" y="46" />
  <connection refid="13" name="BIT2">
    <position x="162" y="46" />
    <position x="162" y="46" />
    <position x="162" y="57" />
    <position x="45" y="57" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="61" height="4" width="4" line="44" order="15">
  <position x="203" y="35" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="63">
        <position x="203" y="36" />
        <position x="195" y="36" />
        <position x="195" y="37" />
        <position x="195" y="37" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="66">
        <position x="203" y="38" />
        <position x="200" y="38" />
        <position x="200" y="43" />
        <position x="200" y="43" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="62" height="4" width="4" line="47" order="16">
  <position x="203" y="40" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="63">
        <position x="203" y="41" />
        <position x="198" y="41" />
        <position x="198" y="37" />
        <position x="195" y="37" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="66">
        <position x="203" y="43" />
        <position x="201" y="43" />
        <position x="201" y="43" />
        <position x="200" y="43" />
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
<node id="63">
  <position x="195" y="37" />
  <connection refid="67">
    <position x="195" y="37" />
    <position x="152" y="37" />
    <position x="152" y="46" />
    <position x="152" y="46" />
  </connection>
</node>
<block name="RS" instance="SAVED_POS_VER_3" id="64" height="6" width="5" line="49" order="17">
  <position x="212" y="37" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="61" name="AND">
        <position x="212" y="40" />
        <position x="208" y="40" />
        <position x="208" y="36" />
        <position x="207" y="36" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="62" name="AND">
        <position x="212" y="42" />
        <position x="209" y="42" />
        <position x="209" y="41" />
        <position x="207" y="41" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="poziceMotoru_ver_3" type="BOOL" id="65" order="18">
  <position x="219" y="39" />
  <connection refid="64" name="Q1">
    <position x="220" y="40" />
    <position x="218" y="40" />
    <position x="218" y="40" />
    <position x="217" y="40" />
  </connection>
</outVariable>
<node id="66">
  <position x="200" y="43" />
  <connection refid="13" name="BIT3">
    <position x="200" y="43" />
    <position x="200" y="43" />
    <position x="200" y="59" />
    <position x="45" y="59" />
  </connection>
</node>
<node id="67">
  <position x="152" y="46" />
  <connection refid="88">
    <position x="152" y="46" />
    <position x="92" y="46" />
    <position x="92" y="37" />
    <position x="92" y="37" />
  </connection>
</node>
<node id="88">
  <position x="92" y="37" />
  <connection refid="53">
    <position x="92" y="37" />
    <position x="53" y="37" />
    <position x="53" y="42" />
    <position x="53" y="42" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="91" height="4" width="4" line="60" order="21">
  <position x="67" y="71" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="93">
        <position x="67" y="72" />
        <position x="59" y="72" />
        <position x="59" y="75" />
        <position x="59" y="75" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="96">
        <position x="67" y="74" />
        <position x="64" y="74" />
        <position x="64" y="79" />
        <position x="64" y="79" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="92" height="4" width="4" line="63" order="22">
  <position x="67" y="76" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="93">
        <position x="67" y="77" />
        <position x="62" y="77" />
        <position x="62" y="75" />
        <position x="59" y="75" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="96">
        <position x="67" y="79" />
        <position x="65" y="79" />
        <position x="65" y="79" />
        <position x="64" y="79" />
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
<node id="93">
  <position x="59" y="75" />
  <connection refid="103">
    <position x="59" y="75" />
    <position x="56" y="75" />
    <position x="56" y="75" />
    <position x="54" y="75" />
  </connection>
</node>
<block name="RS" instance="SAVED_POS_HOR_0" id="94" height="6" width="5" line="65" order="23">
  <position x="76" y="73" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="91" name="AND">
        <position x="76" y="76" />
        <position x="72" y="76" />
        <position x="72" y="72" />
        <position x="71" y="72" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="92" name="AND">
        <position x="76" y="78" />
        <position x="73" y="78" />
        <position x="73" y="77" />
        <position x="71" y="77" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="poziceMotoru_hor_0" type="BOOL" id="95" order="24">
  <position x="83" y="75" />
  <connection refid="94" name="Q1">
    <position x="84" y="76" />
    <position x="82" y="76" />
    <position x="82" y="76" />
    <position x="81" y="76" />
  </connection>
</outVariable>
<node id="96">
  <position x="64" y="79" />
  <connection refid="15" name="BIT0">
    <position x="64" y="79" />
    <position x="64" y="79" />
    <position x="64" y="86" />
    <position x="46" y="86" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="97" height="4" width="4" line="71" order="25">
  <position x="105" y="68" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="99">
        <position x="105" y="69" />
        <position x="97" y="69" />
        <position x="97" y="70" />
        <position x="97" y="70" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="102">
        <position x="105" y="71" />
        <position x="102" y="71" />
        <position x="102" y="76" />
        <position x="102" y="76" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="98" height="4" width="4" line="74" order="26">
  <position x="105" y="73" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="99">
        <position x="105" y="74" />
        <position x="100" y="74" />
        <position x="100" y="70" />
        <position x="97" y="70" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="102">
        <position x="105" y="76" />
        <position x="103" y="76" />
        <position x="103" y="76" />
        <position x="102" y="76" />
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
<node id="99">
  <position x="97" y="70" />
  <connection refid="117">
    <position x="97" y="70" />
    <position x="95" y="70" />
    <position x="95" y="70" />
    <position x="93" y="70" />
  </connection>
</node>
<block name="RS" instance="SAVED_POS_HOR_1" id="100" height="6" width="5" line="76" order="27">
  <position x="114" y="70" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="97" name="AND">
        <position x="114" y="73" />
        <position x="110" y="73" />
        <position x="110" y="69" />
        <position x="109" y="69" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="98" name="AND">
        <position x="114" y="75" />
        <position x="111" y="75" />
        <position x="111" y="74" />
        <position x="109" y="74" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="poziceMotoru_hor_1" type="BOOL" id="101" order="28">
  <position x="121" y="72" />
  <connection refid="100" name="Q1">
    <position x="122" y="73" />
    <position x="120" y="73" />
    <position x="120" y="73" />
    <position x="119" y="73" />
  </connection>
</outVariable>
<node id="102">
  <position x="102" y="76" />
  <connection refid="15" name="BIT1">
    <position x="102" y="76" />
    <position x="102" y="76" />
    <position x="102" y="88" />
    <position x="46" y="88" />
  </connection>
</node>
<node id="103">
  <position x="54" y="75" />
  <connection>
    <position x="54" y="75" />
    <position x="34" y="75" />
    <position x="34" y="75" />
    <position x="30" y="75" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="104" height="4" width="4" line="82" order="29">
  <position x="166" y="71" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="106">
        <position x="166" y="72" />
        <position x="158" y="72" />
        <position x="158" y="75" />
        <position x="158" y="75" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="109">
        <position x="166" y="74" />
        <position x="163" y="74" />
        <position x="163" y="79" />
        <position x="163" y="79" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="105" height="4" width="4" line="85" order="30">
  <position x="166" y="76" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="106">
        <position x="166" y="77" />
        <position x="161" y="77" />
        <position x="161" y="75" />
        <position x="158" y="75" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="109">
        <position x="166" y="79" />
        <position x="164" y="79" />
        <position x="164" y="79" />
        <position x="163" y="79" />
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
<node id="106">
  <position x="158" y="75" />
  <connection refid="116">
    <position x="158" y="75" />
    <position x="155" y="75" />
    <position x="155" y="79" />
    <position x="153" y="79" />
  </connection>
</node>
<block name="RS" instance="SAVED_POS_HOR_2" id="107" height="6" width="5" line="87" order="31">
  <position x="175" y="73" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="104" name="AND">
        <position x="175" y="76" />
        <position x="171" y="76" />
        <position x="171" y="72" />
        <position x="170" y="72" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="105" name="AND">
        <position x="175" y="78" />
        <position x="172" y="78" />
        <position x="172" y="77" />
        <position x="170" y="77" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="poziceMotoru_hor_2" type="BOOL" id="108" order="32">
  <position x="182" y="75" />
  <connection refid="107" name="Q1">
    <position x="183" y="76" />
    <position x="181" y="76" />
    <position x="181" y="76" />
    <position x="180" y="76" />
  </connection>
</outVariable>
<node id="109">
  <position x="163" y="79" />
  <connection refid="15" name="BIT2">
    <position x="163" y="79" />
    <position x="163" y="79" />
    <position x="163" y="90" />
    <position x="46" y="90" />
  </connection>
</node>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="110" height="4" width="4" line="93" order="33">
  <position x="204" y="68" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="112">
        <position x="204" y="69" />
        <position x="196" y="69" />
        <position x="196" y="70" />
        <position x="196" y="70" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="115">
        <position x="204" y="71" />
        <position x="201" y="71" />
        <position x="201" y="76" />
        <position x="201" y="76" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="111" height="4" width="4" line="96" order="34">
  <position x="204" y="73" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="112">
        <position x="204" y="74" />
        <position x="199" y="74" />
        <position x="199" y="70" />
        <position x="196" y="70" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT" negated="true">
      <connection refid="115">
        <position x="204" y="76" />
        <position x="202" y="76" />
        <position x="202" y="76" />
        <position x="201" y="76" />
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
<node id="112">
  <position x="196" y="70" />
  <connection refid="116">
    <position x="196" y="70" />
    <position x="153" y="70" />
    <position x="153" y="79" />
    <position x="153" y="79" />
  </connection>
</node>
<block name="RS" instance="SAVED_POS_HOR_3" id="113" height="6" width="5" line="98" order="35">
  <position x="213" y="70" />
  <inVariables>
    <variable name="S" type="BOOL">
      <connection refid="110" name="AND">
        <position x="213" y="73" />
        <position x="209" y="73" />
        <position x="209" y="69" />
        <position x="208" y="69" />
      </connection>
    </variable>
    <variable name="R1" type="BOOL">
      <connection refid="111" name="AND">
        <position x="213" y="75" />
        <position x="210" y="75" />
        <position x="210" y="74" />
        <position x="208" y="74" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<outVariable name="poziceMotoru_hor_3" type="BOOL" id="114" order="36">
  <position x="220" y="72" />
  <connection refid="113" name="Q1">
    <position x="221" y="73" />
    <position x="219" y="73" />
    <position x="219" y="73" />
    <position x="218" y="73" />
  </connection>
</outVariable>
<node id="115">
  <position x="201" y="76" />
  <connection refid="15" name="BIT3">
    <position x="201" y="76" />
    <position x="201" y="76" />
    <position x="201" y="92" />
    <position x="46" y="92" />
  </connection>
</node>
<node id="116">
  <position x="153" y="79" />
  <connection refid="117">
    <position x="153" y="79" />
    <position x="93" y="79" />
    <position x="93" y="70" />
    <position x="93" y="70" />
  </connection>
</node>
<node id="117">
  <position x="93" y="70" />
  <connection refid="103">
    <position x="93" y="70" />
    <position x="54" y="70" />
    <position x="54" y="75" />
    <position x="54" y="75" />
  </connection>
</node>
<inVariable name="SET_VERTICAL_POS_1" type="INT" id="157">
  <position x="6" y="52" />
</inVariable>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 320	*)	_Nod_Tmp_18	:	BOOL;
(* 201	*)	_Nod_Tmp_27	:	BOOL;
(* 311	*)	_Nod_Tmp_24	:	BOOL;
(* 430	*)	_Nod_Tmp_21	:	BOOL;
(* 540	*)	_Nod_Tmp_17	:	BOOL;
(* 787	*)	_Nod_Tmp_4	:	BOOL;
(* 668	*)	_Nod_Tmp_13	:	BOOL;
(* 778	*)	_Nod_Tmp_10	:	BOOL;
(* 897	*)	_Nod_Tmp_7	:	BOOL;
(*1007	*)	_Nod_Tmp_3	:	BOOL;
END_VAR

//NC
//N001
(*  96	*)	LD 	SAVE_NEW_POS
(* 320	*)	ST	_Nod_Tmp_18
(*   7	*)	MAX(IN1:=SET_VERTICAL_POS_1)
(*  32	*)	ST 	INT_TO_BITS.INPUT
(*  32	*)	CAL	INT_TO_BITS()
(*  32	*)	LD 	INT_TO_BITS.BIT0
(* 201	*)	ST	_Nod_Tmp_27
(* 103	*)	LD 	_Nod_Tmp_18
(* 111	*)	AND 	_Nod_Tmp_27
(* 167	*)	ST 	SAVED_POS_VER_0.S
(* 133	*)	LD 	_Nod_Tmp_18
(* 141	*)	ANDN	_Nod_Tmp_27
(* 167	*)	ST 	SAVED_POS_VER_0.R1
(* 167	*)	CAL	SAVED_POS_VER_0()
(* 167	*)	LD 	SAVED_POS_VER_0.Q1
(* 192	*)	ST 	poziceMotoru_ver_0
(*  32	*)	LD 	INT_TO_BITS.BIT1
(* 311	*)	ST	_Nod_Tmp_24
(* 214	*)	LD 	_Nod_Tmp_18
(* 222	*)	AND 	_Nod_Tmp_24
(* 277	*)	ST 	SAVED_POS_VER_1.S
(* 243	*)	LD 	_Nod_Tmp_18
(* 251	*)	ANDN	_Nod_Tmp_24
(* 277	*)	ST 	SAVED_POS_VER_1.R1
(* 277	*)	CAL	SAVED_POS_VER_1()
(* 277	*)	LD 	SAVED_POS_VER_1.Q1
(* 302	*)	ST 	poziceMotoru_ver_1
(*  32	*)	LD 	INT_TO_BITS.BIT2
(* 430	*)	ST	_Nod_Tmp_21
(* 333	*)	LD 	_Nod_Tmp_18
(* 341	*)	AND 	_Nod_Tmp_21
(* 396	*)	ST 	SAVED_POS_VER_2.S
(* 362	*)	LD 	_Nod_Tmp_18
(* 370	*)	ANDN	_Nod_Tmp_21
(* 396	*)	ST 	SAVED_POS_VER_2.R1
(* 396	*)	CAL	SAVED_POS_VER_2()
(* 396	*)	LD 	SAVED_POS_VER_2.Q1
(* 421	*)	ST 	poziceMotoru_ver_2
(*  32	*)	LD 	INT_TO_BITS.BIT3
(* 540	*)	ST	_Nod_Tmp_17
(* 443	*)	LD 	_Nod_Tmp_18
(* 451	*)	AND 	_Nod_Tmp_17
(* 506	*)	ST 	SAVED_POS_VER_3.S
(* 472	*)	LD 	_Nod_Tmp_18
(* 480	*)	ANDN	_Nod_Tmp_17
(* 506	*)	ST 	SAVED_POS_VER_3.R1
(* 506	*)	CAL	SAVED_POS_VER_3()
(* 506	*)	LD 	SAVED_POS_VER_3.Q1
(* 531	*)	ST 	poziceMotoru_ver_3
//N002
(* 787	*)	ST	_Nod_Tmp_4
(*  55	*)	MAX
(*  73	*)	ST 	INT_TO_BITS_HOR.INPUT
(*  73	*)	CAL	INT_TO_BITS_HOR()
(*  73	*)	LD 	INT_TO_BITS_HOR.BIT0
(* 668	*)	ST	_Nod_Tmp_13
(* 571	*)	LD 	_Nod_Tmp_4
(* 579	*)	AND 	_Nod_Tmp_13
(* 634	*)	ST 	SAVED_POS_HOR_0.S
(* 600	*)	LD 	_Nod_Tmp_4
(* 608	*)	ANDN	_Nod_Tmp_13
(* 634	*)	ST 	SAVED_POS_HOR_0.R1
(* 634	*)	CAL	SAVED_POS_HOR_0()
(* 634	*)	LD 	SAVED_POS_HOR_0.Q1
(* 659	*)	ST 	poziceMotoru_hor_0
(*  73	*)	LD 	INT_TO_BITS_HOR.BIT1
(* 778	*)	ST	_Nod_Tmp_10
(* 681	*)	LD 	_Nod_Tmp_4
(* 689	*)	AND 	_Nod_Tmp_10
(* 744	*)	ST 	SAVED_POS_HOR_1.S
(* 710	*)	LD 	_Nod_Tmp_4
(* 718	*)	ANDN	_Nod_Tmp_10
(* 744	*)	ST 	SAVED_POS_HOR_1.R1
(* 744	*)	CAL	SAVED_POS_HOR_1()
(* 744	*)	LD 	SAVED_POS_HOR_1.Q1
(* 769	*)	ST 	poziceMotoru_hor_1
(*  73	*)	LD 	INT_TO_BITS_HOR.BIT2
(* 897	*)	ST	_Nod_Tmp_7
(* 800	*)	LD 	_Nod_Tmp_4
(* 808	*)	AND 	_Nod_Tmp_7
(* 863	*)	ST 	SAVED_POS_HOR_2.S
(* 829	*)	LD 	_Nod_Tmp_4
(* 837	*)	ANDN	_Nod_Tmp_7
(* 863	*)	ST 	SAVED_POS_HOR_2.R1
(* 863	*)	CAL	SAVED_POS_HOR_2()
(* 863	*)	LD 	SAVED_POS_HOR_2.Q1
(* 888	*)	ST 	poziceMotoru_hor_2
(*  73	*)	LD 	INT_TO_BITS_HOR.BIT3
(*1007	*)	ST	_Nod_Tmp_3
(* 910	*)	LD 	_Nod_Tmp_4
(* 918	*)	AND 	_Nod_Tmp_3
(* 973	*)	ST 	SAVED_POS_HOR_3.S
(* 939	*)	LD 	_Nod_Tmp_4
(* 947	*)	ANDN	_Nod_Tmp_3
(* 973	*)	ST 	SAVED_POS_HOR_3.R1
(* 973	*)	CAL	SAVED_POS_HOR_3()
(* 973	*)	LD 	SAVED_POS_HOR_3.Q1
(* 998	*)	ST 	poziceMotoru_hor_3

END_PROGRAM
