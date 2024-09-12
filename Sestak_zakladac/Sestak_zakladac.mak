; Warning: This file is managed by Mosaic development environment.
; It is not recommended to change it manualy!

#program Sestak_zakladac , V1.0
;**************************************
;<ActionName/>
;<Programmer/>
;<FirmName/>
;<Copyright/>
;**************************************
;<History>
;</History>
;**************************************
#useoption CPM = 9              ; CPM type: K
#useoption RemZone = 0          ; the remanent zone length
#useoption AlarmTime = 150      ; first alarm [milisec]
#useoption MaxCycleTime = 750   ; maximum cycle [milisec]
#useoption PLCstart = 1         ; cold start
#useoption AutoSummerTime = 0   ; internal PLC clock does not switch to daylight saving time
#useoption RestartOnError = 0   ; PLC will not be restarted after hard error

#uselib "LocalLib\StdLib_V22_20180619.mlb"
#uselib "LocalLib\SysLib_V50_20230202.mlb"
#uselib "LocalLib\ToStringLib_V13_20110203.mlb"
#uselib "LocalLib\FileLib_V29_20220201.mlb"
#uselib "LocalLib\ComLib_V38_20230420.mlb"
#uselib "LocalLib\ConvertLib_V25_20220831.mlb"
#uselib "LocalLib\CoolMasterLib_V11_20140620.mlb"
#endlibs

;**************************************
#usefile "PanelMaker\DeklarPT.mos", 'auto'
#usefile "Sysgen\CIBMaker.st", 'auto'
#usefile "SysGen\HWConfig.ST", 'auto'
#usefile "Sysgen\CIBMaker.mos", 'auto'
#usefile "SysGen\Sestak_zakladac.hwc", 'auto'
#usefile "..\SinZakladac.hwn", 'auto'
#usefile "SESTAK_ZAKLADAC.ST"
#usefile "zakladacEncodeInt.ST"
#usefile "PanelMaker\OI1073.mos", 'auto'
#usefile "prgZakladacNew.ST"
#usefile "Sestak_zakladac.mcf", 'auto'
