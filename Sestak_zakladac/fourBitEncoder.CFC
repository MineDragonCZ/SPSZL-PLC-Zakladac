FUNCTION_BLOCK fourBitEncoder
  VAR_INPUT
    INPUT : INT;
  END_VAR
  VAR_OUTPUT
    BIT0 : BOOL;
    BIT1 : BOOL;
    BIT2 : BOOL;
    BIT3 : BOOL;
  END_VAR
  VAR_IN_OUT
  END_VAR
  VAR
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="cfc.xsl" version="1.1"?>
<fbd version="1.1" grid="8">
<inVariable name="INPUT" type="INT" id="1">
  <position x="17" y="12" />
</inVariable>
<outVariable name="BIT0" type="BOOL" id="3" order="6">
  <position x="79" y="12" />
  <connection refid="58" name="OR">
    <position x="80" y="13" />
    <position x="74" y="13" />
    <position x="74" y="13" />
    <position x="71" y="13" />
  </connection>
</outVariable>
<outVariable name="BIT1" type="BOOL" id="6" order="9">
  <position x="79" y="26" />
  <connection refid="76" name="OR">
    <position x="80" y="27" />
    <position x="74" y="27" />
    <position x="74" y="27" />
    <position x="71" y="27" />
  </connection>
</outVariable>
<outVariable name="BIT2" type="BOOL" id="8" order="12">
  <position x="79" y="36" />
  <connection refid="67" name="OR">
    <position x="80" y="37" />
    <position x="74" y="37" />
    <position x="74" y="37" />
    <position x="71" y="37" />
  </connection>
</outVariable>
<outVariable name="BIT3" type="BOOL" id="10" order="13">
  <position x="79" y="46" />
  <connection refid="66">
    <position x="80" y="47" />
    <position x="66" y="47" />
    <position x="66" y="53" />
    <position x="54" y="53" />
  </connection>
</outVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="12" height="4" width="3" line="6" order="1">
  <position x="38" y="12" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="43">
        <position x="38" y="13" />
        <position x="30" y="13" />
        <position x="30" y="13" />
        <position x="25" y="13" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="15">
        <position x="38" y="15" />
        <position x="37" y="15" />
        <position x="37" y="15" />
        <position x="34" y="15" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="EQ" type="BOOL">
    <comment>
  Equality
  returns true if IN1 = IN2
</comment>
    </variable>
  </outVariables>
</block>
<inVariable name="1" type="" id="15">
  <position x="32" y="14" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="18" height="4" width="3" line="23" order="7">
  <position x="38" y="20" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="45">
        <position x="38" y="21" />
        <position x="31" y="21" />
        <position x="31" y="21" />
        <position x="25" y="21" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="19">
        <position x="38" y="23" />
        <position x="37" y="23" />
        <position x="37" y="23" />
        <position x="34" y="23" />
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
<inVariable name="2" type="" id="19">
  <position x="32" y="22" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="23" height="4" width="3" line="9" order="2">
  <position x="38" y="28" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="47">
        <position x="38" y="29" />
        <position x="31" y="29" />
        <position x="31" y="29" />
        <position x="25" y="29" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="24">
        <position x="38" y="31" />
        <position x="37" y="31" />
        <position x="37" y="31" />
        <position x="34" y="31" />
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
<inVariable name="3" type="" id="24">
  <position x="32" y="30" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="28" height="4" width="3" line="29" order="10">
  <position x="38" y="36" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="49">
        <position x="38" y="37" />
        <position x="31" y="37" />
        <position x="31" y="37" />
        <position x="25" y="37" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="29">
        <position x="38" y="39" />
        <position x="37" y="39" />
        <position x="37" y="39" />
        <position x="34" y="39" />
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
<inVariable name="4" type="" id="29">
  <position x="32" y="38" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="33" height="4" width="3" line="12" order="3">
  <position x="38" y="44" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="51">
        <position x="38" y="45" />
        <position x="31" y="45" />
        <position x="31" y="45" />
        <position x="25" y="45" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="34">
        <position x="38" y="47" />
        <position x="37" y="47" />
        <position x="37" y="47" />
        <position x="34" y="47" />
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
<inVariable name="5" type="" id="34">
  <position x="32" y="46" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="38" height="4" width="3" line="15" order="4">
  <position x="38" y="52" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="51">
        <position x="38" y="53" />
        <position x="25" y="53" />
        <position x="25" y="45" />
        <position x="25" y="45" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="39">
        <position x="38" y="55" />
        <position x="37" y="55" />
        <position x="37" y="55" />
        <position x="34" y="55" />
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
<inVariable name="15" type="" id="39">
  <position x="31" y="54" />
</inVariable>
<node id="43">
  <position x="25" y="13" />
  <connection refid="1">
    <position x="25" y="13" />
    <position x="23" y="13" />
    <position x="23" y="13" />
    <position x="22" y="13" />
  </connection>
</node>
<node id="45">
  <position x="25" y="21" />
  <connection refid="43">
    <position x="25" y="21" />
    <position x="25" y="21" />
    <position x="25" y="13" />
    <position x="25" y="13" />
  </connection>
