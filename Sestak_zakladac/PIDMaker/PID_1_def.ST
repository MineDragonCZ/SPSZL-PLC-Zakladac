(******************************************************************************)
//Warning
//File is automatically regenerated and all manual changes will be lost.
(******************************************************************************)

VAR_GLOBAL CONSTANT
  PID_1_Definitions   : BOOL := true;
  PID_1_ReleaseNumber : UINT := 1;
END_VAR
{$IFNDEF T_PID_}
{$DEFINE T_PID_}
TYPE
  T_PID_Det     : STRUCT
    ER0,
    ER1,
    ER2,
    UMN,
    UMX,
    EY1,
    EY2,
    EY3         : BOOL;
  END_STRUCT;
  T_PID_Control : STRUCT
    RC,
    AO,
    A12,
    KC,
    BU,
    IP,
    AM,
    HR,
    RF,
    RIO,
    R41,
    CHN,
    DUM,
    FU0,
    FU1,
    FU3         : BOOL;
  END_STRUCT;
  T_PID_Status  : STRUCT
    UH,
    UC,
    UM,
    DR,
    EY1,
    EY2,
    EY3         : BOOL;
  END_STRUCT;
  T_PID         : STRUCT
    Det         : T_PID_Det;    	// Error and action detection
    MinY,                       	// Unified range value corresponding to 0%
    MaxY,                       	// Unified range value corresponding to 100%
    Input1,                     	// Input Y1
    gW,                         	// Final set point
    ConW,                       	// Current set point
    tiW,                        	// Set point filter time constant
    Dev,                        	// Control error value
    Output,                     	// Actuating value
    LastOut,                    	// Last actuator action
    CurOut,                     	// Actuator action
    ConOut,                     	// Absolute actuator action modified by control word
    DefOut,                     	// Predefined actuator action on error (uDef)
    MinU,                       	// Output saturation low limit
    MaxU,                       	// Output saturation high limit
    dMaxU,                      	// Maximal increment of actuating variable per one period
    OutCycle,                   	// Sampling period of controller algorithm (T)
    PBnd,                       	// Proporcional band
    RelCool,                    	// Relative proporcional band for negative error values (RelCool)
    Ti,                         	// Integral Time Constant (Ti)
    Td,                         	// Derivative time constant (Td)
    EGap,                       	// Symmetrical dead band
    DGap,                       	// Symmetrical derivative actuator band
    IGap        : INT;          	// Symmetrical integral actuator band
    Control     : T_PID_Control;	// Control word
    Status      : T_PID_Status; 	// State word
  END_STRUCT;
