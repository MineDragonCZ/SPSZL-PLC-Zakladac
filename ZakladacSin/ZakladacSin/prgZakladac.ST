PROGRAM	prgZakladac
	VAR
		 zakladac_state: INT :=	-1;
		 zakladac_substate:	INT	:= 0;

		 current_slot: INT :=	0;
		 current_floor: INT := 0;
		 
		 slots : ARRAY [1..4, 1..5] OF BOOL := [
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0,
           0, 0, 0, 0, 0
     ];
     hasMaterialInArm : BOOL := false;


		 last_scanned_color: INT :=	-	1;
		 (*
			 stavy:
						 -1: zat�m nebyla	naskenov�na	��dn�	barva
						 0:	nezn�m�
						 1:	modr�
						 2:	�erven�
						 3:	st��brn�
						 4:	zelen�
		 *)

		 start:	BOOL;
		 stop: BOOL;
		 pohyb_dokoncen: BOOL;

		 timer_1:	TON;
		 timer_1_done: BOOL;
		 timer_2:	TON;
		 timer_2_done: BOOL;
		 
		 timer_startBtn : TON;
		 timer_startBtn_time : TIME := t#1s;


		 intEncoder: zakladacEncodeInt;
		 getVerticalAddressFromColor:	zakladacGetVerticalAddrFromColor;

		 main_clock_time:	TIME :=	T#150ms;
		 subs_clock_time:	TIME :=	T#700ms;


		 barva_patro_addr: INT;

		 zakladac_status:	STRING;
		 zakladac_panel_var_holder : zakladacPanelVarHolder;

		 searching_index : INT :=	0;
		 isFirstRun : BOOL := true;

		 automatic_mode	:	BOOL :=	1;
		 automatic_mode_switch_state : BOOL := 0;
		 automatic_mode_switch_state_last : BOOL := 0;
		 manual_mode_next_step : BOOL	:= 0;
		 manual_mode_next_step_input : BOOL := 0;
		 manual_mode_next_step_input_last : BOOL := 0;
		 
		 stopped : BOOL := false;
		 
	END_VAR
	
	start := buttonStart;
	stop := buttonStop;
	automatic_mode_switch_state := spinacAutomat;
	manual_mode_next_step_input := buttonStep;
	
	modraLed := NOT(automatic_mode) AND zakladac_state >= 0;
	
	
	IF automatic_mode_switch_state AND NOT(automatic_mode_switch_state_last) THEN
	   automatic_mode := NOT(automatic_mode);
	END_IF
	automatic_mode_switch_state_last := automatic_mode_switch_state;
	
	IF manual_mode_next_step_input AND NOT(manual_mode_next_step_input_last) THEN
	   manual_mode_next_step := true;
	   manual_mode_next_step_input_last := true;
	END_IF
	IF NOT(manual_mode_next_step_input) THEN
	   manual_mode_next_step_input_last := false;
	END_IF

	pohyb_dokoncen :=	(pohybDokoncen_hor AND pohybDokoncen_ver);
	zhaveniMotoru_hor	:= 1;
	zhaveniMotoru_ver	:= 1;

	timer_1_done :=	timer_1.Q	OR NOT(pohyb_dokoncen);
	IF timer_1_done	THEN
		timer_2_done :=	timer_2.Q;
	END_IF
	IF NOT(automatic_mode) AND NOT(manual_mode_next_step)	THEN
		 timer_1_done	:= false;
		 timer_2_done	:= false;
	END_IF
	IF timer_1_done	OR timer_2_done	THEN
		 manual_mode_next_step :=	false;
	END_IF
	timer_1(IN :=	NOT(timer_1_done), PT	:= main_clock_time);
	timer_2(IN :=	NOT(timer_2_done), PT	:= subs_clock_time);
	
	IF zakladac_state <= -1 OR stopped THEN
     timer_startBtn(IN := NOT(timer_startBtn.Q), PT := timer_startBtn_time);
    	IF timer_startBtn.Q THEN
    	   zelenaLed := NOT(zelenaLed);
      END_IF
  ELSE
      zelenaLed := true;
  END_IF
  

	IF stop	THEN
	   stopped := true;
		 stop := false;
	END_IF
	startMotoru	:= 0;
	IF zakladac_state = -1 OR stopped THEN
			zakladac_status	:= 'IDLE';
		 IF	start	AND	NOT(stop)	THEN
				start	:= 0;
				stopped := false;
				IF zakladac_state = -1 THEN
				   zakladac_state := 0;
				   isFirstRun := true;
	      END_IF
		 END_IF
	END_IF
	
	IF pohyb_dokoncen	AND NOT(stopped) AND	timer_1_done THEN
		zakladac_panel_var_holder(state	:= zakladac_state, subState	:= zakladac_substate);
		timer_1_done :=	FALSE;
		CASE zakladac_state	OF
				 0:
						zakladac_status	:= 'RESETING...';
					 //	reset	horizontalne do	vychozi	pozice
						poziceMotoru_hor_0 :=	1;
						poziceMotoru_hor_1 :=	0;
						poziceMotoru_hor_2 :=	1;
						poziceMotoru_hor_3 :=	0;
						vyberMotoru	:= 0;
						current_slot :=	5;
						zakladac_state :=	1;

						// reset celisti - otev�en�	a	posun	nahoru
						celistiChapadlo	:= 0;
						posuvChapadlo_ver	:= 0;
						searching_index	:= 0;
						
						hasMaterialInArm := false;

						last_scanned_color :=	-	1;
				 ;
				 1:
						zakladac_status	:= 'MOVE HOR.	TO ZERO	(RUN)';
						startMotoru	:= 1;
						zakladac_state :=	2;
				 ;
				 2:
						zakladac_status	:= 'MOVE VER.	TO ZERO	(SETUP)';
						vyberMotoru	:= 1;
						poziceMotoru_ver_0 :=	0;
						poziceMotoru_ver_1 :=	0;
						poziceMotoru_ver_2 :=	0;
						poziceMotoru_ver_3 :=	0;
						zakladac_state :=	3;
				 ;
				 3:	// reset vertikalne	do vychozi pozice
						zakladac_status	:= 'MOVE VER.	TO ZERO	(RUN)';
					 IF	vertikalniManipulacePovolena THEN
						startMotoru	:= 1;
						zakladac_state :=	4;
						zakladac_substate	:= 0;
						current_floor := 0;
					 END_IF
				 ;
				 4:
						zakladac_status	:= 'CHECKING MATERIAL	TO PICK	UP';
						IF NOT(materialJe) AND ((searching_index > 2 AND isFirstRun) OR (searching_index > 1 AND NOT(isFirstRun))) THEN
      						zakladac_state := 20;
						ELSE
  						IF materialJe	AND zakladac_substate = 0 AND (searching_index > 1 OR NOT(isFirstRun)) THEN
  								zakladac_state :=	5;
  								zakladac_substate	:= 0;
  						ELSE
  								CASE zakladac_substate OF
  										 0:
            				    IF current_slot < 5 THEN
            				       slots[current_floor + 1, current_slot + 1] := materialJe;
            				    END_IF
  											zakladac_status	:= 'MOVING TO	NEXT SLOT	(SETUP)';
  											current_slot :=	current_slot + 1;
  											IF current_slot	>= 5 THEN
                           searching_index := searching_index + 1;
											     current_slot	:= 0;
  											END_IF
  											intEncoder(inputInt	:= current_slot,
  																					out0 =>	poziceMotoru_hor_0,
  																					out1 =>	poziceMotoru_hor_1,
  																					out2 =>	poziceMotoru_hor_2,
  																					out3 =>	poziceMotoru_hor_3
  											);
  											vyberMotoru	:= 0;
  											zakladac_substate	:= 1;
  										 ;
  										 1:
  											zakladac_status	:= 'MOVING TO	NEXT SLOT	(RUN)';
  											 zakladac_substate :=	0;
  											 startMotoru :=	1;
  										 ;
  								END_CASE;
  						END_IF
					  END_IF
				 ;
				 5:
				    isFirstRun := false;
						IF timer_2_done	THEN
							timer_2_done :=	FALSE;
							CASE zakladac_substate OF
									 0:
										 zakladac_status :=	'PICKING UP	MATERIAL (LOWER	ARM)';
										 celistiChapadlo :=	0;
										 posuvChapadlo_ver :=	1;
										 zakladac_substate :=	1;
									 1:
										 zakladac_status :=	'PICKING UP	MATERIAL (GRAB)';
										 celistiChapadlo :=	1;
										 hasMaterialInArm := true;
										 zakladac_substate :=	2;
									 2:
										 zakladac_status :=	'PICKING UP	MATERIAL (RAISE	ARM)';
										 posuvChapadlo_ver :=	0;
										 zakladac_substate :=	0;
										
        				     IF current_slot < 5 THEN
        				        slots[current_floor + 1, current_slot + 1] := false;
        				     END_IF
        				    
										 zakladac_state	:= 6;
							END_CASE;
						END_IF
				 ;
				 6:
						zakladac_status	:= 'MOVE OVER	THE	SENSOR HOR.	(SETUP)';
						poziceMotoru_hor_0 :=	1;
						poziceMotoru_hor_1 :=	0;
						poziceMotoru_hor_2 :=	1;
						poziceMotoru_hor_3 :=	0;
						vyberMotoru	:= 0;
						current_slot :=	5;
						zakladac_state :=	7;
				 ;
				 7:
						zakladac_status	:= 'MOVE OVER	THE	SENSOR HOR.	(RUN)';
						startMotoru	:= 1;
						current_slot :=	5;
						zakladac_state :=	8;
				 ;
				 8:
						zakladac_status	:= 'MOVE OVER	THE	SENSOR VER.	(SETUP)';
						poziceMotoru_ver_0 :=	1;
						poziceMotoru_ver_1 :=	1;
						poziceMotoru_ver_2 :=	0;
						poziceMotoru_ver_3 :=	0;
						vyberMotoru	:= 1;
						zakladac_state :=	9;
				 ;
				 9:
					 IF	vertikalniManipulacePovolena THEN
						zakladac_status	:= 'MOVE OVER	THE	SENSOR VER.	(RUN)';
						startMotoru	:= 1;
						zakladac_state :=	10;
						zakladac_substate	:= 0;
					 END_IF
				 ;
				 10:
						IF timer_2_done	THEN
							timer_2_done :=	FALSE;
							CASE zakladac_substate OF
									 0:	// posun dolu	k	�idlu
											zakladac_status	:= 'LOWER	THE	ARM	TO THE SENSOR';
											posuvChapadlo_ver	:= 1;
											zakladac_substate	:= 1;
											last_scanned_color :=	-	1;
									 ;
									 1:	// sken	barvy
											zakladac_status	:= 'SCANNING COLOR...';
											last_scanned_color :=	0;
											IF modraBarva	THEN
												 last_scanned_color	:= 1;
											END_IF
											IF cervenaBarva	THEN
												 last_scanned_color	:= 2;
											END_IF
											IF stribrnaBarva OR	magnet THEN
												 last_scanned_color	:= 3;
											END_IF
											IF zelenaBarva THEN
												 last_scanned_color	:= 4;
											END_IF
											zakladac_substate	:= 2;
									 ;
									 2:	// posun zpet	nahoru od	�idla
											zakladac_status	:= 'RAISE	THE	ARM	FROM THE SENSOR';
											posuvChapadlo_ver	:= 0;
											zakladac_substate	:= 0;
											zakladac_state :=	11;
									 ;
							END_CASE;
						END_IF
				 ;
				 11:
						zakladac_status	:= 'ENCODE COLOR TO	VER. ADDRESS AND SET';
						getVerticalAddressFromColor(color	:= last_scanned_color, addr	=> barva_patro_addr);
						intEncoder(inputInt	:= barva_patro_addr,
								out0 =>	poziceMotoru_ver_0,
								out1 =>	poziceMotoru_ver_1,
								out2 =>	poziceMotoru_ver_2,
								out3 =>	poziceMotoru_ver_3
						);
						current_floor := barva_patro_addr;
						 zakladac_state	:= 12;
				 ;
				 12:
					 zakladac_status :=	'MOVE	VER. TO	THE	ENCODED	ADDRESS';
					 IF	vertikalniManipulacePovolena THEN
						vyberMotoru	:= 1;
						startMotoru	:= 1;
						current_slot := 5;
						zakladac_state :=	13;
					 END_IF
				 ;
				 13:
						zakladac_status	:= 'FIND EMPTY SLOT	TO PLACE THE MATERIAL';
				    IF current_slot < 5 THEN
				       slots[current_floor + 1, current_slot + 1] := materialJe;
				    END_IF
						IF NOT(materialJe) AND current_slot	<	4	THEN
							 zakladac_state	:= 15;
							 zakladac_substate :=	0;
						ELSE
							zakladac_status	:= 'MOVE TO	THE	NEXT SLOT	(SETUP)';
							current_slot :=	current_slot + 1;
							IF current_slot	>= 5 THEN
								 current_slot	:= 0;
							END_IF
							intEncoder(inputInt	:= current_slot,
																	out0 =>	poziceMotoru_hor_0,
																	out1 =>	poziceMotoru_hor_1,
																	out2 =>	poziceMotoru_hor_2,
																	out3 =>	poziceMotoru_hor_3
							);
							vyberMotoru	:= 0;
							zakladac_state :=	14;
						END_IF
				 ;
				 14:
						zakladac_status	:= 'MOVE TO	THE	NEXT SLOT	(RUN)';
						startMotoru	:= 1;
						zakladac_state :=	13;
				 ;
				 15:
						zakladac_status	:= 'EMPTY	SLOT FOUND - PUT DOWN	MATERIAL';
						IF timer_2_done	THEN
							timer_2_done :=	FALSE;
							CASE zakladac_substate OF
									 0:
										zakladac_status	:= 'LOWER	THE	ARM';
										celistiChapadlo	:= 1;
										posuvChapadlo_ver	:= 1;
										zakladac_substate	:= 1;
									 ;
									 1:
										zakladac_status	:= 'RELEASE	THE	MATERIAL';
										celistiChapadlo	:= 0;
										hasMaterialInArm := false;
        				    IF current_slot < 5 THEN
        				       slots[current_floor + 1, current_slot + 1] := true;
        				    END_IF
										zakladac_substate	:= 2;
									 ;
									 2:
										zakladac_status	:= 'RAISE THE ARM';
										posuvChapadlo_ver	:= 0;
										zakladac_substate	:= 0;
										zakladac_state :=	0;
									 ;
							END_CASE;
						END_IF
				 ;
				 // dock
				 20:
						zakladac_status	:= 'DOCKING...';
					 //	reset	horizontalne do	vychozi	pozice
						poziceMotoru_hor_0 :=	1;
						poziceMotoru_hor_1 :=	0;
						poziceMotoru_hor_2 :=	1;
						poziceMotoru_hor_3 :=	0;
						vyberMotoru	:= 0;
						current_slot :=	5;
						zakladac_state :=	21;
				 ;
				 21:
						zakladac_status	:= 'DOCKING... MOVE HOR.	TO ZERO	(RUN)';
						startMotoru	:= 1;
						zakladac_state :=	-1;
						stopped := true;
				 ;
		END_CASE;
	END_IF
END_PROGRAM


