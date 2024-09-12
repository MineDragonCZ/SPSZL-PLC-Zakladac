PROGRAM prgZakladac
  VAR_INPUT
  END_VAR
  VAR_OUTPUT
  END_VAR
  VAR
    fix_pozice : BOOL;
    startZakladace : BOOL;
    hledani01 : zakladacVemVyrobek;
    zjisti01 : zakladacZjistiBarvuNastavVysku;
    vyber_posuvu2 : BOOL;
    R_TRIG_01 : R_TRIG;
    R_TRIG_02 : R_TRIG;
    uloz01 : zakladacUlozVyrobek;
  END_VAR
  VAR_TEMP
  END_VAR
{NOCODE}
<?xml version="1.0" encoding="windows-1250" ?>
<?xml-stylesheet type="text/xsl" href="cfc.xsl" version="1.1"?>
<fbd version="1.1" grid="8">
<outVariable name="poziceMotoru_hor_0" type="BOOL" id="1" order="22">
  <position x="68" y="34" />
  <connection refid="96" name="OR">
    <position x="69" y="35" />
    <position x="65" y="35" />
    <position x="65" y="37" />
    <position x="64" y="37" />
  </connection>
</outVariable>
<outVariable name="poziceMotoru_hor_1" type="BOOL" id="2" order="29">
  <position x="68" y="46" />
  <connection refid="97" name="OR">
    <position x="69" y="47" />
    <position x="65" y="47" />
    <position x="65" y="47" />
    <position x="64" y="47" />
  </connection>
</outVariable>
<outVariable name="poziceMotoru_hor_2" type="BOOL" id="3" order="36">
  <position x="68" y="55" />
  <connection refid="98" name="OR">
    <position x="69" y="56" />
    <position x="65" y="56" />
    <position x="65" y="59" />
    <position x="64" y="59" />
  </connection>
</outVariable>
<outVariable name="poziceMotoru_hor_3" type="BOOL" id="4" order="38">
  <position x="78" y="64" />
  <connection refid="99" name="OR">
    <position x="79" y="65" />
    <position x="73" y="65" />
    <position x="73" y="69" />
    <position x="70" y="69" />
  </connection>
</outVariable>
<inVariable name="pozice_horizontalni" type="INT" id="5">
  <position x="-5" y="38" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="6" height="4" width="3" line="16" order="3">
  <position x="23" y="38" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="18">
        <position x="23" y="39" />
        <position x="20" y="39" />
        <position x="20" y="39" />
        <position x="17" y="39" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="7">
        <position x="23" y="41" />
        <position x="22" y="41" />
        <position x="22" y="41" />
        <position x="20" y="41" />
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
<inVariable name="1" type="" id="7">
  <position x="18" y="40" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="8" height="4" width="3" line="88" order="25">
  <position x="23" y="43" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="22">
        <position x="23" y="44" />
        <position x="20" y="44" />
        <position x="20" y="44" />
        <position x="17" y="44" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="12">
        <position x="23" y="46" />
        <position x="22" y="46" />
        <position x="22" y="46" />
        <position x="20" y="46" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="9" height="4" width="3" line="33" order="8">
  <position x="23" y="48" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="21">
        <position x="23" y="49" />
        <position x="20" y="49" />
        <position x="20" y="49" />
        <position x="17" y="49" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="13">
        <position x="23" y="51" />
        <position x="22" y="51" />
        <position x="22" y="51" />
        <position x="20" y="51" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="10" height="4" width="3" line="108" order="32">
  <position x="23" y="53" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="20">
        <position x="23" y="54" />
        <position x="20" y="54" />
        <position x="20" y="54" />
        <position x="17" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="14">
        <position x="23" y="56" />
        <position x="22" y="56" />
        <position x="22" y="56" />
        <position x="20" y="56" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="11" height="4" width="3" line="52" order="13">
  <position x="23" y="58" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="19">
        <position x="23" y="59" />
        <position x="18" y="59" />
        <position x="18" y="59" />
        <position x="15" y="59" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="15">
        <position x="23" y="61" />
        <position x="21" y="61" />
        <position x="21" y="61" />
        <position x="20" y="61" />
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
<inVariable name="2" type="" id="12">
  <position x="18" y="45" />
</inVariable>
<inVariable name="3" type="" id="13">
  <position x="18" y="50" />
</inVariable>
<inVariable name="4" type="" id="14">
  <position x="18" y="55" />
</inVariable>
<inVariable name="5" type="" id="15">
  <position x="18" y="60" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="16" height="4" width="3" line="67" order="18">
  <position x="23" y="64" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="19">
        <position x="23" y="65" />
        <position x="15" y="65" />
        <position x="15" y="59" />
        <position x="15" y="59" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="17">
        <position x="23" y="67" />
        <position x="22" y="67" />
        <position x="22" y="67" />
        <position x="21" y="67" />
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
<inVariable name="15" type="" id="17">
  <position x="18" y="66" />
</inVariable>
<node id="18">
  <position x="17" y="39" />
  <connection refid="5">
    <position x="17" y="39" />
    <position x="16" y="39" />
    <position x="16" y="39" />
    <position x="15" y="39" />
  </connection>
</node>
<node id="19">
  <position x="15" y="59" />
  <connection refid="20">
    <position x="15" y="59" />
    <position x="15" y="59" />
    <position x="15" y="56" />
    <position x="17" y="56" />
    <position x="17" y="54" />
    <position x="17" y="54" />
  </connection>
</node>
<node id="20">
  <position x="17" y="54" />
  <connection refid="21">
    <position x="17" y="54" />
    <position x="17" y="54" />
    <position x="17" y="49" />
    <position x="17" y="49" />
  </connection>
</node>
<node id="21">
  <position x="17" y="49" />
  <connection refid="22">
    <position x="17" y="49" />
    <position x="17" y="49" />
    <position x="17" y="44" />
    <position x="17" y="44" />
  </connection>
</node>
<node id="22">
  <position x="17" y="44" />
  <connection refid="18">
    <position x="17" y="44" />
    <position x="17" y="44" />
    <position x="17" y="39" />
    <position x="17" y="39" />
  </connection>
</node>
<node id="23">
  <position x="56" y="52" />
  <connection refid="123">
    <position x="56" y="52" />
    <position x="56" y="52" />
    <position x="56" y="66" />
    <position x="56" y="66" />
  </connection>
</node>
<outVariable name="startMotoru" type="BOOL" id="24" order="59">
  <position x="41" y="80" />
  <connection refid="93" name="OR">
    <position x="42" y="81" />
    <position x="33" y="81" />
    <position x="33" y="80" />
    <position x="28" y="80" />
  </connection>
</outVariable>
<outVariable name="vyberMotoru" type="BOOL" id="25" order="66">
  <position x="43" y="84" />
  <connection refid="32" name="AND">
    <position x="44" y="85" />
    <position x="42" y="85" />
    <position x="42" y="85" />
    <position x="41" y="85" />
  </connection>
</outVariable>
<outVariable name="zhaveniMotoru_hor" type="BOOL" id="26" order="56">
  <position x="35" y="73" />
  <connection refid="30">
    <position x="36" y="74" />
    <position x="27" y="74" />
    <position x="27" y="74" />
    <position x="26" y="74" />
  </connection>
</outVariable>
<inVariable name="true" type="BOOL" id="27">
  <position x="14" y="71" />
</inVariable>
<inVariable name="zapnout_posuv" type="BOOL" id="28">
  <position x="7" y="80" />
</inVariable>
<outVariable name="zhaveniMotoru_ver" type="BOOL" id="29" order="57">
  <position x="35" y="76" />
  <connection refid="30">
    <position x="36" y="77" />
    <position x="26" y="77" />
    <position x="26" y="74" />
    <position x="26" y="74" />
  </connection>
