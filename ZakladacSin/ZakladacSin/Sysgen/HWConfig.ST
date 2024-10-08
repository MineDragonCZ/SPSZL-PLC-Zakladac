(* Warning *)
(* File is automatically regenerated and all manual changes will be lost. *)
(* ---------------------------------------------------------------------- *)
(* Generated for TC700 *)
(* ********************************************************************** *)
VAR_GLOBAL CONSTANT
  CPU_TYPE   : USINT := 75;
  CPU_CODE   : UINT  := 1014;
END_VAR

TYPE
  TAIStat : STRUCT
    UNF     : BOOL;
    UNR     : BOOL;
    OVR     : BOOL;
    OVF     : BOOL;
    FLS     : BOOL;
    CJC     : BOOL;
    dummy6 {HIDDEN} : BOOL;
    dummy7 {HIDDEN} : BOOL;
    CHC     : BOOL;
    dummy9 {HIDDEN} : BOOL;
    dummy10 {HIDDEN} : BOOL;
    dummy11 {HIDDEN} : BOOL;
    dummy12 {HIDDEN} : BOOL;
    dummy13 {HIDDEN} : BOOL;
    dummy14 {HIDDEN} : BOOL;
    dummy15 {HIDDEN} : BOOL;
  END_STRUCT;

  TAI : STRUCT
    STAT  : TAIStat;
    FS    : INT;
    ENG   : REAL;
    PCT   : REAL;
  END_STRUCT;

  TBIN_8DI : STRUCT
    DI0  : BOOL;
    DI1  : BOOL;
    DI2  : BOOL;
    DI3  : BOOL;
    DI4  : BOOL;
    DI5  : BOOL;
    DI6  : BOOL;
    DI7  : BOOL;
  END_STRUCT;

  TBIN_4DIP  : STRUCT
    DIP0  : BOOL;
    DIP1  : BOOL;
    DIP2  : BOOL;
    DIP3  : BOOL;
  END_STRUCT;

  TBIN_4DIPW : STRUCT
    DIP0  : BOOL;
    DIP1  : BOOL;
    DIP2  : BOOL;
    DIP3  : BOOL;
  END_STRUCT;

  TBIN_12DI : STRUCT
    DI0  : BOOL;
    DI1  : BOOL;
    DI2  : BOOL;
    DI3  : BOOL;
    DI4  : BOOL;
    DI5  : BOOL;
    DI6  : BOOL;
    DI7  : BOOL;
    DI8  : BOOL;
    DI9  : BOOL;
    DI10  : BOOL;
    DI11  : BOOL;
  END_STRUCT;

  TCNTF_IN : STRUCT
    SCNT : UINT;
    VALA : UDINT;
    VALB : UDINT;
  END_STRUCT;

  TCNTF_OUT : STRUCT
    CCNT: UINT; 
    SET : UDINT;
  END_STRUCT;

  TBIN_6DO : STRUCT
    DO0  : BOOL;
    DO1  : BOOL;
    DO2  : BOOL;
    DO3  : BOOL;
    DO4  : BOOL;
    DO5  : BOOL;
  END_STRUCT;

  TBIN_12DO : STRUCT
    DO0  : BOOL;
    DO1  : BOOL;
    DO2  : BOOL;
    DO3  : BOOL;
    DO4  : BOOL;
    DO5  : BOOL;
    DO6  : BOOL;
    DO7  : BOOL;
    DO8  : BOOL;
    DO9  : BOOL;
    DO10  : BOOL;
    DO11  : BOOL;
  END_STRUCT;

  TCHStatistic : STRUCT
    STAT       : USINT;
    ERR        : USINT;
    trueMes    : UDINT;
    falseMes   : UDINT;
  END_STRUCT;

  TETHStatistic_BACnet : STRUCT
    STAT       : USINT;
    ERR        : USINT;
    trueMes    : UDINT;
    falseMes   : UDINT;
  END_STRUCT;

  TCHControl : STRUCT
    CONTROL  : UINT;
  END_STRUCT;

END_TYPE
(* ********************************************************************** *)
(* ---------------------------------------------------------------------- *)
(* CP-1014 *)
VAR_GLOBAL
  r0_p0_Statistic_CH1  AT %X7500 : TCHStatistic;
  r0_p0_Control_CH1    AT %Y7500 : TCHControl;
END_VAR
(* ---------------------------------------------------------------------- *)
(* OI-1073 *)
VAR_GLOBAL
  OI1073_Keyb          : USINT;
  OI1073_VideoRam      : ARRAY [0..79] OF USINT;
END_VAR
(* ---------------------------------------------------------------------- *)
(* MI2-01M *)
VAR_GLOBAL
  r0_p2_Statistic_MI_CIB1 AT %X0   : TCHStatistic;
  r0_p2_Control_MI_CIB1 AT %Y0   : TCHControl;
