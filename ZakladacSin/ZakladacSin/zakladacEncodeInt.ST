FUNCTION_BLOCK zakladacEncodeInt
  VAR_INPUT
      inputInt : INT;
  END_VAR
  VAR_OUTPUT
      out0 : BOOL;
      out1 : BOOL;
      out2 : BOOL;
      out3 : BOOL;
  END_VAR
  VAR
  END_VAR


  out0 := 1;
  out1 := 1;
  out2 := 1;
  out3 := 1;

  IF inputInt = 0 THEN
      out0 := 0;
      out1 := 0;
      out2 := 0;
      out3 := 0;
  END_IF
  IF inputInt = 1 THEN
      out0 := 1;
      out1 := 0;
      out2 := 0;
      out3 := 0;
  END_IF
  IF inputInt = 2 THEN
      out0 := 0;
      out1 := 1;
      out2 := 0;
      out3 := 0;
  END_IF
  IF inputInt = 3 THEN
      out0 := 1;
      out1 := 1;
      out2 := 0;
      out3 := 0;
  END_IF
  IF inputInt = 4 THEN
      out0 := 0;
      out1 := 0;
      out2 := 1;
      out3 := 0;
  END_IF
  IF inputInt = 5 THEN
      out0 := 1;
      out1 := 0;
      out2 := 1;
      out3 := 0;
  END_IF
  IF inputInt = 6 THEN
      out0 := 0;
      out1 := 1;
      out2 := 1;
      out3 := 0;
  END_IF
  IF inputInt = 7 THEN
      out0 := 1;
      out1 := 1;
      out2 := 1;
      out3 := 0;
  END_IF
  IF inputInt = 8 THEN
      out0 := 0;
      out1 := 0;
      out2 := 0;
      out3 := 1;
  END_IF
  IF inputInt = 9 THEN
      out0 := 1;
      out1 := 0;
      out2 := 0;
      out3 := 1;
  END_IF
  IF inputInt = 10 THEN
      out0 := 0;
      out1 := 1;
      out2 := 0;
      out3 := 1;
  END_IF

END_FUNCTION_BLOCK