</outVariable>
<node id="30">
  <position x="26" y="74" />
  <connection refid="27">
    <position x="26" y="74" />
    <position x="22" y="74" />
    <position x="22" y="72" />
    <position x="18" y="72" />
  </connection>
</node>
<inVariable name="vyber_posuvu" type="BOOL" id="31">
  <position x="8" y="84" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="32" height="4" width="4" line="200" order="65">
  <position x="37" y="84" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="88" name="OR">
        <position x="37" y="85" />
        <position x="31" y="85" />
        <position x="31" y="87" />
        <position x="27" y="87" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="33">
        <position x="37" y="87" />
        <position x="33" y="87" />
        <position x="33" y="92" />
        <position x="29" y="92" />
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
<inVariable name="vertikalniManipulacePovolena" type="BOOL" id="33">
  <position x="8" y="91" />
</inVariable>
<inVariable name="startZakladace" type="BOOL" id="34">
  <position x="2" y="99" />
</inVariable>
<outVariable name="celistiChapadlo" type="BOOL" id="35" order="61">
  <position x="90" y="81" />
  <connection refid="36" name="Q1">
    <position x="91" y="82" />
    <position x="84" y="82" />
    <position x="84" y="82" />
    <position x="80" y="82" />
  </connection>
</outVariable>
<block name="RS" instance="toggleChapadla" id="36" height="6" width="5" line="187" order="60">
  <position x="75" y="79" />
  <inVariables>
    <variable name="S" type="BOOL">
    </variable>
    <variable name="R1" type="BOOL">
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="37" height="4" width="3" line="206" order="67">
  <position x="18" y="104" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="156">
        <position x="18" y="105" />
        <position x="15" y="105" />
        <position x="15" y="101" />
        <position x="15" y="101" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="85" name="NEMAM">
        <position x="18" y="107" />
        <position x="15" y="107" />
        <position x="15" y="114" />
        <position x="45" y="114" />
        <position x="45" y="107" />
        <position x="40" y="107" />
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
<inVariable name="motor_hor_0" type="BOOL" id="38">
  <position x="34" y="25" />
</inVariable>
<node id="39">
  <position x="58" y="66" />
  <connection refid="123">
    <position x="58" y="66" />
    <position x="57" y="66" />
    <position x="57" y="66" />
    <position x="56" y="66" />
  </connection>
</node>
<inVariable name="motor_hor_1" type="BOOL" id="40">
  <position x="34" y="28" />
</inVariable>
<inVariable name="motor_hor_2" type="BOOL" id="41">
  <position x="34" y="31" />
</inVariable>
<inVariable name="motor_hor_3" type="BOOL" id="42">
  <position x="34" y="34" />
</inVariable>
<outVariable name="poziceMotoru_ver_0" type="BOOL" id="43" order="47">
  <position x="152" y="30" />
  <connection refid="70" name="OR">
    <position x="153" y="31" />
    <position x="149" y="31" />
    <position x="149" y="32" />
    <position x="148" y="32" />
  </connection>
</outVariable>
<outVariable name="poziceMotoru_ver_1" type="BOOL" id="44" order="50">
  <position x="152" y="42" />
  <connection refid="71" name="OR">
    <position x="153" y="43" />
    <position x="149" y="43" />
    <position x="149" y="43" />
    <position x="148" y="43" />
  </connection>
</outVariable>
<outVariable name="poziceMotoru_ver_2" type="BOOL" id="45" order="53">
  <position x="152" y="51" />
  <connection refid="72" name="OR">
    <position x="153" y="52" />
    <position x="149" y="52" />
    <position x="149" y="52" />
    <position x="148" y="52" />
  </connection>
</outVariable>
<outVariable name="poziceMotoru_ver_3" type="BOOL" id="46" order="55">
  <position x="162" y="60" />
  <connection refid="73" name="OR">
    <position x="163" y="61" />
    <position x="157" y="61" />
    <position x="157" y="63" />
    <position x="154" y="63" />
  </connection>
</outVariable>
<inVariable name="pozice_vertikalni" type="INT" id="47">
  <position x="91" y="34" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="48" height="4" width="3" line="135" order="42">
  <position x="119" y="34" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="60">
        <position x="119" y="35" />
        <position x="114" y="35" />
        <position x="114" y="35" />
        <position x="111" y="35" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="49">
        <position x="119" y="37" />
        <position x="118" y="37" />
        <position x="118" y="37" />
        <position x="116" y="37" />
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
<inVariable name="1" type="" id="49">
  <position x="114" y="36" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="50" height="4" width="3" line="153" order="48">
  <position x="119" y="39" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="64">
        <position x="119" y="40" />
        <position x="114" y="40" />
        <position x="114" y="40" />
        <position x="111" y="40" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="54">
        <position x="119" y="42" />
        <position x="118" y="42" />
        <position x="118" y="42" />
        <position x="116" y="42" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="51" height="4" width="3" line="138" order="43">
  <position x="119" y="44" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="63">
        <position x="119" y="45" />
        <position x="114" y="45" />
        <position x="114" y="45" />
        <position x="111" y="45" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="55">
        <position x="119" y="47" />
        <position x="118" y="47" />
        <position x="118" y="47" />
        <position x="116" y="47" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="52" height="4" width="3" line="161" order="51">
  <position x="119" y="49" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="62">
        <position x="119" y="50" />
        <position x="114" y="50" />
        <position x="114" y="50" />
        <position x="111" y="50" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="56">
        <position x="119" y="52" />
        <position x="118" y="52" />
        <position x="118" y="52" />
        <position x="116" y="52" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="53" height="4" width="3" line="141" order="44">
  <position x="119" y="54" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="61">
        <position x="119" y="55" />
        <position x="114" y="55" />
        <position x="114" y="55" />
        <position x="111" y="55" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="57">
        <position x="119" y="57" />
        <position x="117" y="57" />
        <position x="117" y="57" />
        <position x="116" y="57" />
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
<inVariable name="2" type="" id="54">
  <position x="114" y="41" />
</inVariable>
<inVariable name="3" type="" id="55">
  <position x="114" y="46" />
</inVariable>
<inVariable name="4" type="" id="56">
  <position x="114" y="51" />
</inVariable>
<inVariable name="5" type="" id="57">
  <position x="114" y="56" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="58" height="4" width="3" line="144" order="45">
  <position x="119" y="60" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="61">
        <position x="119" y="61" />
        <position x="111" y="61" />
        <position x="111" y="55" />
        <position x="111" y="55" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="59">
        <position x="119" y="63" />
        <position x="118" y="63" />
        <position x="118" y="63" />
        <position x="117" y="63" />
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
<inVariable name="15" type="" id="59">
  <position x="114" y="62" />
</inVariable>
<node id="60">
  <position x="111" y="35" />
  <connection refid="47">
    <position x="111" y="35" />
    <position x="110" y="35" />
    <position x="110" y="35" />
    <position x="103" y="35" />
  </connection>
</node>
<node id="61">
  <position x="111" y="55" />
  <connection refid="62">
    <position x="111" y="55" />
    <position x="111" y="55" />
    <position x="111" y="50" />
    <position x="111" y="50" />
  </connection>
</node>
<node id="62">
  <position x="111" y="50" />
  <connection refid="63">
    <position x="111" y="50" />
    <position x="111" y="50" />
    <position x="111" y="45" />
    <position x="111" y="45" />
  </connection>
</node>
<node id="63">
  <position x="111" y="45" />
  <connection refid="64">
    <position x="111" y="45" />
    <position x="111" y="45" />
    <position x="111" y="40" />
    <position x="111" y="40" />
  </connection>
</node>
<node id="64">
  <position x="111" y="40" />
  <connection refid="60">
    <position x="111" y="40" />
    <position x="111" y="40" />
    <position x="111" y="35" />
    <position x="111" y="35" />
  </connection>
