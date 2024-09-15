PROGRAM prgZakladacNew
  VAR
     zakladac_state : INT := 0;
     zakladac_substate : INT := 0;
     (*
       stavy:
              0: nic - èeká na start
              1: pøesun nad senzor - horizontalne
              2: pøesun do 4. patra
              3: hledání kusu ve 4. patøe -> poukud není: opakovat cyklicky
              4: zvednout kus
              5: pøesun nad senzor - horizontalne
              6: sjetí k senzoru - vertikálnì
              7: save barvy/materiálnu
              8: vybrat patro podle barvy a dojet k nìmu
              9: najít volnou pozici -> pokud není: opakovat cyklicky
             10: pložit kus do pozice
     *)
     
     current_slot : INT := 0;
     
     
     last_scanned_color : INT := -1;
     (*
       stavy:
             -1: zatím nebyla naskenována žádná barva
             0: neznámá
             1: modrá
             2: èervená
             3: støíbrná
             4: zelená
     *)
     
     start : BOOL;
     stop : BOOL;
     pohyb_dokoncen : BOOL;
     
     timer_1 : TON;
     timer_1_done : BOOL;
     timer_2 : TON;
     timer_2_done : BOOL;

     
     intEncoder : zakladacEncodeInt;
     getVerticalAddressFromColor : zakladacGetVerticalAddrFromColor;
     
     main_clock_time : TIME := t#250ms;
     subs_clock_time : TIME := t#500ms;
  END_VAR
  startMotoru := 0;

  pohyb_dokoncen := (pohybDokoncen_hor AND pohybDokoncen_ver);
  zhaveniMotoru_hor := 1;
  zhaveniMotoru_ver := 1;

  timer_1_done := timer_1.Q OR NOT(pohyb_dokoncen);
  IF timer_1_done THEN
    timer_2_done := timer_2.Q;
  END_IF
  timer_1(IN := NOT(timer_1_done), PT := main_clock_time);
  timer_2(IN := NOT(timer_2_done), PT := subs_clock_time);
  
  IF stop THEN
     zakladac_state := 0;
     zakladac_substate := 0;
  END_IF

  IF pohyb_dokoncen AND timer_1_done THEN
    timer_1_done := false;
    CASE zakladac_state OF
         0:
           IF start AND NOT(stop) THEN
              zakladac_state := 1;
              zakladac_substate := 0;
              RETURN;
           END_IF

         1: // reset horizontalne do vychozi pozice
            poziceMotoru_hor_0 := 1;
            poziceMotoru_hor_1 := 0;
            poziceMotoru_hor_2 := 1;
            poziceMotoru_hor_3 := 0;
            vyberMotoru := 0;
            startMotoru := 1;
            current_slot := 5;
            zakladac_state := 2;
            
            // reset celisti - otevøení a posun nahoru
            celistiChapadlo := 0;
            posuvChapadlo_ver := 0;
            
            last_scanned_color := -1;
         ;
         2:
            vyberMotoru := 1;
            poziceMotoru_ver_0 := 0;
            poziceMotoru_ver_1 := 0;
            poziceMotoru_ver_2 := 0;
            poziceMotoru_ver_3 := 0;
            zakladac_state := 3;
         ;
         3: // reset vertikalne do vychozi pozice
           IF vertikalniManipulacePovolena THEN
            startMotoru := 1;
            zakladac_state := 4;
           END_IF
         ;
         4:
            IF materialJe THEN
                zakladac_state := 5;
                zakladac_substate := 0;
            ELSE
                current_slot := current_slot + 1;
                IF current_slot >= 4 THEN
                   current_slot := 0;
                END_IF
                intEncoder(inputInt := current_slot,
                                    out0 => poziceMotoru_hor_0,
                                    out1 => poziceMotoru_hor_1,
                                    out2 => poziceMotoru_hor_2,
                                    out3 => poziceMotoru_hor_3
                );
                vyberMotoru := 0;
                startMotoru := 1;
            END_IF
         ;
         5:
            IF timer_2_done THEN
              timer_2_done := false;
              CASE zakladac_substate OF
                   0:
                    celistiChapadlo := 0;
                    posuvChapadlo_ver := 1;
                    zakladac_substate := 1;
                   1:
                    celistiChapadlo := 1;
                    posuvChapadlo_ver := 0;
                    zakladac_substate := 0;
                    zakladac_state := 6;
              END_CASE;
            END_IF
         ;
         6:
            poziceMotoru_hor_0 := 1;
            poziceMotoru_hor_1 := 0;
            poziceMotoru_hor_2 := 1;
            poziceMotoru_hor_3 := 0;
            vyberMotoru := 0;
            startMotoru := 1;
            current_slot := 5;
            zakladac_state := 7;
         ;
         7:
            poziceMotoru_ver_0 := 1;
            poziceMotoru_ver_1 := 1;
            poziceMotoru_ver_2 := 0;
            poziceMotoru_ver_3 := 0;
            vyberMotoru := 1;
            zakladac_state := 8;
         ;
         8:
           IF vertikalniManipulacePovolena THEN
            startMotoru := 1;
            zakladac_state := 9;
            zakladac_substate := 0;
           END_IF
         ;
         9:
            IF timer_2_done THEN
              timer_2_done := false;
              CASE zakladac_substate OF
                   0: // posun dolu k èidlu
                      posuvChapadlo_ver := 1;
                      zakladac_substate := 1;
                      last_scanned_color := -1;
                   ;
                   1: // wait 2 seconds
                      zakladac_substate := 2;
                   ;
                   2: // sken barvy
                      last_scanned_color := 0;
                      IF modraBarva THEN
                         last_scanned_color := 1;
                      END_IF
                      IF cervenaBarva THEN
                         last_scanned_color := 2;
                      END_IF
                      IF stribrnaBarva THEN
                         last_scanned_color := 3;
                      END_IF
                      IF zelenaBarva THEN
                         last_scanned_color := 4;
                      END_IF
                      zakladac_substate := 3;
                   ;
                   3: // posun zpet nahoru od èidla
                      posuvChapadlo_ver := 0;
                      zakladac_substate := 0;
                      zakladac_state := 10;
                   ;
              END_CASE;
            END_IF
         ;
         10:
            getVerticalAddressFromColor(color := last_scanned_color, addr => intEncoder.inputInt);
            intEncoder(
                out0 => poziceMotoru_ver_0,
                out1 => poziceMotoru_ver_1,
                out2 => poziceMotoru_ver_2,
                out3 => poziceMotoru_ver_3
            );
             zakladac_state := 11;
         ;
         11:
           IF vertikalniManipulacePovolena THEN
            vyberMotoru := 1;
            startMotoru := 1;
            zakladac_state := 12;
           END_IF
         ;
         12:
            IF NOT(materialJe) THEN
               zakladac_state := 13;
               zakladac_substate := 0;
            ELSE
                current_slot := current_slot + 1;
                IF current_slot >= 4 THEN
                   current_slot := 0;
                END_IF
                intEncoder(inputInt := current_slot,
                                    out0 => poziceMotoru_hor_0,
                                    out1 => poziceMotoru_hor_1,
                                    out2 => poziceMotoru_hor_2,
                                    out3 => poziceMotoru_hor_3
                );
                vyberMotoru := 0;
                startMotoru := 1;
            END_IF
         ;
         13:
            IF timer_2_done THEN
              timer_2_done := false;
              CASE zakladac_substate OF
                   0:
                    celistiChapadlo := 1;
                    posuvChapadlo_ver := 1;
                    zakladac_substate := 1;
                   ;
                   1:
                    celistiChapadlo := 0;
                    posuvChapadlo_ver := 0;
                    zakladac_substate := 0;
                    zakladac_state := 1;
                   ;
              END_CASE;
            END_IF
         ;

    END_CASE;
  END_IF
END_PROGRAM

