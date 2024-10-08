FUNCTION_BLOCK zakladacGetVerticalAddrFromColor
  VAR_INPUT
           color : INT;
  END_VAR
  VAR_OUTPUT
           addr : INT;
  END_VAR
  VAR
      modraBarva_key : INT := 1;
      cervenaBarva_key : INT := 2;
      stribrnaBarva_key : INT := 3;
      zelenaBarva_key : INT := 4;

      modraBarva_addr : INT := 2;
      cervenaBarva_addr : INT := 1;
      stribrnaBarva_addr : INT := 3;
      zelenaBarva_addr : INT := 0;
  END_VAR

  addr := 0;

  IF color = modraBarva_key THEN
     addr := modraBarva_addr;
  END_IF
  IF color = cervenaBarva_key THEN
     addr := cervenaBarva_addr;
  END_IF
  IF color = stribrnaBarva_key THEN
     addr := stribrnaBarva_addr;
  END_IF
  IF color = zelenaBarva_key THEN
     addr := zelenaBarva_addr;
  END_IF

END_FUNCTION_BLOCK