</node>
<node id="65">
  <position x="135" y="45" />
  <connection refid="51" name="EQ">
    <position x="135" y="45" />
    <position x="132" y="45" />
    <position x="132" y="45" />
    <position x="122" y="45" />
  </connection>
</node>
<node id="66">
  <position x="139" y="54" />
  <connection refid="53" name="EQ">
    <position x="139" y="54" />
    <position x="132" y="54" />
    <position x="132" y="55" />
    <position x="122" y="55" />
  </connection>
</node>
<node id="67">
  <position x="140" y="62" />
  <connection refid="58" name="EQ">
    <position x="140" y="62" />
    <position x="132" y="62" />
    <position x="132" y="61" />
    <position x="122" y="61" />
  </connection>
</node>
<node id="68">
  <position x="140" y="48" />
  <connection refid="67">
    <position x="140" y="48" />
    <position x="140" y="48" />
    <position x="140" y="62" />
    <position x="140" y="62" />
  </connection>
</node>
<inVariable name="motor_ver_0" type="BOOL" id="69">
  <position x="117" y="21" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="70" height="10" width="3" line="150" order="46">
  <position x="145" y="31" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="48" name="EQ">
        <position x="145" y="32" />
        <position x="133" y="32" />
        <position x="133" y="35" />
        <position x="122" y="35" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="65">
        <position x="145" y="34" />
        <position x="135" y="34" />
        <position x="135" y="45" />
        <position x="135" y="45" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="66">
        <position x="145" y="36" />
        <position x="139" y="36" />
        <position x="139" y="54" />
        <position x="139" y="54" />
      </connection>
    </variable>
    <variable name="IN4" type="ANY_BIT">
      <connection refid="68">
        <position x="145" y="38" />
        <position x="140" y="38" />
        <position x="140" y="48" />
        <position x="140" y="48" />
      </connection>
    </variable>
    <variable name="IN5" type="ANY_BIT">
      <connection refid="69">
        <position x="145" y="40" />
        <position x="137" y="40" />
        <position x="137" y="22" />
        <position x="126" y="22" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="71" height="8" width="3" line="158" order="49">
  <position x="145" y="42" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="50" name="EQ">
        <position x="145" y="43" />
        <position x="133" y="43" />
        <position x="133" y="40" />
        <position x="122" y="40" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="65">
        <position x="145" y="45" />
        <position x="140" y="45" />
        <position x="140" y="45" />
        <position x="135" y="45" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="68">
        <position x="145" y="47" />
        <position x="142" y="47" />
        <position x="142" y="48" />
        <position x="140" y="48" />
      </connection>
    </variable>
    <variable name="IN4" type="ANY_BIT">
      <connection refid="75">
        <position x="145" y="49" />
        <position x="136" y="49" />
        <position x="136" y="25" />
        <position x="126" y="25" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="72" height="8" width="3" line="166" order="52">
  <position x="145" y="51" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="52" name="EQ">
        <position x="145" y="52" />
        <position x="133" y="52" />
        <position x="133" y="50" />
        <position x="122" y="50" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="66">
        <position x="145" y="54" />
        <position x="142" y="54" />
        <position x="142" y="54" />
        <position x="139" y="54" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="74">
        <position x="145" y="56" />
        <position x="142" y="56" />
        <position x="142" y="62" />
        <position x="142" y="62" />
      </connection>
    </variable>
    <variable name="IN4" type="ANY_BIT">
      <connection refid="76">
        <position x="145" y="58" />
        <position x="135" y="58" />
        <position x="135" y="28" />
        <position x="126" y="28" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="73" height="4" width="3" line="169" order="54">
  <position x="151" y="62" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="74">
        <position x="151" y="63" />
        <position x="146" y="63" />
        <position x="146" y="62" />
        <position x="142" y="62" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="77">
        <position x="151" y="65" />
        <position x="131" y="65" />
        <position x="131" y="31" />
        <position x="126" y="31" />
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
<node id="74">
  <position x="142" y="62" />
  <connection refid="67">
    <position x="142" y="62" />
    <position x="141" y="62" />
    <position x="141" y="62" />
    <position x="140" y="62" />
  </connection>
</node>
<inVariable name="motor_ver_1" type="BOOL" id="75">
  <position x="117" y="24" />
</inVariable>
<inVariable name="motor_ver_2" type="BOOL" id="76">
  <position x="117" y="27" />
</inVariable>
<inVariable name="motor_ver_3" type="BOOL" id="77">
  <position x="117" y="30" />
</inVariable>
<inVariable name="pohybDokoncen_hor" type="BOOL" id="78">
  <position x="37" y="95" />
</inVariable>
<inVariable name="zapnout_posuv2" type="BOOL" id="79">
  <position x="5" y="77" />
</inVariable>
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="80" height="6" width="4" line="213" order="69">
  <position x="58" y="101" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="85" name="MAM">
        <position x="58" y="102" />
        <position x="49" y="102" />
        <position x="49" y="105" />
        <position x="40" y="105" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="78">
        <position x="58" y="104" />
        <position x="55" y="104" />
        <position x="55" y="96" />
        <position x="52" y="96" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="86">
        <position x="58" y="106" />
        <position x="56" y="106" />
        <position x="56" y="106" />
        <position x="55" y="106" />
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
<inVariable name="vertikalniManipulacePovolena" type="BOOL" id="81">
  <position x="28" y="97" />
</inVariable>
<inVariable name="posuvChapadlo_ver1" type="BOOL" id="82">
  <position x="104" y="79" />
</inVariable>
<inVariable name="posuvChapadlo_ver2" type="BOOL" id="83">
  <position x="104" y="81" />
</inVariable>
<outVariable name="posuvChapadlo_ver" type="BOOL" id="84" order="63">
  <position x="144" y="80" />
  <connection refid="94" name="OR">
    <position x="145" y="81" />
    <position x="136" y="81" />
    <position x="136" y="80" />
    <position x="131" y="80" />
  </connection>
</outVariable>
<block name="zakladacVemVyrobek" instance="hledani01" id="85" height="6" width="15" line="208" order="68">
  <position x="25" y="102" />
  <inVariables>
    <variable name="VYHLEDAT" type="BOOL">
      <connection refid="37" name="OR">
        <position x="25" y="105" />
        <position x="23" y="105" />
        <position x="23" y="105" />
        <position x="21" y="105" />
      </connection>
    </variable>
    <variable name="RESET" type="BOOL">
      <connection refid="86">
        <position x="25" y="107" />
        <position x="22" y="107" />
        <position x="22" y="112" />
        <position x="55" y="112" />
        <position x="55" y="106" />
        <position x="55" y="106" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="MAM" type="BOOL">
    </variable>
    <variable name="NEMAM" type="BOOL">
    </variable>
  </outVariables>
</block>
<node id="86">
  <position x="55" y="106" />
  <connection refid="81">
    <position x="55" y="106" />
    <position x="54" y="106" />
    <position x="54" y="98" />
    <position x="49" y="98" />
  </connection>