END_VAR
(* ---------------------------------------------------------------------- *)
(* IR-1057 *)
VAR_GLOBAL
  r0_p3_DI             AT %X10  : TBIN_8DI;
  r0_p3_DIP            AT %X11  : TBIN_4DIP;
  r0_p3_CNT_IN1        AT %X12  : TCNTF_IN;
  r0_p3_CNT_IN2        AT %X22  : TCNTF_IN;
  r0_p3_AI0            AT %X32  : TAI;
  r0_p3_AI1            AT %X44  : TAI;
  r0_p3_AI2            AT %X56  : TAI;
  r0_p3_AI3            AT %X68  : TAI;
  r0_p3_DO             AT %Y2   : TBIN_6DO;
  r0_p3_dummy          AT %Y3   : USINT;
  r0_p3_CNT_OUT1       AT %Y4   : TCNTF_OUT;
  r0_p3_CNT_OUT2       AT %Y10  : TCNTF_OUT;
(* alias *)
  celistiChapadlo      AT r0_p3_DO.DO1;
  color1_potlac        AT r0_p3_DO.DO2;
  color2_save          AT r0_p3_DO.DO3;
  chapadloDolniPoloha  AT r0_p3_DI.DI5;
  chapadloHorniPoloha  AT r0_p3_DI.DI4;
  chapadloRozevrene    AT r0_p3_DI.DI6;
  chapadloSevrene      AT r0_p3_DI.DI7;
  modraLed             AT r0_p3_DO.DO4;
  pohybDokoncen_hor    AT r0_p3_DI.DI1;
  pohybDokoncen_ver    AT r0_p3_DI.DI3;
  posuvChapadlo_ver    AT r0_p3_DO.DO0;
  pripravenKPohybu_hor AT r0_p3_DI.DI0;
  pripravenKPohybu_ver AT r0_p3_DI.DI2;
  zelenaLed            AT r0_p3_DO.DO5;
END_VAR
(* ********************************************************************** *)
(* ---------------------------------------------------------------------- *)
(* IB-1301 *)
VAR_GLOBAL
  r1_p0_DI             AT %X100 : TBIN_12DI;
  r1_p0_DIPW           AT %X102 : TBIN_4DIPW;
  r1_p0_CNT_IN1        AT %X104 : TCNTF_IN;
  r1_p0_CNT_IN2        AT %X114 : TCNTF_IN;
  r1_p0_CNT_OUT1       AT %Y20  : TCNTF_OUT;
  r1_p0_CNT_OUT2       AT %Y26  : TCNTF_OUT;
(* alias *)
  buttonStart          AT r1_p0_DI.DI10;
  buttonStep           AT r1_p0_DI.DI9;
  buttonStop           AT r1_p0_DI.DI7;
  cervenaBarva         AT r1_p0_DI.DI1;
  magnet               AT r1_p0_DI.DI4;
  materialJe           AT r1_p0_DI.DI5;
  modraBarva           AT r1_p0_DI.DI0;
  spinacAutomat        AT r1_p0_DI.DI11;
  stribrnaBarva        AT r1_p0_DI.DI2;
  vertikalniManipulacePovolena AT r1_p0_DI.DI6;
  zelenaBarva          AT r1_p0_DI.DI3;
END_VAR
(* ---------------------------------------------------------------------- *)
(* OS-1401 *)
VAR_GLOBAL
  r1_p1_DO             AT %Y32  : TBIN_12DO;
(* alias *)
  poziceMotoru_hor_0   AT r1_p1_DO.DO4;
  poziceMotoru_hor_1   AT r1_p1_DO.DO5;
  poziceMotoru_hor_2   AT r1_p1_DO.DO6;
  poziceMotoru_hor_3   AT r1_p1_DO.DO7;
  poziceMotoru_ver_0   AT r1_p1_DO.DO8;
  poziceMotoru_ver_1   AT r1_p1_DO.DO9;
  poziceMotoru_ver_2   AT r1_p1_DO.DO10;
  poziceMotoru_ver_3   AT r1_p1_DO.DO11;
  startMotoru          AT r1_p1_DO.DO3;
  vyberMotoru          AT r1_p1_DO.DO2;
  zhaveniMotoru_hor    AT r1_p1_DO.DO0;
  zhaveniMotoru_ver    AT r1_p1_DO.DO1;
END_VAR
(* -- *)
(* -- *)
VAR_EXTERNAL
END_VAR
(* -- *)

(* ********************************************************************** *)
(* Generated by MOSAIC *)
(* � 2001-2019 Teco a.s. *)
(* Version : 1.2 *)
(* DLL Version : 24.1.3.18 *)
