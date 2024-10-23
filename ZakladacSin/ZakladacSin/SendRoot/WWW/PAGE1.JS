
function RefreshCam(ipcamimg, elementid, url, t, d) {var o=document.getElementById(elementid);if(o){o.setAttribute("src",eval(ipcamimg+'.src'));if(o.parentNode.parentNode.style.visibility!='hidden')setTimeout(ipcamimg+".src = \""+url+d+Math.random()+"\"", t);}}
function SetBg(name, imag) {var obj = document.getElementById(name); obj.style.backgroundImage = imag == '' ? '' : 'url("IMAGES/'+imag+'")';}
function SetCond(obj, val) {if(obj != val) obj = val;}
function GetColor(val) {var tmp = '000000'+parseInt(parseInt(((val << 16) & 0xFF0000) | (val & 0xFF00) | ((val >> 16) & 0xFF))).toString(16); return '#'+tmp.substr(tmp.length-6,6);}
function GetDateByFormat(e,a){for(var s=e.split(/([YMDhms]+)/),t=a.split(/([0-9]+)/),r="",n="0",c="0",p="0",h="0",I="0",b="0",i=1;i<Math.min(s.length,t.length);i+=2)switch(s[i].charAt(0)){case"Y":r=parseInt(t[i]);break;case"M":n=parseInt(t[i]);break;case"D":c=parseInt(t[i]);break;case"h":p=parseInt(t[i]);break;case"m":h=parseInt(t[i]);break;case"s":I=parseInt(t[i]);break;case"z":b=t[i]}return b=parseInt((b+"00").slice(0,4)),"-"==t[0]&&(p*=-1,h*=-1,I*=-1,b*=-1),new Date(r,n,c,p,h,I,b)}
function CheckValueLimits(value,type,format,mmin,mmax) {switch(type) {case 0:value = parseFloat(value);mnin  = parseFloat(mmin);mmax  = parseFloat(mmax);break;case 1:value = parseInt(value, 16);mnin  = parseInt(mmin, 16);mmax  = parseInt(mmax, 16);break;case 2:value = GetDateByFormat(format, value);mmin  = GetDateByFormat(format, mmin);mmax  = GetDateByFormat(format, mmax);break;}return value >= mmin && value <= mmax;}
var xmlhttpGET  = null;
var xmlhttpPOST = null;
var gNewLoc='';function GetXML(e,t){if(window.XMLHttpRequest){xmlhttpGET=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpGET=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpGET!=null){xmlhttpGET.onreadystatechange=onResponse;if(t){xmlhttpGET.open("POST",e,true);xmlhttpGET.setRequestHeader("Content-type","application/x-www-form-urlencoded")}else{xmlhttpGET.open("GET",e,true)}xmlhttpGET.setRequestHeader("x-tecomat","data");xmlhttpGET.send(t)}else{alert("Your browser does not support XMLHTTP.")}}
function PostXML(e,t,l){if(window.XMLHttpRequest){xmlhttpPOST=new XMLHttpRequest}else if(window.ActiveXObject){xmlhttpPOST=new ActiveXObject("Microsoft.XMLHTTP")}if(xmlhttpPOST!=null){gNewLoc=l;xmlhttpPOST.onreadystatechange=onPostResponse;xmlhttpPOST.open("POST",e,true);xmlhttpPOST.setRequestHeader("Content-type","application/x-www-form-urlencoded");xmlhttpPOST.send(t)}else{alert("Your browser does not support XMLHTTP.")}}