</node>
<inVariable name="vyber_posuvu2" type="BOOL" id="87">
  <position x="7" y="87" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="88" height="4" width="3" line="197" order="64">
  <position x="24" y="86" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="31">
        <position x="24" y="87" />
        <position x="21" y="87" />
        <position x="21" y="85" />
        <position x="18" y="85" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="87">
        <position x="24" y="89" />
        <position x="21" y="89" />
        <position x="21" y="88" />
        <position x="18" y="88" />
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
<block name="R_TRIG" instance="R_TRIG_01" id="89" height="4" width="6" line="215" order="70">
  <position x="66" y="99" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="80" name="AND">
        <position x="66" y="102" />
        <position x="64" y="102" />
        <position x="64" y="102" />
        <position x="62" y="102" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="zakladacZjistiBarvuNastavVysku" instance="zjisti01" id="90" height="4" width="21" line="216" order="71">
  <position x="76" y="99" />
  <inVariables>
    <variable name="START" type="BOOL">
      <connection refid="89" name="Q">
        <position x="76" y="102" />
        <position x="74" y="102" />
        <position x="74" y="102" />
        <position x="72" y="102" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="PATRO_NAJITO" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="R_TRIG" instance="R_TRIG_02" id="91" height="4" width="6" line="217" order="72">
  <position x="100" y="99" />
  <inVariables>
    <variable name="CLK" type="BOOL">
      <connection refid="90" name="PATRO_NAJITO">
        <position x="100" y="102" />
        <position x="99" y="102" />
        <position x="99" y="102" />
        <position x="97" y="102" />
      </connection>
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q" type="BOOL">
    </variable>
  </outVariables>
</block>
<inVariable name="zapnout_posuv_3" type="BOOL" id="92">
  <position x="4" y="74" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="93" height="6" width="3" line="184" order="58">
  <position x="25" y="79" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="79">
        <position x="25" y="80" />
        <position x="22" y="80" />
        <position x="22" y="78" />
        <position x="17" y="78" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="28">
        <position x="25" y="82" />
        <position x="21" y="82" />
        <position x="21" y="81" />
        <position x="18" y="81" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="92">
        <position x="25" y="84" />
        <position x="23" y="84" />
        <position x="23" y="75" />
        <position x="17" y="75" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="94" height="6" width="3" line="193" order="62">
  <position x="128" y="79" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="82">
        <position x="128" y="80" />
        <position x="123" y="80" />
        <position x="123" y="80" />
        <position x="119" y="80" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="83">
        <position x="128" y="82" />
        <position x="123" y="82" />
        <position x="123" y="82" />
        <position x="119" y="82" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="95">
        <position x="128" y="84" />
        <position x="124" y="84" />
        <position x="124" y="84" />
        <position x="119" y="84" />
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
<inVariable name="posuvChapadlo_ver3" type="BOOL" id="95">
  <position x="104" y="83" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="96" height="10" width="3" line="79" order="21">
  <position x="61" y="36" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="128" name="OR">
        <position x="61" y="37" />
        <position x="49" y="37" />
        <position x="49" y="39" />
        <position x="46" y="39" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="118">
        <position x="61" y="39" />
        <position x="51" y="39" />
        <position x="51" y="49" />
        <position x="51" y="49" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="121">
        <position x="61" y="41" />
        <position x="53" y="41" />
        <position x="53" y="61" />
        <position x="53" y="61" />
      </connection>
    </variable>
    <variable name="IN4" type="ANY_BIT">
      <connection refid="23">
        <position x="61" y="43" />
        <position x="56" y="43" />
        <position x="56" y="52" />
        <position x="56" y="52" />
      </connection>
    </variable>
    <variable name="IN5" type="ANY_BIT">
      <connection refid="38">
        <position x="61" y="45" />
        <position x="47" y="45" />
        <position x="47" y="26" />
        <position x="44" y="26" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="97" height="8" width="3" line="99" order="28">
  <position x="61" y="46" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="127" name="OR">
        <position x="61" y="47" />
        <position x="48" y="47" />
        <position x="48" y="44" />
        <position x="46" y="44" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="118">
        <position x="61" y="49" />
        <position x="56" y="49" />
        <position x="56" y="49" />
        <position x="51" y="49" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="23">
        <position x="61" y="51" />
        <position x="58" y="51" />
        <position x="58" y="52" />
        <position x="56" y="52" />
      </connection>
    </variable>
    <variable name="IN4" type="ANY_BIT">
      <connection refid="40">
        <position x="61" y="53" />
        <position x="48" y="53" />
        <position x="48" y="29" />
        <position x="44" y="29" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="98" height="8" width="3" line="119" order="35">
  <position x="61" y="58" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="119" name="OR">
        <position x="61" y="59" />
        <position x="48" y="59" />
        <position x="48" y="54" />
        <position x="46" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="121">
        <position x="61" y="61" />
        <position x="57" y="61" />
        <position x="57" y="61" />
        <position x="53" y="61" />
      </connection>
    </variable>
    <variable name="IN3" type="ANY_BIT">
      <connection refid="39">
        <position x="61" y="63" />
        <position x="58" y="63" />
        <position x="58" y="66" />
        <position x="58" y="66" />
      </connection>
    </variable>
    <variable name="IN4" type="ANY_BIT">
      <connection refid="41">
        <position x="61" y="65" />
        <position x="49" y="65" />
        <position x="49" y="32" />
        <position x="44" y="32" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="99" height="4" width="3" line="122" order="37">
  <position x="67" y="68" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="39">
        <position x="67" y="69" />
        <position x="62" y="69" />
        <position x="62" y="66" />
        <position x="58" y="66" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="42">
        <position x="67" y="71" />
        <position x="50" y="71" />
        <position x="50" y="35" />
        <position x="44" y="35" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="100" height="4" width="3" line="6" order="1">
  <position x="25" y="2" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="112">
        <position x="25" y="3" />
        <position x="20" y="3" />
        <position x="20" y="3" />
        <position x="17" y="3" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="101">
        <position x="25" y="5" />
        <position x="24" y="5" />
        <position x="24" y="5" />
        <position x="22" y="5" />
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
<inVariable name="1" type="" id="101">
  <position x="20" y="4" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="102" height="4" width="3" line="82" order="23">
  <position x="25" y="7" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="116">
        <position x="25" y="8" />
        <position x="20" y="8" />
        <position x="20" y="8" />
        <position x="17" y="8" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="106">
        <position x="25" y="10" />
        <position x="24" y="10" />
        <position x="24" y="10" />
        <position x="22" y="10" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="103" height="4" width="3" line="27" order="6">
  <position x="25" y="12" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="115">
        <position x="25" y="13" />
        <position x="20" y="13" />
        <position x="20" y="13" />
        <position x="17" y="13" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="107">
        <position x="25" y="15" />
        <position x="24" y="15" />
        <position x="24" y="15" />
        <position x="22" y="15" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="104" height="4" width="3" line="102" order="30">
  <position x="25" y="17" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="114">
        <position x="25" y="18" />
        <position x="20" y="18" />
        <position x="20" y="18" />
        <position x="17" y="18" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="108">
        <position x="25" y="20" />
        <position x="24" y="20" />
        <position x="24" y="20" />
        <position x="22" y="20" />
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
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="105" height="4" width="3" line="42" order="11">
  <position x="25" y="22" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="113">
        <position x="25" y="23" />
        <position x="20" y="23" />
        <position x="20" y="23" />
        <position x="17" y="23" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="109">
        <position x="25" y="25" />
        <position x="23" y="25" />
        <position x="23" y="25" />
        <position x="22" y="25" />
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
<inVariable name="2" type="" id="106">
  <position x="20" y="9" />
</inVariable>
<inVariable name="3" type="" id="107">
  <position x="20" y="14" />
</inVariable>
<inVariable name="4" type="" id="108">
  <position x="20" y="19" />
</inVariable>
<inVariable name="5" type="" id="109">
  <position x="20" y="24" />
</inVariable>
<block name="EQ" instance="" function="true" hiddenPins="true" operator="true" id="110" height="4" width="3" line="61" order="16">
  <position x="25" y="28" />
  <inVariables>
    <variable name="IN1" type="ANY">
      <connection refid="113">
        <position x="25" y="29" />
        <position x="17" y="29" />
        <position x="17" y="23" />
        <position x="17" y="23" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY">
      <connection refid="111">
        <position x="25" y="31" />
        <position x="24" y="31" />
        <position x="24" y="31" />
        <position x="23" y="31" />
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
<inVariable name="15" type="" id="111">
  <position x="20" y="30" />