</node>
<node id="47">
  <position x="25" y="29" />
  <connection refid="45">
    <position x="25" y="29" />
    <position x="25" y="29" />
    <position x="25" y="21" />
    <position x="25" y="21" />
  </connection>
</node>
<node id="49">
  <position x="25" y="37" />
  <connection refid="47">
    <position x="25" y="37" />
    <position x="25" y="37" />
    <position x="25" y="29" />
    <position x="25" y="29" />
  </connection>
</node>
<node id="51">
  <position x="25" y="45" />
  <connection refid="49">
    <position x="25" y="45" />
    <position x="25" y="45" />
    <position x="25" y="37" />
    <position x="25" y="37" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="58" height="8" width="3" line="20" order="5">
  <position x="68" y="12" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="12" name="EQ">
        <position x="68" y="13" />
        <position x="54" y="13" />
        <position x="54" y="13" />
        <position x="41" y="13" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="84">
        <position x="68" y="15" />
        <position x="45" y="15" />
        <position x="45" y="29" />
        <position x="45" y="29" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="75">
        <position x="68" y="17" />
        <position x="47" y="17" />
        <position x="47" y="45" />
        <position x="47" y="45" />
      </connection>
    </variable>
    <variable name="IN4" type="ANY_BIT">
      <connection refid="66">
        <position x="68" y="19" />
        <position x="54" y="19" />
        <position x="54" y="53" />
        <position x="54" y="53" />
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
<node id="66">
  <position x="54" y="53" />
  <connection refid="38" name="EQ">
    <position x="54" y="53" />
    <position x="47" y="53" />
    <position x="47" y="53" />
    <position x="41" y="53" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="67" height="4" width="3" line="32" order="11">
  <position x="68" y="36" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="28" name="EQ">
        <position x="68" y="37" />
        <position x="54" y="37" />
        <position x="54" y="37" />
        <position x="41" y="37" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="75">
        <position x="68" y="39" />
        <position x="57" y="39" />
        <position x="57" y="45" />
        <position x="47" y="45" />
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
<node id="75">
  <position x="47" y="45" />
  <connection refid="33" name="EQ">
    <position x="47" y="45" />
    <position x="44" y="45" />
    <position x="44" y="45" />
    <position x="41" y="45" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="76" height="4" width="3" line="26" order="8">
  <position x="68" y="26" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="18" name="EQ">
        <position x="68" y="27" />
        <position x="56" y="27" />
        <position x="56" y="21" />
        <position x="41" y="21" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="84">
        <position x="68" y="29" />
        <position x="56" y="29" />
        <position x="56" y="29" />
        <position x="45" y="29" />
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
<node id="84">
  <position x="45" y="29" />
  <connection refid="23" name="EQ">
    <position x="45" y="29" />
    <position x="43" y="29" />
    <position x="43" y="29" />
    <position x="41" y="29" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
END_VAR

//TVD
VAR_TEMP
(* 230	*)	_Nod_Tmp_10	:	INT;
(* 275	*)	_Fun_Tmp_IN1_5_1	:	BOOL;
(* 399	*)	_Nod_Tmp_11	:	BOOL;
(* 360	*)	_Nod_Tmp_8	:	BOOL;
(* 321	*)	_Nod_Tmp_6	:	BOOL;
(* 369	*)	_Fun_Tmp_IN1_3_1	:	BOOL;
(* 330	*)	_Fun_Tmp_IN1_1_1	:	BOOL;
END_VAR

//NC
//N000
(*   4	*)	LD 	INPUT
(* 230	*)	ST	_Nod_Tmp_10
(*  47	*)	LD 	_Nod_Tmp_10
(*  55	*)	EQ 	1
(* 279	*)	ST 	_Fun_Tmp_IN1_5_1
(* 110	*)	LD 	_Nod_Tmp_10
(* 118	*)	EQ 	3
(* 399	*)	ST	_Nod_Tmp_11
(* 172	*)	LD 	_Nod_Tmp_10
(* 180	*)	EQ 	5
(* 360	*)	ST	_Nod_Tmp_8
(* 203	*)	LD 	_Nod_Tmp_10
(* 211	*)	EQ 	15
(* 321	*)	ST	_Nod_Tmp_6
(* 279	*)	LD 	_Fun_Tmp_IN1_5_1
(* 287	*)	OR 	_Nod_Tmp_11
(* 295	*)	OR 	_Nod_Tmp_8
(* 303	*)	OR 	_Nod_Tmp_6
(*   7	*)	ST 	BIT0
(*  79	*)	LD 	_Nod_Tmp_10
(*  87	*)	EQ 	2
(* 373	*)	ST 	_Fun_Tmp_IN1_3_1
(* 373	*)	LD 	_Fun_Tmp_IN1_3_1
(* 381	*)	OR 	_Nod_Tmp_11
(*  16	*)	ST 	BIT1
(* 141	*)	LD 	_Nod_Tmp_10
(* 149	*)	EQ 	4
(* 334	*)	ST 	_Fun_Tmp_IN1_1_1
(* 334	*)	LD 	_Fun_Tmp_IN1_1_1
(* 342	*)	OR 	_Nod_Tmp_8
(*  25	*)	ST 	BIT2
(* 321	*)	LD	_Nod_Tmp_6
(*  34	*)	ST 	BIT3

END_FUNCTION_BLOCK