var g_postInProgress=false;
var UpdateFileSubmit;
function TUpdateFileSubmit(div, name, size) {this.mDiv = div; this.mName = name; this.mSize = size; this.mNum = 0;this.refresh = function() {var sp = ['|','/','-','\\'];this.mDiv.innerHTML=this.mName+' '+sp[this.mNum%4]+' '+ this.mSize;this.mNum++;setTimeout("UpdateFileSubmit.refresh()", 500);};this.refresh();}
function postFileSubmit(sourceForm, colour, warning) {if(sourceForm[0].value) {if(!warning || confirm(warning)) {g_postInProgress = true;for( var x = 0; sourceForm.childNodes[x]; x++ ){if(sourceForm.childNodes[x].style) {if(sourceForm.childNodes[x].style.display == 'none') {sourceForm.childNodes[x].style.display = 'block';if(sourceForm[0].files) {UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].files[0].name,sourceForm[0].files[0].size+'B',0);}else{UpdateFileSubmit = new TUpdateFileSubmit(sourceForm.childNodes[x],sourceForm[0].value.replace(/.*(\/|\\)/, ''),'');}} else sourceForm.childNodes[x].style.display = 'none';}}sourceForm.submit();}else{sourceForm[0].value=''}}}
function SetInputEdited(i, e){var keynum;if(window.event){keynum=e.keyCode;}else if(e.which){keynum=e.which;}InputFocused[i-1]=1;if(keynum!=9&&keynum!=11&&keynum!=16&&keynum !=17){if(keynum==27){InputEdited[i-1]=0; }else{InputEdited[i-1]=1;document.getElementById('INPUT'+i).style.color='#FF0000';}}}
var InputEdited=[];var InputFocused=[];var gCI=[];var gLCI=[]; var gIC=[];var gWatchDog = 0; var gTemp;
function UpdateValue(input, x, color) {
if(input.value != x.getAttribute('VALUE')) input.value = x.getAttribute('VALUE');
if(input.style.color != color) input.style.color = color;
}
function onPostResponse() {
if(!xmlhttpPOST) return;
if(xmlhttpPOST.readyState != 4) return;
if(!xmlhttpPOST.status) return;
if(xmlhttpPOST.status != 200){
alert('Problem posting XML data ' + xmlhttpPOST.statusText + '(' + xmlhttpPOST.status + ')');
}else{if(gNewLoc)document.location.href=gNewLoc;}
}
function msetref(){if(typeof(Storage)!=='undefined'){if(sessionStorage.getItem('__crpg')!=document.location.href)sessionStorage.setItem('__prpg',sessionStorage.getItem('__crpg'));sessionStorage.setItem('__crpg',document.location.href);}}
window.addEventListener('load', msetref);
function BackToReferrer(){
if(typeof(Storage)!=='undefined'){var r = sessionStorage.getItem('__prpg').toLowerCase();if(r=='null'||r==document.location.href.toLowerCase()||r.search('login.xml')!=-1||r.search('logout.xml')!=-1) {
document.location.href='INDEX.XML';
}else{document.location.href=sessionStorage.getItem('__prpg');}}else{document.location.href='INDEX.XML';
}}
function onResponse() {
try {
gWatchDog++;
if(!xmlhttpGET) return;
if(xmlhttpGET.readyState != 4) return;
if(!xmlhttpGET.status) return;
if(xmlhttpGET.status != 200){
alert('Problem retrieving XML data ' + xmlhttpGET.statusText + '(' + xmlhttpGET.status + ')');
document.location.reload(true)
return;}
var access = xmlhttpGET.responseXML.documentElement.getElementsByTagName('ACCESS')[0]; if(!access || access.getAttribute('UCID') != 1729685722) {document.location.reload(true); return;}
var pd = '';
var x=xmlhttpGET.responseXML.documentElement.getElementsByTagName('INPUT');
if(x[0]) {
var Input1 = document.getElementById('INPUT1');
if(x[0].getAttribute('VALUE') == '0') {
SetBg('INPUT1', 'LED_GR_2.PNG');
} else {
SetBg('INPUT1', 'LED_GR_4.PNG');
}
var Input2 = document.getElementById('INPUT2');
if(x[1].getAttribute('VALUE') == '0') {
SetBg('INPUT2', 'LED_GR_2.PNG');
} else {
SetBg('INPUT2', 'LED_GR_4.PNG');
}
var Input3 = document.getElementById('INPUT3');
if(x[2].getAttribute('VALUE') == '0') {
SetBg('INPUT3', 'LED_GR_2.PNG');
} else {
SetBg('INPUT3', 'LED_GR_4.PNG');
}
var Input4 = document.getElementById('INPUT4');
if(x[3].getAttribute('VALUE') == '0') {
SetBg('INPUT4', 'LED_GR_2.PNG');
} else {
SetBg('INPUT4', 'LED_GR_4.PNG');
}
var Input5 = document.getElementById('INPUT5');
if(x[4].getAttribute('VALUE') == '0') {
SetBg('INPUT5', 'LED_GR_2.PNG');
} else {
SetBg('INPUT5', 'LED_GR_4.PNG');
}
var Input6 = document.getElementById('INPUT6');
if(x[5].getAttribute('VALUE') == '0') {
SetBg('INPUT6', 'LED_GR_2.PNG');
} else {
SetBg('INPUT6', 'LED_GR_4.PNG');
}
var Input7 = document.getElementById('INPUT7');
if(x[6].getAttribute('VALUE') == '0') {
SetBg('INPUT7', 'LED_GR_2.PNG');
} else {
SetBg('INPUT7', 'LED_GR_4.PNG');
}
var Input8 = document.getElementById('INPUT8');
if(x[7].getAttribute('VALUE') == '0') {
SetBg('INPUT8', 'LED_GR_2.PNG');
} else {
SetBg('INPUT8', 'LED_GR_4.PNG');
}
var Input9 = document.getElementById('INPUT9');
if(x[8].getAttribute('VALUE') == '0') {
SetBg('INPUT9', 'LED_GR_2.PNG');
} else {
SetBg('INPUT9', 'LED_GR_4.PNG');
}
var Input10 = document.getElementById('INPUT10');
if(x[9].getAttribute('VALUE') == '0') {
SetBg('INPUT10', 'LED_GR_2.PNG');
} else {
SetBg('INPUT10', 'LED_GR_4.PNG');
}
var Input11 = document.getElementById('INPUT11');
if(x[10].getAttribute('VALUE') == '0') {
SetBg('INPUT11', 'LED_GR_2.PNG');
} else {
SetBg('INPUT11', 'LED_GR_4.PNG');
}
var Input12 = document.getElementById('INPUT12');
if(x[11].getAttribute('VALUE') == '0') {
SetBg('INPUT12', 'LED_GR_2.PNG');
} else {
SetBg('INPUT12', 'LED_GR_4.PNG');
}
var Input13 = document.getElementById('INPUT13');
if(x[12].getAttribute('VALUE') == '0') {
SetBg('INPUT13', 'LED_GR_2.PNG');
} else {
SetBg('INPUT13', 'LED_GR_4.PNG');
}
var Input14 = document.getElementById('INPUT14');
if(x[13].getAttribute('VALUE') == '0') {
SetBg('INPUT14', 'LED_GR_2.PNG');
} else {
SetBg('INPUT14', 'LED_GR_4.PNG');
}
var Input15 = document.getElementById('INPUT15');
if(x[14].getAttribute('VALUE') == '0') {
SetBg('INPUT15', 'LED_GR_2.PNG');
} else {
SetBg('INPUT15', 'LED_GR_4.PNG');
}
var Input16 = document.getElementById('INPUT16');
if(x[15].getAttribute('VALUE') == '0') {
SetBg('INPUT16', 'LED_GR_2.PNG');
} else {
SetBg('INPUT16', 'LED_GR_4.PNG');
}
var Input17 = document.getElementById('INPUT17');
if(x[16].getAttribute('VALUE') == '0') {
SetBg('INPUT17', 'LED_GR_2.PNG');
} else {
SetBg('INPUT17', 'LED_GR_4.PNG');
}
var Input18 = document.getElementById('INPUT18');
if(x[17].getAttribute('VALUE') == '0') {
SetBg('INPUT18', 'LED_GR_2.PNG');
} else {
SetBg('INPUT18', 'LED_GR_4.PNG');
}
var Input19 = document.getElementById('INPUT19');
if(x[18].getAttribute('VALUE') == '0') {
SetBg('INPUT19', 'LED_GR_2.PNG');
} else {
SetBg('INPUT19', 'LED_GR_4.PNG');
}
var Input20 = document.getElementById('INPUT20');
if(x[19].getAttribute('VALUE') == '0') {
SetBg('INPUT20', 'LED_GR_2.PNG');
} else {
SetBg('INPUT20', 'LED_GR_4.PNG');
}
var Input21 = document.getElementById('INPUT21');
if(x[20].getAttribute('VALUE') == '0') {
SetBg('INPUT21', 'LED_GR_2.PNG');
} else {
SetBg('INPUT21', 'LED_GR_4.PNG');
}
var Input22 = document.getElementById('INPUT22');
if(x[21].getAttribute('VALUE') == '0') {
SetBg('INPUT22', 'LED_GR_4.PNG');
} else {
SetBg('INPUT22', 'LED_GR_2.PNG');
}
var Input23 = document.getElementById('INPUT23');
if(x[22].getAttribute('VALUE') == '0') {
SetBg('INPUT23', 'LED_CY_2.PNG');
} else {
SetBg('INPUT23', 'LED_CY_4.PNG');
}
var Input24 = document.getElementById('INPUT24');
if(Input24) {Input24.style.backgroundColor = GetColor(x[23].getAttribute('VALUE'));}
} else {document.location.reload(true); return;}
} catch(err) {console.log(err.message)}
if(pd!=''){setTimeout("GetXML('PAGE1.XML','"+pd+"')",1);}else{setTimeout("GetXML('PAGE1.XML')",1000);}}
function FunWatchDog() {
if(gWatchDog > 0 || g_postInProgress) {
gWatchDog = 0;
} else {
document.location.reload(true);
}
setTimeout("FunWatchDog()", 20000);
}


function PostGlobal() {
}
