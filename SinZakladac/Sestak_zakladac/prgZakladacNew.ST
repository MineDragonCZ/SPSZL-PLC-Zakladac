PROGRAM prgZakladacNew
  VAR
     zakladac_state: INT := -1;
     zakladac_substate: INT := 0;

     current_slot: INT := 0;


     last_scanned_color: INT := - 1;
     (*
       stavy:
             -1: zatím nebyla naskenována žádná barva
             0: neznámá
             1: modrá
             2: èervená
             3: støíbrná
             4: zelená
     *)

     start: BOOL := 1;
     stop: BOOL;
     pohyb_dokoncen: BOOL;

     timer_1: TON;
     timer_1_done: BOOL;
     timer_2: TON;
     timer_2_done: BOOL;


     intEncoder: zakladacEncodeInt;
     getVerticalAddressFromColor: zakladacGetVerticalAddrFromColor;

     main_clock_time: TIME := T#200ms;
     subs_clock_time: TIME := T#700ms;


     barva_patro_addr: INT;

     zakladac_status: STRING;
     zakladac_panel_var_holder : zakladacPanelVarHolder;
     
     searching_index : INT := 0;
     
     automatic_mode : BOOL := 1;
     manual_mode_next_step : BOOL := 0;
  END_VAR
  startMotoru := 0;

  pohyb_dokoncen := (pohybDokoncen_hor AND pohybDokoncen_ver);
  zhaveniMotoru_hor := 1;
  zhaveniMotoru_ver := 1;

  timer_1_done := timer_1.Q OR NOT(pohyb_dokoncen);
  IF timer_1_done THEN
    timer_2_done := timer_2.Q;
  END_IF
  IF NOT(automatic_mode) AND NOT(manual_mode_next_step) THEN
     timer_1_done := false;
     timer_2_done := false;
  END_IF
  IF timer_1_done OR timer_2_done THEN
     manual_mode_next_step := false;
  END_IF
  timer_1(IN := NOT(timer_1_done), PT := main_clock_time);
  timer_2(IN := NOT(timer_2_done), PT := subs_clock_time);

  IF stop THEN
     zakladac_state := -1;
     zakladac_substate := 0;
  END_IF

  IF pohyb_dokoncen AND timer_1_done THEN
    zakladac_panel_var_holder(state := zakladac_state);
    timer_1_done := FALSE;
    CASE zakladac_state OF
         -1:
            zakladac_status := 'IDLE';
           IF start AND NOT(stop) THEN
              zakladac_state := 0;
              zakladac_substate := 0;
              start := 0;
              RETURN;
           END_IF
         0:
            zakladac_status := 'RESETING...';
           // reset horizontalne do vychozi pozice
            poziceMotoru_hor_0 := 1;
            poziceMotoru_hor_1 := 0;
            poziceMotoru_hor_2 := 1;
            poziceMotoru_hor_3 := 0;
            vyberMotoru := 0;
            current_slot := 5;
            zakladac_state := 1;

            // reset celisti - otevøení a posun nahoru
            celistiChapadlo := 0;
            posuvChapadlo_ver := 0;
            searching_index := 0;

            last_scanned_color := - 1;
         ;
         1:
            zakladac_status := 'MOVE HOR. TO ZERO (RUN)';
            startMotoru := 1;
            zakladac_state := 2;
         ;
         2:
            zakladac_status := 'MOVE VER. TO ZERO (SETUP)';
            vyberMotoru := 1;
            poziceMotoru_ver_0 := 0;
            poziceMotoru_ver_1 := 0;
            poziceMotoru_ver_2 := 0;
            poziceMotoru_ver_3 := 0;
            zakladac_state := 3;
         ;
         3: // reset vertikalne do vychozi pozice
            zakladac_status := 'MOVE VER. TO ZERO (RUN)';
           IF vertikalniManipulacePovolena THEN
            startMotoru := 1;
            zakladac_state := 4;
            zakladac_substate := 0;
           END_IF
         ;
         4:
            zakladac_status := 'CHECKING MATERIAL TO PICK UP';
            IF materialJe THEN
                zakladac_state := 5;
                zakladac_substate := 0;
            ELSE
                CASE zakladac_substate OF
                     0:
                      zakladac_status := 'MOVING TO NEXT SLOT (SETUP)';
                      current_slot := current_slot + 1;
                      IF current_slot >= 5 THEN
                         current_slot := 0;
                         searching_index := searching_index + 1;
                         IF searching_index > 3 THEN
                            stop := 1;
                            searching_index := 0;
                         END_IF
                      END_IF
                      intEncoder(inputInt := current_slot,
                                          out0 => poziceMotoru_hor_0,
                                          out1 => poziceMotoru_hor_1,
                                          out2 => poziceMotoru_hor_2,
                                          out3 => poziceMotoru_hor_3
                      );
                      vyberMotoru := 0;
                      zakladac_substate := 1;
                     ;
                     1:
                      zakladac_status := 'MOVING TO NEXT SLOT (RUN)';
                       zakladac_substate := 0;
                       startMotoru := 1;
                     ;
                END_CASE;
            END_IF
         ;
         5:
            IF timer_2_done THEN
              timer_2_done := FALSE;
              CASE zakladac_substate OF
                   0:
                     zakladac_status := 'PICKING UP MATERIAL (LOWER ARM)';
                     celistiChapadlo := 0;
                     posuvChapadlo_ver := 1;
                     zakladac_substate := 1;
                   1:
                     zakladac_status := 'PICKING UP MATERIAL (GRAB)';
                     celistiChapadlo := 1;
                     zakladac_substate := 2;
                   2:
                     zakladac_status := 'PICKING UP MATERIAL (RAISE ARM)';
                     posuvChapadlo_ver := 0;
                     zakladac_substate := 0;
                     zakladac_state := 6;
              END_CASE;
            END_IF
         ;
         6:
            zakladac_status := 'MOVE OVER THE SENSOR HOR. (SETUP)';
            poziceMotoru_hor_0 := 1;
            poziceMotoru_hor_1 := 0;
            poziceMotoru_hor_2 := 1;
            poziceMotoru_hor_3 := 0;
            vyberMotoru := 0;
            current_slot := 5;
            zakladac_state := 7;
         ;
         7:
            zakladac_status := 'MOVE OVER THE SENSOR HOR. (RUN)';
            startMotoru := 1;
            current_slot := 5;
            zakladac_state := 8;
         ;
         8:
            zakladac_status := 'MOVE OVER THE SENSOR VER. (SETUP)';
            poziceMotoru_ver_0 := 1;
            poziceMotoru_ver_1 := 1;
            poziceMotoru_ver_2 := 0;
            poziceMotoru_ver_3 := 0;
            vyberMotoru := 1;
            zakladac_state := 9;
         ;
         9:
           IF vertikalniManipulacePovolena THEN
            zakladac_status := 'MOVE OVER THE SENSOR VER. (RUN)';
            startMotoru := 1;
            zakladac_state := 10;
            zakladac_substate := 0;
           END_IF
         ;
         10:
            IF timer_2_done THEN
              timer_2_done := FALSE;
              CASE zakladac_substate OF
                   0: // posun dolu k èidlu
                      zakladac_status := 'LOWER THE ARM TO THE SENSOR';
                      posuvChapadlo_ver := 1;
                      zakladac_substate := 1;
                      last_scanned_color := - 1;
                   ;
                   1: // wait 2 seconds
                      zakladac_substate := 2;
                   ;
                   2: // sken barvy
                      zakladac_status := 'SCANNING COLOR...';
                      last_scanned_color := 0;
                      IF modraBarva THEN
                         last_scanned_color := 1;
                      END_IF
                      IF cervenaBarva THEN
                         last_scanned_color := 2;
                      END_IF
                      IF stribrnaBarva OR magnet THEN
                         last_scanned_color := 3;
                      END_IF
                      IF zelenaBarva THEN
                         last_scanned_color := 4;
                      END_IF
                      zakladac_substate := 3;
                   ;
                   3: // posun zpet nahoru od èidla
                      zakladac_status := 'RAISE THE ARM FROM THE SENSOR';
                      posuvChapadlo_ver := 0;
                      zakladac_substate := 0;
                      zakladac_state := 11;
                   ;
              END_CASE;
            END_IF
         ;
         11:
            zakladac_status := 'ENCODE COLOR TO VER. ADDRESS AND SET';
            getVerticalAddressFromColor(color := last_scanned_color, addr => barva_patro_addr);
            intEncoder(inputInt := barva_patro_addr,
                out0 => poziceMotoru_ver_0,
                out1 => poziceMotoru_ver_1,
                out2 => poziceMotoru_ver_2,
                out3 => poziceMotoru_ver_3
            );
             zakladac_state := 12;
         ;
         12:
           zakladac_status := 'MOVE VER. TO THE ENCODED ADDRESS';
           IF vertikalniManipulacePovolena THEN
            vyberMotoru := 1;
            startMotoru := 1;
            zakladac_state := 13;
           END_IF
         ;
         13:
            zakladac_status := 'FIND EMPTY SLOT TO PLACE THE MATERIAL';
            IF NOT(materialJe) AND current_slot < 4 THEN
               zakladac_state := 15;
               zakladac_substate := 0;
            ELSE
              zakladac_status := 'MOVE TO THE NEXT SLOT (SETUP)';
              current_slot := current_slot + 1;
              IF current_slot >= 5 THEN
                 current_slot := 0;
              END_IF
              intEncoder(inputInt := current_slot,
                                  out0 => poziceMotoru_hor_0,
                                  out1 => poziceMotoru_hor_1,
                                  out2 => poziceMotoru_hor_2,
                                  out3 => poziceMotoru_hor_3
              );
              vyberMotoru := 0;
              zakladac_state := 14;
            END_IF
         ;
         14:
            zakladac_status := 'MOVE TO THE NEXT SLOT (RUN)';
            startMotoru := 1;
            zakladac_state := 13;
         ;
         15:
            zakladac_status := 'EMPTY SLOT FOUND - PUT DOWN MATERIAL';
            IF timer_2_done THEN
              timer_2_done := FALSE;
              CASE zakladac_substate OF
                   0:
                    zakladac_status := 'LOWER THE ARM';
                    celistiChapadlo := 1;
                    posuvChapadlo_ver := 1;
                    zakladac_substate := 1;
                   ;
                   1:
                    zakladac_status := 'RELEASE THE MATERIAL AND RAISE THE ARM';
                    celistiChapadlo := 0;
                    posuvChapadlo_ver := 0;
                    zakladac_substate := 0;
                    zakladac_state := 0;
                   ;
              END_CASE;
            END_IF
         ;

    END_CASE;
  END_IF
END_PROGRAM

