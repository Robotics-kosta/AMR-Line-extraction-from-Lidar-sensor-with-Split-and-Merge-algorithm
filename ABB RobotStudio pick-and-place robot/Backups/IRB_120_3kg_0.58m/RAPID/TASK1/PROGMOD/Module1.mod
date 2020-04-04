MODULE Module1

!***********************************************************
!
! ABB Robo Challenge 2018
!
!   This is the program template
!
!***********************************************************



    CONST robtarget home_position:=[[477.110336645,-0.2,528.9],[0.5,0,0.866025404,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_60:=[[0,0,0],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_70:=[[283.962912251,188.179213354,31.5],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_80:=[[50,50,32],[0,1,0,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_60_2:=[[0,0,20],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_70_2:=[[283.962912251,188.179213354,51.5],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_80_2:=[[50,50,52],[0,1,0,0],[-2,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_60_1_up:=[[0,0,20],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_60_1:=[[0,0,0],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_70_d3_up:=[[283.962912251,188.179213354,51.5],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_70_d3:=[[283.962912251,188.179213354,31.5],[0,1,0,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_g4_up:=[[200.634912251,104.548213354,84],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_g4:=[[200.634912251,104.548213354,64],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_d4_up:=[[200.634912251,104.548213354,52],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_d4:=[[200.634912251,104.548213354,32],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_g2_up:=[[197.317912251,274.250213354,84],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_g2:=[[197.317912251,274.250213354,64],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_d2_up:=[[197.317912251,274.250213354,52],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_d2:=[[197.317912251,274.250213354,32],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_g1_up:=[[115.578912251,186.765213354,84],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_g1:=[[115.578912251,186.765213354,64],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_d1_up:=[[115.578912251,186.765213354,52],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_d1:=[[115.578912251,186.765213354,32],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_g3_up:=[[283.962912251,188.179213354,83.5],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget Target_90_g3:=[[283.962912251,188.179213354,63.5],[0,0.707106781,0.707106781,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_senzor_up:=[[-40.546,-18.479,40.84],[0,-0.707106781,0.707106781,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_senzor:=[[-40.546,-18.221150277,20.84],[0,-0.707106781,0.707106781,0],[-2,0,-2,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_2_Lup:=[[240.062,-45.837,20],[0,0,1,0],[-1,0,-1,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_2_L:=[[240.062,-45.837,0],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_2_D:=[[240.062,-5.837,0],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget Target_90_2_Dup:=[[240.062,-5.837,20],[0,0,1,0],[0,0,0,0],[9E+09,9E+09,9E+09,9E+09,9E+09,9E+09]];
     

    !***********************************************************
    !
    ! Procedure main
    !
    !   This is the entry point of program
    !
    !***********************************************************
   
    PROC main()
        
		!Inicijalizacija
         VAR num i;
         VAR num j;
         VAR num MAG_2;
         VAR num MAG_1;
         
 
        vracanje_u_home_poziciju;
        
        waitTime \InPos, 0.1;
        setDO Gripper, 0; ! Postavljanje gripera u nominalnu poziciju: otvoreno
        
        WaitTime 0.5;
        j:=1;
        i:=0;
        MAG_2 := 8;
        MAG_1 := 8;
        
        FOR i FROM 1 TO 16 DO 
            IF GInputDnum (DN_IN) = 1 AND Mag_1 >0 THEN   ! Da li je prvi senzor aktivan i ima nesto u prvom magacinu?
                Pokupi_sa_prve; ! Kupljenje sa prve trake kada kockica dodje do granicnika
                MAG_1 := MAG_1 - 1; 
                SetGO DN_OUT, 7; !pusti kocku iz prvog magacina
            ELSEIF Mag_2 >0 THEN   !Da li je drugi magacin prazan?
                Stani_iznad_druge; !Pozicioniranje ruke iznad drugog senzora
                if i=1 THEN 
                    SetGO DN_OUT, 15; !Pusti po jednu kocku na svaku traku
                ELSE 
                    SetGO DN_OUT, 11; !Pusti kocku na drugu traku
                ENDIF
                Pokupi_sa_druge; !Pokupi kocku sa druge trake
                MAG_2 := MAG_2 - 1;
            ELSE 
                WaitUntil GInputDnum (DN_IN) = 1; !Cekaj Da ti kocka stigne do prvog senzora
                Pokupi_sa_prve;
                SetGO DN_OUT, 7; !pusti kocku iz prvog magacina
            ENDIF
            IF GInputDnum (DN_IN) > 3 THEN  ! Ako je kocka neispravna 
                senzor_na_neispravne;      
            ELSE
                TEST j
                CASE 1: 
                Smesti_na_veliki_papir_1;
                CASE 2: 
                Smesti_na_veliki_papir_2;
                CASE 3: 
                Smesti_na_veliki_papir_3;
                CASE 4: 
                Smesti_na_veliki_papir_4;
                CASE 5: 
                Smesti_na_veliki_papir_5;
                CASE 6: 
                Smesti_na_veliki_papir_6;
                CASE 7: 
                Smesti_na_veliki_papir_7;
                CASE 8: 
                Smesti_na_veliki_papir_8;
                ENDTEST
                j := j+1;
            ENDIF     		
        ENDFOR
    ENDPROC
        
    
!***************** PROCEDURE ******************
	
    PROC Smesti_na_veliki_papir_8()
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	    MoveL Target_90_g3_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL Target_90_g3,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    WaitTime\InPos,0.1;
	    SetDO Gripper,0;
	    WaitTime 0.5;
	    MoveL Target_90_g3_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	ENDPROC
	PROC Smesti_na_veliki_papir_7()
	    MoveJ home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	    MoveJ Target_70_d3_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL Target_70_d3,v1000,fine,Vakuum_Griper\WObj:=Veliki_papir;
	    WaitTime\InPos,0.1;
	    SetDO Gripper,0;
	    WaitTime 0.5;
	    MoveL Target_70_d3_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveJ home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	ENDPROC
	PROC Smesti_na_veliki_papir_6()
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	    MoveL Target_90_g4_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL Target_90_g4,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    WaitTime\InPos,0.1;
	    SetDO Gripper,0;
	    WaitTime 0.5;
	    MoveL Target_90_g4_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	ENDPROC
	PROC Smesti_na_veliki_papir_5()
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	    MoveL Target_90_d4_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL Target_90_d4,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    WaitTime\InPos,0.1;
	    SetDO Gripper,0;
	    WaitTime 0.5;
	    MoveL Target_90_d4_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	ENDPROC
	PROC Smesti_na_veliki_papir_4()
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	    MoveL Target_90_g2_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL Target_90_g2,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    WaitTime\InPos,0.1;
	    SetDO Gripper,0;
	    WaitTime 0.5;
	    MoveL Target_90_g2_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	ENDPROC
	PROC Smesti_na_veliki_papir_3()
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	    MoveL Target_90_d2_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL Target_90_d2,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    WaitTime\InPos,0.1;
	    SetDO Gripper,0;
	    WaitTime 0.5;
	    MoveL Target_90_d2_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	ENDPROC
	PROC Smesti_na_veliki_papir_2()
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	    MoveL Target_90_g1_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL Target_90_g1,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    WaitTime\InPos,0.1;
	    SetDO Gripper,0;
	    WaitTime 0.5;
	    MoveL Target_90_g1_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	ENDPROC
	PROC Smesti_na_veliki_papir_1()
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	    MoveL Target_90_d1_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL Target_90_d1,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    WaitTime\InPos,0.1;
	    SetDO Gripper,0;
	    WaitTime 0.5;
	    MoveL Target_90_d1_up,v1000,z100,Vakuum_Griper\WObj:=Veliki_papir;
	    MoveL home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
	ENDPROC
	PROC Pokupi_sa_prve()
        MoveJ home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
        MoveJ Target_60_1_up,v1000,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
        MoveL Target_60_1,v1000,fine,Vakuum_Griper\WObj:=Predmet_na_traci;
        WaitTime\InPos,0.1;
        SetDO Gripper,1;
        WaitTime 0.5;
        MoveL Target_60_1_up,v1000,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
        MoveL Target_90_senzor_up,v1000,z100,Vakuum_Griper\WObj:=Senzor;
        MoveL Target_90_senzor,v1000,z100,Vakuum_Griper\WObj:=Senzor;
    ENDPROC
    PROC senzor_na_neispravne()
        MoveL Target_90_senzor_up,v1000,z100,Vakuum_Griper\WObj:=Senzor;
        MoveL Target_80_2,v1000,z100,Vakuum_Griper\WObj:=Mali_papir;
        MoveL Target_80,v1000,z100,Vakuum_Griper\WObj:=Mali_papir;
        WaitTime\InPos,0.1;
        SetDO Gripper,0;
        WaitTime 0.5;
        MoveL Target_80_2,v1000,z100,Vakuum_Griper\WObj:=Mali_papir;
    ENDPROC
    PROC senzor_na_ispravne()
        MoveL Target_90_senzor_up,v1000,z100,Vakuum_Griper\WObj:=Senzor;
    ENDPROC
    PROC Pokupi_sa_druge()
        MoveL Target_90_2_Lup,v1000,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
        WaitUntil GInputDnum (DN_IN) = 2 OR GInputDnum (DN_IN) = 3;
        MoveL Target_90_2_L,v1000,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
        SetDO Gripper,1;
        MoveL Target_90_2_D,v40,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
        MoveL Target_90_2_Dup,v1000,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
        MoveL Target_90_senzor_up,v1000,z100,Vakuum_Griper\WObj:=Senzor;
        MoveL Target_90_senzor,v1000,z100,Vakuum_Griper\WObj:=Senzor;
    ENDPROC
    PROC Stani_iznad_druge()
        MoveL Target_90_2_Lup,v1000,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
    ENDPROC
    PROC Smesti_na_mali_papir()
        MoveJ home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
        MoveJ Target_80_2,v1000,z100,Vakuum_Griper\WObj:=Mali_papir;
        MoveL Target_80,v1000,fine,Vakuum_Griper\WObj:=Mali_papir;
        waitTime \InPos,0.1; !ceka da se svi motori zaustave
        setDO Gripper, 0; ! Postavljanje gripera u poziciju za hvatanje: otvoreno
        waitTime 0.5; 
        MoveL Target_80_2,v1000,z100,Vakuum_Griper\WObj:=Mali_papir;
    ENDPROC   
    PROC vracanje_u_home_poziciju()
         MoveJ home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
    ENDPROC
    PROC Signalizacija_PLC()
        SetGO DN_OUT,1;
    ENDPROC
    PROC Hvatanje_sa_trake()
        MoveJ home_position,v1000,z100,Vakuum_Griper\WObj:=wobj0;
        MoveJ Target_60_1_up,v1000,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
        MoveL Target_60_1,v1000,fine,Vakuum_Griper\WObj:=Predmet_na_traci;
        WaitTime\InPos,0.1;
        SetDO Gripper,1;
        WaitTime 0.5;
        MoveL Target_60_1_up,v1000,z100,Vakuum_Griper\WObj:=Predmet_na_traci;
    ENDPROC
    PROC Smestanje_na_poziciju()
        Hvatanje_sa_trake;
        vracanje_u_home_poziciju;
        Smesti_na_veliki_papir_7;
        vracanje_u_home_poziciju;
        Smesti_na_mali_papir;
        vracanje_u_home_poziciju;
        vracanje_u_home_poziciju;
    ENDPROC
    PROC Smestanje_na_poziciju3()
        Smesti_na_veliki_papir_7;
        vracanje_u_home_poziciju;
        Smesti_na_mali_papir;
        vracanje_u_home_poziciju;
        vracanje_u_home_poziciju;
        vracanje_u_home_poziciju;
    ENDPROC
	   
ENDMODULE