</inVariable>
<node id="112">
  <position x="17" y="3" />
  <connection refid="124">
    <position x="17" y="3" />
    <position x="16" y="3" />
    <position x="16" y="3" />
    <position x="18" y="3" />
    <position x="18" y="3" />
    <position x="17" y="3" />
  </connection>
</node>
<node id="113">
  <position x="17" y="23" />
  <connection refid="114">
    <position x="17" y="23" />
    <position x="17" y="23" />
    <position x="17" y="18" />
    <position x="17" y="18" />
  </connection>
</node>
<node id="114">
  <position x="17" y="18" />
  <connection refid="115">
    <position x="17" y="18" />
    <position x="17" y="18" />
    <position x="17" y="13" />
    <position x="17" y="13" />
  </connection>
</node>
<node id="115">
  <position x="17" y="13" />
  <connection refid="116">
    <position x="17" y="13" />
    <position x="17" y="13" />
    <position x="17" y="8" />
    <position x="17" y="8" />
  </connection>
</node>
<node id="116">
  <position x="17" y="8" />
  <connection refid="112">
    <position x="17" y="8" />
    <position x="17" y="8" />
    <position x="17" y="3" />
    <position x="17" y="3" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="117" height="4" width="3" line="39" order="10">
  <position x="43" y="48" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="133" name="AND">
        <position x="43" y="49" />
        <position x="40" y="49" />
        <position x="40" y="49" />
        <position x="39" y="49" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="134" name="AND">
        <position x="43" y="51" />
        <position x="42" y="51" />
        <position x="42" y="51" />
        <position x="41" y="51" />
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
<node id="118">
  <position x="51" y="49" />
  <connection refid="117" name="OR">
    <position x="51" y="49" />
    <position x="47" y="49" />
    <position x="47" y="49" />
    <position x="46" y="49" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="119" height="4" width="3" line="114" order="34">
  <position x="43" y="53" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="135" name="AND">
        <position x="43" y="54" />
        <position x="40" y="54" />
        <position x="40" y="54" />
        <position x="39" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="136" name="AND">
        <position x="43" y="56" />
        <position x="42" y="56" />
        <position x="42" y="56" />
        <position x="41" y="56" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="120" height="4" width="3" line="58" order="15">
  <position x="43" y="58" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="137" name="AND">
        <position x="43" y="59" />
        <position x="40" y="59" />
        <position x="40" y="59" />
        <position x="39" y="59" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="138" name="AND">
        <position x="43" y="61" />
        <position x="42" y="61" />
        <position x="42" y="61" />
        <position x="41" y="61" />
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
<node id="121">
  <position x="53" y="61" />
  <connection refid="120" name="OR">
    <position x="53" y="61" />
    <position x="47" y="61" />
    <position x="47" y="59" />
    <position x="46" y="59" />
  </connection>
</node>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="122" height="4" width="3" line="73" order="20">
  <position x="43" y="64" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="139" name="AND">
        <position x="43" y="65" />
        <position x="40" y="65" />
        <position x="40" y="65" />
        <position x="39" y="65" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="140" name="AND">
        <position x="43" y="67" />
        <position x="42" y="67" />
        <position x="42" y="67" />
        <position x="41" y="67" />
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
<node id="123">
  <position x="56" y="66" />
  <connection refid="122" name="OR">
    <position x="56" y="66" />
    <position x="47" y="66" />
    <position x="47" y="65" />
    <position x="46" y="65" />
  </connection>
</node>
<inVariable name="pozice_horizontalni_2" type="INT" id="124">
  <position x="0" y="2" />
</inVariable>
<inVariable name="pos_hor_enable_2" type="BOOL" id="125">
  <position x="-9" y="6" />
</inVariable>
<inVariable name="pos_hor_enable_1" type="BOOL" id="126">
  <position x="-8" y="42" />
</inVariable>
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="127" height="4" width="3" line="94" order="27">
  <position x="43" y="43" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="131" name="AND">
        <position x="43" y="44" />
        <position x="40" y="44" />
        <position x="40" y="44" />
        <position x="39" y="44" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="132" name="AND">
        <position x="43" y="46" />
        <position x="42" y="46" />
        <position x="42" y="46" />
        <position x="41" y="46" />
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
<block name="OR" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="128" height="4" width="3" line="24" order="5">
  <position x="43" y="38" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="129" name="AND">
        <position x="43" y="39" />
        <position x="40" y="39" />
        <position x="40" y="38" />
        <position x="39" y="38" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="130" name="AND">
        <position x="43" y="41" />
        <position x="42" y="41" />
        <position x="42" y="41" />
        <position x="41" y="41" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="129" height="4" width="4" line="11" order="2">
  <position x="35" y="37" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="100" name="EQ">
        <position x="35" y="38" />
        <position x="34" y="38" />
        <position x="34" y="3" />
        <position x="28" y="3" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="145">
        <position x="35" y="40" />
        <position x="32" y="40" />
        <position x="32" y="40" />
        <position x="31" y="40" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="130" height="4" width="4" line="21" order="4">
  <position x="37" y="40" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="6" name="EQ">
        <position x="37" y="41" />
        <position x="31" y="41" />
        <position x="31" y="39" />
        <position x="26" y="39" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="147">
        <position x="37" y="43" />
        <position x="32" y="43" />
        <position x="32" y="48" />
        <position x="32" y="48" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="131" height="4" width="4" line="85" order="24">
  <position x="35" y="43" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="102" name="EQ">
        <position x="35" y="44" />
        <position x="33" y="44" />
        <position x="33" y="8" />
        <position x="28" y="8" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="144">
        <position x="35" y="46" />
        <position x="32" y="46" />
        <position x="32" y="46" />
        <position x="31" y="46" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="132" height="4" width="4" line="91" order="26">
  <position x="37" y="45" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="8" name="EQ">
        <position x="37" y="46" />
        <position x="31" y="46" />
        <position x="31" y="44" />
        <position x="26" y="44" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="147">
        <position x="37" y="48" />
        <position x="34" y="48" />
        <position x="34" y="48" />
        <position x="32" y="48" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="133" height="4" width="4" line="30" order="7">
  <position x="35" y="48" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="103" name="EQ">
        <position x="35" y="49" />
        <position x="32" y="49" />
        <position x="32" y="13" />
        <position x="28" y="13" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="143">
        <position x="35" y="51" />
        <position x="32" y="51" />
        <position x="32" y="51" />
        <position x="31" y="51" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="134" height="4" width="4" line="36" order="9">
  <position x="37" y="50" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="9" name="EQ">
        <position x="37" y="51" />
        <position x="31" y="51" />
        <position x="31" y="49" />
        <position x="26" y="49" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="148">
        <position x="37" y="53" />
        <position x="34" y="53" />
        <position x="34" y="53" />
        <position x="32" y="53" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="135" height="4" width="4" line="105" order="31">
  <position x="35" y="53" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="104" name="EQ">
        <position x="35" y="54" />
        <position x="31" y="54" />
        <position x="31" y="18" />
        <position x="28" y="18" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="142">
        <position x="35" y="56" />
        <position x="32" y="56" />
        <position x="32" y="56" />
        <position x="31" y="56" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="136" height="4" width="4" line="111" order="33">
  <position x="37" y="55" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="10" name="EQ">
        <position x="37" y="56" />
        <position x="31" y="56" />
        <position x="31" y="54" />
        <position x="26" y="54" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="149">
        <position x="37" y="58" />
        <position x="34" y="58" />
        <position x="34" y="58" />
        <position x="32" y="58" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="137" height="4" width="4" line="45" order="12">
  <position x="35" y="58" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="105" name="EQ">
        <position x="35" y="59" />
        <position x="30" y="59" />
        <position x="30" y="23" />
        <position x="28" y="23" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="141">
        <position x="35" y="61" />
        <position x="32" y="61" />
        <position x="32" y="61" />
        <position x="31" y="61" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="138" height="4" width="4" line="55" order="14">
  <position x="37" y="60" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="11" name="EQ">
        <position x="37" y="61" />
        <position x="31" y="61" />
        <position x="31" y="59" />
        <position x="26" y="59" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="150">
        <position x="37" y="63" />
        <position x="34" y="63" />
        <position x="34" y="63" />
        <position x="32" y="63" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="139" height="4" width="4" line="64" order="17">
  <position x="35" y="64" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="110" name="EQ">
        <position x="35" y="65" />
        <position x="29" y="65" />
        <position x="29" y="29" />
        <position x="28" y="29" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="141">
        <position x="35" y="67" />
        <position x="31" y="67" />
        <position x="31" y="61" />
        <position x="31" y="61" />
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
<block name="AND" instance="" function="true" extensible="true" hiddenPins="true" operator="true" id="140" height="4" width="4" line="70" order="19">
  <position x="37" y="66" />
  <inVariables>
    <variable name="IN1" type="ANY_BIT">
      <connection refid="16" name="EQ">
        <position x="37" y="67" />
        <position x="31" y="67" />
        <position x="31" y="65" />
        <position x="26" y="65" />
      </connection>
    </variable>
    <variable name="IN2" type="ANY_BIT">
      <connection refid="146">
        <position x="37" y="69" />
        <position x="34" y="69" />
        <position x="34" y="69" />
        <position x="32" y="69" />
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
<node id="141">
  <position x="31" y="61" />
  <connection refid="142">
    <position x="31" y="61" />
    <position x="31" y="61" />
    <position x="31" y="56" />
    <position x="31" y="56" />
  </connection>
