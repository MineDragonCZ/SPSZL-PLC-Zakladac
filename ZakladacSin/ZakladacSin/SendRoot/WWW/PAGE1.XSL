<?xml version="1.0" encoding="UTF-8" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:dc="http://purl.org/dc/elements/1.1/" version="1.0">
<xsl:output doctype-public="-//W3C//DTD HTML 4.01 STRICT//EN" encoding="UTF-8" />
<xsl:template match="/PAGE">
<html>
<head>
<meta name="viewport" content="width=976" />
<meta name="generator" content="WebMaker" />
<meta name="author" content="Teco a.s." />
<meta http-equiv="pragma" content="no-cache" />
<meta http-equiv="cache-control" content="no-cache, must-revalidate" />
<meta http-equiv="expires" content="0" />
<link rel="shortcut icon" href="FAVICON.ICO" type="image/x-icon" />
<link href="STYLE.CSS" rel="stylesheet" type="text/css" />
<title>
<xsl:value-of select="/PAGE/@TITLE" />
Index</title>
<script src="PAGE1.JS?U=1727420961" language="JavaScript" charset="utf-8" />
<style type="text/css">.mono {font-family: Verdana, Arial, FreeSans, sans-serif;}</style>
</head>
<body onload="GetXML('PAGE1.XML'); FunWatchDog();">
<xsl:if test="1727420961 != ACCESS/@UCID">
<xsl:attribute name="onload">
null;
</xsl:attribute>
<div id="cachewarning" style="text-align: left;"></div>
<script src="REFCLR.JS" language="JavaScript" charset="utf-8"></script>
</xsl:if>
<xsl:if test="1727420961 = ACCESS/@UCID">
<table cellpadding="0" cellspacing="0">
<tr style="height: 40px;">
<!--logo-->
<td id="top_left">
<div id="top_left_div" style="width: 150px;"></div>
&#160;</td>
<!--title-->
<td id="top">
<span id="title">
<xsl:value-of select="/PAGE/@TITLE" />
Index</span>
</td>
</tr>
<tr>
<!--menu-->
<td id="menu">
<div class="pages">
<a href="PAGE1.XML">Index</a>
<br />
</div>
<br />
<div class="pages">
<a href="logout.xml">Logout</a>
</div>
</td>
<!--plan-->
<td id="page">
<div style="background-color:#FFFFFF;position: relative; width: 800px; height: 500px;">
<form action="javascript:PostGlobal();"></form>
<xsl:if test="INPUT[1]/@VALUE = 0">
<div id="INPUT1" style="position: absolute; top: 35px; left: 75px; z-index: 1; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[1]/@VALUE != 0">
<div id="INPUT1" style="position: absolute; top: 35px; left: 75px; z-index: 1; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE = 0">
<div id="INPUT2" style="position: absolute; top: 35px; left: 105px; z-index: 2; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[2]/@VALUE != 0">
<div id="INPUT2" style="position: absolute; top: 35px; left: 105px; z-index: 2; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE = 0">
<div id="INPUT3" style="position: absolute; top: 35px; left: 135px; z-index: 3; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[3]/@VALUE != 0">
<div id="INPUT3" style="position: absolute; top: 35px; left: 135px; z-index: 3; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE = 0">
<div id="INPUT4" style="position: absolute; top: 35px; left: 165px; z-index: 4; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[4]/@VALUE != 0">
<div id="INPUT4" style="position: absolute; top: 35px; left: 165px; z-index: 4; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE = 0">
<div id="INPUT5" style="position: absolute; top: 35px; left: 195px; z-index: 5; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[5]/@VALUE != 0">
<div id="INPUT5" style="position: absolute; top: 35px; left: 195px; z-index: 5; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE = 0">
<div id="INPUT6" style="position: absolute; top: 65px; left: 75px; z-index: 6; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[6]/@VALUE != 0">
<div id="INPUT6" style="position: absolute; top: 65px; left: 75px; z-index: 6; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE = 0">
<div id="INPUT7" style="position: absolute; top: 65px; left: 105px; z-index: 7; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[7]/@VALUE != 0">
<div id="INPUT7" style="position: absolute; top: 65px; left: 105px; z-index: 7; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE = 0">
<div id="INPUT8" style="position: absolute; top: 65px; left: 135px; z-index: 8; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[8]/@VALUE != 0">
<div id="INPUT8" style="position: absolute; top: 65px; left: 135px; z-index: 8; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE = 0">
<div id="INPUT9" style="position: absolute; top: 65px; left: 165px; z-index: 9; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[9]/@VALUE != 0">
<div id="INPUT9" style="position: absolute; top: 65px; left: 165px; z-index: 9; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE = 0">
<div id="INPUT10" style="position: absolute; top: 65px; left: 195px; z-index: 10; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[10]/@VALUE != 0">
<div id="INPUT10" style="position: absolute; top: 65px; left: 195px; z-index: 10; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE = 0">
<div id="INPUT11" style="position: absolute; top: 95px; left: 75px; z-index: 11; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[11]/@VALUE != 0">
<div id="INPUT11" style="position: absolute; top: 95px; left: 75px; z-index: 11; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE = 0">
<div id="INPUT12" style="position: absolute; top: 95px; left: 105px; z-index: 12; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[12]/@VALUE != 0">
<div id="INPUT12" style="position: absolute; top: 95px; left: 105px; z-index: 12; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE = 0">
<div id="INPUT13" style="position: absolute; top: 95px; left: 135px; z-index: 13; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[13]/@VALUE != 0">
<div id="INPUT13" style="position: absolute; top: 95px; left: 135px; z-index: 13; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE = 0">
<div id="INPUT14" style="position: absolute; top: 95px; left: 165px; z-index: 14; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[14]/@VALUE != 0">
<div id="INPUT14" style="position: absolute; top: 95px; left: 165px; z-index: 14; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE = 0">
<div id="INPUT15" style="position: absolute; top: 95px; left: 195px; z-index: 15; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[15]/@VALUE != 0">
<div id="INPUT15" style="position: absolute; top: 95px; left: 195px; z-index: 15; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE = 0">
<div id="INPUT16" style="position: absolute; top: 125px; left: 75px; z-index: 16; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[16]/@VALUE != 0">
<div id="INPUT16" style="position: absolute; top: 125px; left: 75px; z-index: 16; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE = 0">
<div id="INPUT17" style="position: absolute; top: 125px; left: 105px; z-index: 17; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[17]/@VALUE != 0">
<div id="INPUT17" style="position: absolute; top: 125px; left: 105px; z-index: 17; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE = 0">
<div id="INPUT18" style="position: absolute; top: 125px; left: 135px; z-index: 18; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[18]/@VALUE != 0">
<div id="INPUT18" style="position: absolute; top: 125px; left: 135px; z-index: 18; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE = 0">
<div id="INPUT19" style="position: absolute; top: 125px; left: 165px; z-index: 19; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[19]/@VALUE != 0">
<div id="INPUT19" style="position: absolute; top: 125px; left: 165px; z-index: 19; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE = 0">
<div id="INPUT20" style="position: absolute; top: 125px; left: 195px; z-index: 20; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[20]/@VALUE != 0">
<div id="INPUT20" style="position: absolute; top: 125px; left: 195px; z-index: 20; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE = 0">
<div id="INPUT21" style="position: absolute; top: 35px; left: 30px; z-index: 21; background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[21]/@VALUE != 0">
<div id="INPUT21" style="position: absolute; top: 35px; left: 30px; z-index: 21; background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<form style="position: absolute; top: 35px; left: 345px; z-index: 22;">
<xsl:if test="INPUT[22]/@VALUE = 0">
<input id="INPUT22h" type="hidden" name="{INPUT[22]/@NAME}" value="1" />
<div title="start" id="INPUT22" class="imgsub" onclick="PostXML22()" style="background-image: url(IMAGES/LED_GR_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[22]/@VALUE != 0">
<input id="INPUT22h" type="hidden" name="{INPUT[22]/@NAME}" value="0" />
<div title="start" id="INPUT22" class="imgsub" onclick="PostXML22()" style="background-image: url(IMAGES/LED_GR_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 35px; left: 385px; z-index: 23;">
<xsl:if test="INPUT[23]/@VALUE = 0">
<input id="INPUT23h" type="hidden" name="{INPUT[23]/@NAME}" value="1" />
<div title="stop" id="INPUT23" class="imgsub" onclick="PostXML23()" style="background-image: url(IMAGES/LED_RE_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[23]/@VALUE != 0">
<input id="INPUT23h" type="hidden" name="{INPUT[23]/@NAME}" value="0" />
<div title="stop" id="INPUT23" class="imgsub" onclick="PostXML23()" style="background-image: url(IMAGES/LED_RE_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 35px; left: 455px; z-index: 24;">
<xsl:if test="INPUT[24]/@VALUE = 0">
<input id="INPUT24h" type="hidden" name="{INPUT[24]/@NAME}" value="1" />
<div title="automatic" id="INPUT24" class="imgsub" onclick="PostXML24()" style="background-image: url(IMAGES/LED_CY_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[24]/@VALUE != 0">
<input id="INPUT24h" type="hidden" name="{INPUT[24]/@NAME}" value="0" />
<div title="automatic" id="INPUT24" class="imgsub" onclick="PostXML24()" style="background-image: url(IMAGES/LED_CY_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</form>
<form style="position: absolute; top: 35px; left: 535px; z-index: 25;">
<xsl:if test="INPUT[25]/@VALUE = 0">
<input id="INPUT25h" type="hidden" name="{INPUT[25]/@NAME}" value="1" />
<div title="step" id="INPUT25" class="imgsub" onclick="PostXML25()" style="background-image: url(IMAGES/LED_BL_2.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
<xsl:if test="INPUT[25]/@VALUE != 0">
<input id="INPUT25h" type="hidden" name="{INPUT[25]/@NAME}" value="0" />
<div title="step" id="INPUT25" class="imgsub" onclick="PostXML25()" style="background-image: url(IMAGES/LED_BL_4.PNG); line-height: 40px; height: 40px; width: 40px;"></div>
</xsl:if>
</form>
<div style="position: absolute; top: 70px; left: 350px; z-index: 26;">Start</div>
<div style="position: absolute; top: 70px; left: 390px; z-index: 27;">Stop</div>
<div style="position: absolute; top: 70px; left: 440px; z-index: 28;">Automatic</div>
<div style="position: absolute; top: 70px; left: 540px; z-index: 29;">Krok</div>
</div>
</td>
</tr>
<!--bottom-->
<tr style="height: 10px;">
<td id="bottom" colspan="2" style="text-align: center">© 2007 - 2020 Teco a.s.</td>
</tr>
</table>
</xsl:if>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
