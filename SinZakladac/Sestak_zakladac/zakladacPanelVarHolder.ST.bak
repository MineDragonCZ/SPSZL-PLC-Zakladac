FUNCTION_BLOCK zakladacPanelVarHolder
  VAR_INPUT
           state : INT;
  END_VAR
  VAR
     isIdle : BOOL;
     isMoving : BOOL;
     isReseting : BOOL;
     isMovingOverScan : BOOL;
     isSearching : BOOL;
     isGrabingMaterial : BOOL;
     isScaning : BOOL;
     isLookingForAPlace : BOOL;
     isPuttingDownMaterial : BOOL;
     isLost : BOOL;
  END_VAR
  
  isIdle := false;
  isMoving := false;
  isReseting := false;
  isMovingOverScan := false;
  isSearching := false;
  isGrabingMaterial := false;
  isScaning := false;
  isLookingForAPlace := false;
  isPuttingDownMaterial := false;
  isLost := false;
  
  CASE state OF
       -1:
          isIdle := true;
       0:
          isReseting := true;
       1:
          isReseting := true;
          isMoving := true;
       2:
          isReseting := true;
       3:
          isReseting := true;
          isMoving := true;
       4:
          isSearching := true;
          isMoving := true;
       5:
          isGrabingMaterial := true;
       6:
          isMovingOverScan := true;
       7:
          isMovingOverScan := true;
          isMoving := true;
       8:
          isMovingOverScan := true;
       9:
          isMovingOverScan := true;
          isMoving := true;
       10:
          isScaning := true;
       11:
          isLookingForAPlace := true;
       12:
          isLookingForAPlace := true;
          isMoving := true;
       13:
          isLookingForAPlace := true;
       14:
          isLookingForAPlace := true;
          isMoving := true;
       15:
          isPuttingDownMaterial := true;
  END_CASE

END_FUNCTION_BLOCK