</node>
<node id="142">
  <position x="31" y="56" />
  <connection refid="143">
    <position x="31" y="56" />
    <position x="31" y="56" />
    <position x="31" y="51" />
    <position x="31" y="51" />
  </connection>
</node>
<node id="143">
  <position x="31" y="51" />
  <connection refid="144">
    <position x="31" y="51" />
    <position x="31" y="51" />
    <position x="31" y="46" />
    <position x="31" y="46" />
  </connection>
</node>
<node id="144">
  <position x="31" y="46" />
  <connection refid="145">
    <position x="31" y="46" />
    <position x="31" y="46" />
    <position x="31" y="40" />
    <position x="31" y="40" />
  </connection>
</node>
<node id="145">
  <position x="31" y="40" />
  <connection refid="125">
    <position x="31" y="40" />
    <position x="31" y="40" />
    <position x="31" y="34" />
    <position x="19" y="34" />
    <position x="19" y="7" />
    <position x="14" y="7" />
  </connection>
</node>
<node id="146">
  <position x="32" y="69" />
  <connection refid="126">
    <position x="32" y="69" />
    <position x="18" y="69" />
    <position x="18" y="43" />
    <position x="14" y="43" />
  </connection>
</node>
<node id="147">
  <position x="32" y="48" />
  <connection refid="148">
    <position x="32" y="48" />
    <position x="32" y="48" />
    <position x="32" y="53" />
    <position x="32" y="53" />
  </connection>
</node>
<node id="148">
  <position x="32" y="53" />
  <connection refid="149">
    <position x="32" y="53" />
    <position x="32" y="53" />
    <position x="32" y="58" />
    <position x="32" y="58" />
  </connection>
</node>
<node id="149">
  <position x="32" y="58" />
  <connection refid="150">
    <position x="32" y="58" />
    <position x="32" y="58" />
    <position x="32" y="63" />
    <position x="32" y="63" />
  </connection>
</node>
<node id="150">
  <position x="32" y="63" />
  <connection refid="146">
    <position x="32" y="63" />
    <position x="32" y="63" />
    <position x="32" y="69" />
    <position x="32" y="69" />
  </connection>
</node>
<outVariable name="pos_hor_enable_1" type="BOOL" id="151" order="40">
  <position x="79" y="8" />
  <connection refid="153">
    <position x="80" y="9" />
    <position x="77" y="9" />
    <position x="77" y="9" />
    <position x="74" y="9" />
  </connection>
</outVariable>
<outVariable name="pos_hor_enable_2" type="BOOL" id="152" negated="true" order="41">
  <position x="79" y="12" />
  <connection refid="153">
    <position x="80" y="13" />
    <position x="74" y="13" />
    <position x="74" y="9" />
    <position x="74" y="9" />
  </connection>
</outVariable>
<node id="153">
  <position x="74" y="9" />
  <connection refid="154" name="Q1">
    <position x="74" y="9" />
    <position x="71" y="9" />
    <position x="71" y="9" />
    <position x="64" y="9" />
  </connection>
</node>
<block name="RS" instance="RS_ENABLE_POS_HOR_1" id="154" height="6" width="5" line="125" order="39">
  <position x="59" y="6" />
  <inVariables>
    <variable name="S" type="BOOL">
    </variable>
    <variable name="R1" type="BOOL">
    </variable>
  </inVariables>
  <outVariables>
    <variable name="Q1" type="BOOL">
    </variable>
  </outVariables>
</block>
<block name="zakladacUlozVyrobek" instance="uloz01" id="155" height="6" width="15" line="218" order="73">
  <position x="115" y="97" />
  <inVariables>
    <variable name="RESET" type="BOOL">
      <connection refid="156">
        <position x="115" y="100" />
        <position x="110" y="100" />
        <position x="110" y="95" />
        <position x="16" y="95" />
        <position x="16" y="101" />
        <position x="15" y="101" />
      </connection>
    </variable>
    <variable name="ULOZIT" type="BOOL">
      <connection refid="91" name="Q">
        <position x="115" y="102" />
        <position x="110" y="102" />
        <position x="110" y="102" />
        <position x="106" y="102" />
      </connection>
    </variable>
  </inVariables>
</block>
<node id="156">
  <position x="15" y="101" />
  <connection refid="34">
    <position x="15" y="101" />
    <position x="15" y="101" />
    <position x="15" y="100" />
    <position x="13" y="100" />
  </connection>
</node>
</fbd>
{/NOCODE}
//LVD
VAR
(* 240	*)	_Tmp_For_Back_Conn_3	:	INT;
(*1020	*)	_Tmp_For_Back_Conn_2	:	BOOL;
(* 408	*)	_Tmp_For_Back_Conn_1	:	BOOL;
END_VAR