END_TYPE
{$END_IF}
VAR_GLOBAL
  PID_1_struct : T_PID;
  PID_1_AuxPID : ARRAY [0..22] OF BYTE;          	// Reserved for PID algorithm, do not modify!
  PID_1_Det      AT PID_1_struct.Det;      	// Error and action detection
  PID_1_MinY     AT PID_1_struct.MinY;     	// Unified range value corresponding to 0%
  PID_1_MaxY     AT PID_1_struct.MaxY;     	// Unified range value corresponding to 100%
  PID_1_Input1   AT PID_1_struct.Input1;   	// Input Y1
  PID_1_gW       AT PID_1_struct.gW;       	// Final set point
  PID_1_ConW     AT PID_1_struct.ConW;     	// Current set point
  PID_1_tiW      AT PID_1_struct.tiW;      	// Set point filter time constant
  PID_1_Dev      AT PID_1_struct.Dev;      	// Control error value
  PID_1_Output   AT PID_1_struct.Output;   	// Actuating value
  PID_1_LastOut  AT PID_1_struct.LastOut;  	// Last actuator action
  PID_1_CurOut   AT PID_1_struct.CurOut;   	// Actuator action
  PID_1_ConOut   AT PID_1_struct.ConOut;   	// Absolute actuator action modified by control word
  PID_1_DefOut   AT PID_1_struct.DefOut;   	// Predefined actuator action on error (uDef)
  PID_1_MinU     AT PID_1_struct.MinU;     	// Output saturation low limit
  PID_1_MaxU     AT PID_1_struct.MaxU;     	// Output saturation high limit
  PID_1_dMaxU    AT PID_1_struct.dMaxU;    	// Maximal increment of actuating variable per one period
  PID_1_OutCycle AT PID_1_struct.OutCycle; 	// Sampling period of controller algorithm (T)
  PID_1_PBnd     AT PID_1_struct.PBnd;     	// Proporcional band
  PID_1_RelCool  AT PID_1_struct.RelCool;  	// Relative proporcional band for negative error values (RelCool)
  PID_1_Ti       AT PID_1_struct.Ti;       	// Integral Time Constant (Ti)
  PID_1_Td       AT PID_1_struct.Td;       	// Derivative time constant (Td)
  PID_1_EGap     AT PID_1_struct.EGap;     	// Symmetrical dead band
  PID_1_DGap     AT PID_1_struct.DGap;     	// Symmetrical derivative actuator band
  PID_1_IGap     AT PID_1_struct.IGap;     	// Symmetrical integral actuator band
  PID_1_Control  AT PID_1_struct.Control;  	// Control word
  PID_1_Status   AT PID_1_struct.Status;   	// State word
END_VAR
VAR_GLOBAL RETAIN
  PID_1_Size_rem : USINT;
  PID_1_Det_rem      : BYTE;	// Error and action detection (remanent)
  PID_1_MinY_rem     : UINT;	// Unified range value corresponding to 0% (remanent)
  PID_1_MaxY_rem     : UINT;	// Unified range value corresponding to 100% (remanent)
  PID_1_Input1_rem   : UINT;	// Input Y1 (remanent)
  PID_1_gW_rem       : UINT;	// Final set point (remanent)
  PID_1_ConW_rem     : UINT;	// Current set point (remanent)
  PID_1_tiW_rem      : UINT;	// Set point filter time constant (remanent)
  PID_1_Dev_rem      : UINT;	// Control error value (remanent)
  PID_1_Output_rem   : UINT;	// Actuating value (remanent)
  PID_1_LastOut_rem  : UINT;	// Last actuator action (remanent)
  PID_1_CurOut_rem   : UINT;	// Actuator action (remanent)
  PID_1_ConOut_rem   : UINT;	// Absolute actuator action modified by control word (remanent)
  PID_1_DefOut_rem   : UINT;	// Predefined actuator action on error (uDef) (remanent)
  PID_1_MinU_rem     : UINT;	// Output saturation low limit (remanent)
  PID_1_MaxU_rem     : UINT;	// Output saturation high limit (remanent)
  PID_1_dMaxU_rem    : UINT;	// Maximal increment of actuating variable per one period (remanent)
  PID_1_OutCycle_rem : UINT;	// Sampling period of controller algorithm (T) (remanent)
  PID_1_PBnd_rem     : UINT;	// Proporcional band (remanent)
  PID_1_RelCool_rem  : UINT;	// Relative proporcional band for negative error values (RelCool) (remanent)
  PID_1_Ti_rem       : UINT;	// Integral Time Constant (Ti) (remanent)
  PID_1_Td_rem       : UINT;	// Derivative time constant (Td) (remanent)
  PID_1_EGap_rem     : UINT;	// Symmetrical dead band (remanent)
  PID_1_DGap_rem     : UINT;	// Symmetrical derivative actuator band (remanent)
  PID_1_IGap_rem     : UINT;	// Symmetrical integral actuator band (remanent)
  PID_1_Control_rem  : UINT;	// Control word (remanent)
  PID_1_Release_rem  : UINT;
  PID_1_CRC_rem      : WORD;
END_VAR

(*******************************************************************************)
// Generated by MOSAIC