//TVD
VAR_TEMP
(*1567	*)	_Nod_Tmp_54	:	INT;
(*1824	*)	_Fun_Tmp_IN1_65_1	:	BOOL;
(*2208	*)	_Nod_Tmp_52	:	BOOL;
(*1795	*)	_Fun_Tmp_IN1_61_1	:	BOOL;
(* 229	*)	_Nod_Tmp_31	:	INT;
(*1853	*)	_Fun_Tmp_IN1_62_1	:	BOOL;
(*2219	*)	_Nod_Tmp_63	:	BOOL;
(*1795	*)	_Fun_Tmp_IN2_61_2	:	BOOL;
(*1209	*)	_Fun_Tmp_IN1_40_1	:	BOOL;
(*1940	*)	_Fun_Tmp_IN1_59_1	:	BOOL;
(*1614	*)	_Fun_Tmp_IN1_56_1	:	BOOL;
(*1969	*)	_Fun_Tmp_IN1_57_1	:	BOOL;
(*1614	*)	_Fun_Tmp_IN2_56_2	:	BOOL;
(*1643	*)	_Nod_Tmp_55	:	BOOL;
(*2056	*)	_Fun_Tmp_IN1_51_1	:	BOOL;
(*1681	*)	_Fun_Tmp_IN1_47_1	:	BOOL;
(* 238	*)	_Nod_Tmp_50	:	INT;
(*2085	*)	_Fun_Tmp_IN1_48_1	:	BOOL;
(*1681	*)	_Fun_Tmp_IN2_47_2	:	BOOL;
(*1710	*)	_Nod_Tmp_46	:	BOOL;
(*2114	*)	_Fun_Tmp_IN1_44_1	:	BOOL;
(*1719	*)	_Fun_Tmp_IN1_41_1	:	BOOL;
(*2143	*)	_Fun_Tmp_IN1_42_1	:	BOOL;
(*1719	*)	_Fun_Tmp_IN2_41_2	:	BOOL;
(*1748	*)	_Nod_Tmp_27	:	BOOL;
(*1882	*)	_Fun_Tmp_IN1_38_1	:	BOOL;
(*1766	*)	_Fun_Tmp_IN1_35_1	:	BOOL;
(*1911	*)	_Fun_Tmp_IN1_36_1	:	BOOL;
(*1766	*)	_Fun_Tmp_IN2_35_2	:	BOOL;
(*1262	*)	_Fun_Tmp_IN1_34_1	:	BOOL;
(*1998	*)	_Fun_Tmp_IN1_32_1	:	BOOL;
(*1652	*)	_Fun_Tmp_IN1_28_1	:	BOOL;
(*2027	*)	_Fun_Tmp_IN1_29_1	:	BOOL;
(*1652	*)	_Fun_Tmp_IN2_28_2	:	BOOL;
(*1307	*)	_Fun_Tmp_IN1_26_1	:	BOOL;
(*2282	*)	_Nod_Tmp_24	:	BOOL;
(* 673	*)	_Nod_Tmp_20	:	INT;
(* 757	*)	_Fun_Tmp_IN1_16_1	:	BOOL;
(* 718	*)	_Nod_Tmp_21	:	BOOL;
(* 727	*)	_Nod_Tmp_18	:	BOOL;
(* 736	*)	_Nod_Tmp_12	:	BOOL;
(* 810	*)	_Fun_Tmp_IN1_14_1	:	BOOL;
(* 855	*)	_Fun_Tmp_IN1_11_1	:	BOOL;
(* 327	*)	_Nod_Tmp_9	:	BOOL;
(* 339	*)	_Fun_Tmp_IN1_5_1	:	BOOL;
(*2327	*)	_Nod_Tmp_4	:	BOOL;
(*1037	*)	_Nod_Tmp_2	:	BOOL;
END_VAR

//NC
//N000
(*1757	*)	LD 	pozice_horizontalni_2
(*1567	*)	ST	_Nod_Tmp_54
(*1385	*)	LD 	_Nod_Tmp_54
(*1393	*)	EQ 	1
(*1828	*)	ST 	_Fun_Tmp_IN1_65_1
(*1760	*)	LD 	pos_hor_enable_2
(*2208	*)	ST	_Nod_Tmp_52
(*1828	*)	LD 	_Fun_Tmp_IN1_65_1
(*1836	*)	AND 	_Nod_Tmp_52
(*1799	*)	ST 	_Fun_Tmp_IN1_61_1
(*  40	*)	LD 	pozice_horizontalni
(* 229	*)	ST	_Nod_Tmp_31
(*  47	*)	LD 	_Nod_Tmp_31
(*  55	*)	EQ 	1
(*1857	*)	ST 	_Fun_Tmp_IN1_62_1
(*1763	*)	LD 	pos_hor_enable_1
(*2219	*)	ST	_Nod_Tmp_63
(*1857	*)	LD 	_Fun_Tmp_IN1_62_1
(*1865	*)	AND 	_Nod_Tmp_63
(*1807	*)	ST 	_Fun_Tmp_IN2_61_2
(*1799	*)	LD 	_Fun_Tmp_IN1_61_1
(*1807	*)	OR 	_Fun_Tmp_IN2_61_2
(*1213	*)	ST 	_Fun_Tmp_IN1_40_1
(*1444	*)	LD 	_Nod_Tmp_54
(*1452	*)	EQ 	3
(*1944	*)	ST 	_Fun_Tmp_IN1_59_1
(*1944	*)	LD 	_Fun_Tmp_IN1_59_1
(*1952	*)	AND 	_Nod_Tmp_52
(*1618	*)	ST 	_Fun_Tmp_IN1_56_1
(* 106	*)	LD 	_Nod_Tmp_31
(* 114	*)	EQ 	3
(*1973	*)	ST 	_Fun_Tmp_IN1_57_1
(*1973	*)	LD 	_Fun_Tmp_IN1_57_1
(*1981	*)	AND 	_Nod_Tmp_63
(*1626	*)	ST 	_Fun_Tmp_IN2_56_2
(*1618	*)	LD 	_Fun_Tmp_IN1_56_1
(*1626	*)	OR 	_Fun_Tmp_IN2_56_2
(*1643	*)	ST	_Nod_Tmp_55
(*1500	*)	LD 	_Nod_Tmp_54
(*1508	*)	EQ 	5
(*2060	*)	ST 	_Fun_Tmp_IN1_51_1
(*2060	*)	LD 	_Fun_Tmp_IN1_51_1
(*2068	*)	AND 	_Nod_Tmp_52
(*1685	*)	ST 	_Fun_Tmp_IN1_47_1
//N003
(* 240	*)	LD	_Tmp_For_Back_Conn_3
//N000
(* 238	*)	ST	_Nod_Tmp_50
(* 162	*)	LD 	_Nod_Tmp_50
(* 170	*)	EQ 	5
(*2089	*)	ST 	_Fun_Tmp_IN1_48_1
(*2089	*)	LD 	_Fun_Tmp_IN1_48_1
(*2097	*)	AND 	_Nod_Tmp_63
(*1693	*)	ST 	_Fun_Tmp_IN2_47_2
(*1685	*)	LD 	_Fun_Tmp_IN1_47_1
(*1693	*)	OR 	_Fun_Tmp_IN2_47_2
(*1710	*)	ST	_Nod_Tmp_46
(*1540	*)	LD 	_Nod_Tmp_54
(*1548	*)	EQ 	15
(*2118	*)	ST 	_Fun_Tmp_IN1_44_1
(*2118	*)	LD 	_Fun_Tmp_IN1_44_1
(*2126	*)	AND 	_Nod_Tmp_52
(*1723	*)	ST 	_Fun_Tmp_IN1_41_1
(* 202	*)	LD 	_Nod_Tmp_50
(* 210	*)	EQ 	15
(*2147	*)	ST 	_Fun_Tmp_IN1_42_1
(*2147	*)	LD 	_Fun_Tmp_IN1_42_1
(*2155	*)	AND 	_Nod_Tmp_63
(*1731	*)	ST 	_Fun_Tmp_IN2_41_2
(*1723	*)	LD 	_Fun_Tmp_IN1_41_1
(*1731	*)	OR 	_Fun_Tmp_IN2_41_2
(*1748	*)	ST	_Nod_Tmp_27
(*1213	*)	LD 	_Fun_Tmp_IN1_40_1
(*1221	*)	OR 	_Nod_Tmp_55
(*1229	*)	OR 	_Nod_Tmp_46
(*1237	*)	OR 	_Nod_Tmp_27
(*1245	*)	OR 	motor_hor_0
(*   4	*)	ST 	poziceMotoru_hor_0
(*1416	*)	LD 	_Nod_Tmp_54
(*1424	*)	EQ 	2
(*1886	*)	ST 	_Fun_Tmp_IN1_38_1
(*1886	*)	LD 	_Fun_Tmp_IN1_38_1
(*1894	*)	AND 	_Nod_Tmp_52
(*1770	*)	ST 	_Fun_Tmp_IN1_35_1
(*  78	*)	LD 	_Nod_Tmp_31
(*  86	*)	EQ 	2
(*1915	*)	ST 	_Fun_Tmp_IN1_36_1
(*1915	*)	LD 	_Fun_Tmp_IN1_36_1
(*1923	*)	AND 	_Nod_Tmp_63
(*1778	*)	ST 	_Fun_Tmp_IN2_35_2
(*1770	*)	LD 	_Fun_Tmp_IN1_35_1
(*1778	*)	OR 	_Fun_Tmp_IN2_35_2
(*1266	*)	ST 	_Fun_Tmp_IN1_34_1
(*1266	*)	LD 	_Fun_Tmp_IN1_34_1
(*1274	*)	OR 	_Nod_Tmp_55
(*1282	*)	OR 	_Nod_Tmp_27
(*1290	*)	OR 	motor_hor_1
(*  13	*)	ST 	poziceMotoru_hor_1
(*1472	*)	LD 	_Nod_Tmp_54
(*1480	*)	EQ 	4
(*2002	*)	ST 	_Fun_Tmp_IN1_32_1
(*2002	*)	LD 	_Fun_Tmp_IN1_32_1
(*2010	*)	AND 	_Nod_Tmp_52
(*1656	*)	ST 	_Fun_Tmp_IN1_28_1
(* 134	*)	LD 	_Nod_Tmp_31
(* 142	*)	EQ 	4
(*2031	*)	ST 	_Fun_Tmp_IN1_29_1
(*2031	*)	LD 	_Fun_Tmp_IN1_29_1
(*2039	*)	AND 	_Nod_Tmp_63
(*1664	*)	ST 	_Fun_Tmp_IN2_28_2
(*1656	*)	LD 	_Fun_Tmp_IN1_28_1
(*1664	*)	OR 	_Fun_Tmp_IN2_28_2
(*1311	*)	ST 	_Fun_Tmp_IN1_26_1
(*1311	*)	LD 	_Fun_Tmp_IN1_26_1
(*1319	*)	OR 	_Nod_Tmp_46
(*1327	*)	OR 	_Nod_Tmp_27
(*1335	*)	OR 	motor_hor_2
(*  22	*)	ST 	poziceMotoru_hor_2
(*1356	*)	LD 	_Nod_Tmp_27
(*1364	*)	OR 	motor_hor_3
(*  31	*)	ST 	poziceMotoru_hor_3
//N001
(*2291	*)	CAL	RS_ENABLE_POS_HOR_1()
(*2291	*)	LD 	RS_ENABLE_POS_HOR_1.Q1
(*2282	*)	ST	_Nod_Tmp_24
(*2264	*)	ST 	pos_hor_enable_1
(*2282	*)	LD	_Nod_Tmp_24
(*2273	*)	STN	pos_hor_enable_2
//N002
(* 484	*)	LD 	pozice_vertikalni
(* 673	*)	ST	_Nod_Tmp_20
(* 491	*)	LD 	_Nod_Tmp_20
(* 499	*)	EQ 	1
(* 761	*)	ST 	_Fun_Tmp_IN1_16_1
(* 550	*)	LD 	_Nod_Tmp_20
(* 558	*)	EQ 	3
(* 718	*)	ST	_Nod_Tmp_21
(* 606	*)	LD 	_Nod_Tmp_20
(* 614	*)	EQ 	5
(* 727	*)	ST	_Nod_Tmp_18
(* 646	*)	LD 	_Nod_Tmp_20
(* 654	*)	EQ 	15
(* 736	*)	ST	_Nod_Tmp_12
(* 761	*)	LD 	_Fun_Tmp_IN1_16_1
(* 769	*)	OR 	_Nod_Tmp_21
(* 777	*)	OR 	_Nod_Tmp_18
(* 785	*)	OR 	_Nod_Tmp_12
(* 793	*)	OR 	motor_ver_0
(* 448	*)	ST 	poziceMotoru_ver_0
(* 522	*)	LD 	_Nod_Tmp_20
(* 530	*)	EQ 	2
(* 814	*)	ST 	_Fun_Tmp_IN1_14_1
(* 814	*)	LD 	_Fun_Tmp_IN1_14_1
(* 822	*)	OR 	_Nod_Tmp_21
(* 830	*)	OR 	_Nod_Tmp_12
(* 838	*)	OR 	motor_ver_1
(* 457	*)	ST 	poziceMotoru_ver_1
(* 578	*)	LD 	_Nod_Tmp_20
(* 586	*)	EQ 	4
(* 859	*)	ST 	_Fun_Tmp_IN1_11_1
(* 859	*)	LD 	_Fun_Tmp_IN1_11_1
(* 867	*)	OR 	_Nod_Tmp_18
(* 875	*)	OR 	_Nod_Tmp_12
(* 883	*)	OR 	motor_ver_2
(* 466	*)	ST 	poziceMotoru_ver_2
(* 904	*)	LD 	_Nod_Tmp_12
(* 912	*)	OR 	motor_ver_3
(* 475	*)	ST 	poziceMotoru_ver_3
//N000
(* 249	*)	LD	_Nod_Tmp_31
//N003
(* 240	*)	ST	_Tmp_For_Back_Conn_3
//N004
(* 312	*)	LD 	true
(* 327	*)	ST	_Nod_Tmp_9
(* 303	*)	ST 	zhaveniMotoru_hor
(* 327	*)	LD	_Nod_Tmp_9
(* 318	*)	ST 	zhaveniMotoru_ver
//N005
(*1136	*)	LD 	zapnout_posuv2
(*1144	*)	OR 	zapnout_posuv
(*1152	*)	OR 	zapnout_posuv_3
(* 285	*)	ST 	startMotoru
//N006
(* 383	*)	CAL	toggleChapadla()
(* 383	*)	LD 	toggleChapadla.Q1
(* 374	*)	ST 	celistiChapadlo
//N007
(*1173	*)	LD 	posuvChapadlo_ver1
(*1181	*)	OR 	posuvChapadlo_ver2
(*1189	*)	OR 	posuvChapadlo_ver3
(* 999	*)	ST 	posuvChapadlo_ver
//N008
(*1053	*)	LD 	vyber_posuvu
(*1061	*)	OR 	vyber_posuvu2
(* 343	*)	ST 	_Fun_Tmp_IN1_5_1
(* 343	*)	LD 	_Fun_Tmp_IN1_5_1
(* 351	*)	AND 	vertikalniManipulacePovolena
(* 294	*)	ST 	vyberMotoru
//N009
(* 371	*)	LD 	startZakladace
(*2327	*)	ST	_Nod_Tmp_4
(* 400	*)	LD 	_Nod_Tmp_4
(* 408	*)	OR 	_Tmp_For_Back_Conn_1
(*1008	*)	ST 	hledani01.VYHLEDAT
(*1008	*)	CAL	hledani01(RESET:=_Tmp_For_Back_Conn_2)
(* 990	*)	LD 	vertikalniManipulacePovolena
(*1037	*)	ST	_Nod_Tmp_2
(* 957	*)	LD 	hledani01.MAM
(* 965	*)	AND 	pohybDokoncen_hor
(* 973	*)	AND 	_Nod_Tmp_2
(*1078	*)	ST 	R_TRIG_01.CLK
(*1078	*)	CAL	R_TRIG_01()
(*1095	*)	CAL	zjisti01(START:=R_TRIG_01.Q)
(*1112	*)	CAL	R_TRIG_02(CLK:=zjisti01.PATRO_NAJITO)
(*2304	*)	CAL	uloz01(RESET:=_Nod_Tmp_4, ULOZIT:=R_TRIG_02.Q)
(*1037	*)	LD	_Nod_Tmp_2
//N010
(*1020	*)	ST	_Tmp_For_Back_Conn_2
//N009
(*1008	*)	LD 	hledani01.NEMAM
//N011
(* 408	*)	ST	_Tmp_For_Back_Conn_1

END_PROGRAM
