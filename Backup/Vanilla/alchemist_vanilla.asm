org $03DEB3
Tbl_Alchemist_Events:
;If your progress is LESS than that number, use that convo set. i.e. Chapter 1 is less than 4, so it uses Set 1.
;1=Start Ch1, 2=Spoke to Ariel,     3=Ready to leave town,  4=Entered Crystal Sword room
;5=Start Ch2, 6=Met Darwin,         7=Recruited Darwin,     8=Got the Fire Spirit      9=Found Reinoll
;A=Start Ch3; B=Finding Axs stoned  C=Beating the Hydra     D=Entering the Lava Room
;E=Start Ch4; F=Finding Darah       10=The door won't open  11=Sarah wakes up   12=Sarah opens a door   13=DarahBarah   14=Ariel  15=Darwin   16=Teefa  17=Galneon
;18=Start Ch5; 19=Met Karul         1A=Met Galneon          1B=RedBlue Guardian   1C=Tiamat   1D=Entered final door   1E=Credits
  dw $0004
  dw $0007
  dw $000A
  dw $000B
  dw $000E
  dw $0012
  dw $0018
  dw $001A
  dw $FFFF

org $03DEC5
Tbl_Alchemist_Convo_Sets:
  dw Convo_Set_1                       ;03DEC5|        |03DED7;  
  dw Convo_Set_2                       ;03DEC7|        |03DEDD;  
  dw Convo_Set_3                       ;03DEC9|        |03DEE3;  
  dw Convo_Set_4                       ;03DECB|        |03DEE9;  
  dw Convo_Set_5                       ;03DECD|        |03DEEF;  
  dw Convo_Set_6                       ;03DECF|        |03DEF5;  
  dw Convo_Set_7                       ;03DED1|        |03DEFB;  
  dw Convo_Set_8                       ;03DED3|        |03DF01;  
  dw Convo_Set_9                       ;03DED5|        |03DF07;  

;Chapter 1 (event 1-3)
Convo_Set_1:
  dw Conversation_1                    ;03DED7|        |08D3C3;  
  dw Conversation_2                    ;03DED9|        |08D413;  
  dw Conversation_3                    ;03DEDB|        |08D44D;  

;Chapter 2 before recruiting Darwin (event 4-6)
Convo_Set_2:
  dw Conversation_4                    ;03DEDD|        |08D482;  
  dw Conversation_5                    ;03DEDF|        |08D4DF;  
  dw Conversation_6                    ;03DEE1|        |08D538;  

;Chapter 2 after recruiting Darwin (event 7-9)
Convo_Set_3:
  dw Conversation_7                    ;03DEE3|        |08D571;  
  dw Conversation_8                    ;03DEE5|        |08D5CC;  
  dw Conversation_9                    ;03DEE7|        |08D623;  

;Chapter 3 before finding Axs (event A)
Convo_Set_4:
  dw Conversation_10                   ;03DEE9|        |08D670;  
  dw Conversation_11                   ;03DEEB|        |08D6AD;  
  dw Conversation_12                   ;03DEED|        |08D6EC;  

;Chapter 3 after finding Axs (event B-D)
Convo_Set_5:
  dw Conversation_13                   ;03DEEF|        |08D71A;  
  dw Conversation_14                   ;03DEF1|        |08D76B;  
  dw Conversation_15                   ;03DEF3|        |08D7CA;  

;Chapter 4 before opening Stavery Tower (event E-11)
Convo_Set_6:
  dw Conversation_16                   ;03DEF5|        |08D808;  
  dw Conversation_17                   ;03DEF7|        |08D84F;  
  dw Conversation_18                   ;03DEF9|        |08D89F;  

;Chapter 4 after opening Stavery Tower (event 12-17)
Convo_Set_7:
  dw Conversation_19                   ;03DEFB|        |08D8D9;  
  dw Conversation_20                   ;03DEFD|        |08D92D;  
  dw Conversation_21                   ;03DEFF|        |08D98C;  

;Chapter 5 before meeting Galneon (event 18-19)
Convo_Set_8:
  dw Conversation_22                   ;03DF01|        |08D9BE;  
  dw Conversation_23                   ;03DF03|        |08DA2E;  
  dw Conversation_24                   ;03DF05|        |08DA8A;  

;Chapter 5 after meeting Galneon (event 1A-1C)
Convo_Set_9:
  dw Conversation_25                   ;03DF07|        |08DAD3;  
  dw Conversation_26                   ;03DF09|        |08DB28;  
  dw Conversation_27                   ;03DF0B|        |08DB71;  


org $08CCBA : Speaking_text_setup:
org $08D1B7 : Alchemist_menu:

org $08D3C3
Conversation_1:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"If you get some recruits",$0D
  db " come back to town and",$0D
  db " get them outfitted.",$22
  db $7F,$00

org $08D413
Conversation_2:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"It's just a rumor that",$0D
  db " the spirits are loose.",$22
  db $7F,$00

org $08D44D
Conversation_3:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"You look fit. Are you in",$0D
  db " battle training?"
  db $7F,$00

org $08D482
Conversation_4:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"People say that those",$0D
  db " who dare to go into the",$0D
  db " Forest of Doubt never",$0D
  db " come back.",$22
  db $7F,$00

org $08D4DF
Conversation_5:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Long ago he went to the",$0D 
  db " domain of the Elf who",$0D 
  db " patrols the Forest of",$0D 
  db " Doubt.",$22
  db $7F,$00

org $08D538
Conversation_6:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Thanks to the rumors",$0D 
  db " business has been good.",$22
  db $7F,$00

org $08D571
Conversation_7:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Recently even around",$0D 
  db " here the monsters",$0D 
  db " make appearances,",$0D 
  db " so watch your step.",$22
  db $7F,$00

org $08D5CC
 Conversation_8:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"In the old days even the",$0D 
  db " Forest of Doubt wasn't",$0D 
  db " a bad place, but now.....",$22
  db $7F,$00

org $08D623
 Conversation_9:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"I've heard that there are",$0D 
  db " people living in the Forest",$0D 
  db " of Doubt.",$22
  db $7F,$00

org $08D670
Conversation_10:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Because of the monsters,",$0D 
  db " the mine was sealed up.",$22 
  db $7F,$00

org $08D6AD
Conversation_11:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"They say there's a secret",$0D 
  db " visitor at the Ice Mine.",$22 
  db $7F,$00

org $08D6EC
Conversation_12:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Are you the guy Axs",$0D 
  db " brought here?",$22
  db $7F,$00

org $08D71A
Conversation_13:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"There is talk that",$0D 
  db " soldiers have been seen",$0D 
  db " going into the old mine.",$22
  db $7F,$00

org $08D76B
Conversation_14:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Speaking of that,",$0D 
  db " people are saying that",$0D 
  db " the ice is breaking up in",$0D 
  db " the Ice Cave.",$22
  db $7F,$00

org $08D7CA
Conversation_15:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Axs,",$0D 
  db " You really have aged",$0D 
  db " recently, haven't you?",$22
  db $7F,$00

org $08D808
Conversation_16:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"They say there are places",$0D
  db " in the tower you can't go",$0D 
  db " into.",$22
  db $7F,$00

org $08D84F
Conversation_17:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"No, I'm just worried",$0D 
  db " about all the earthquakes",$0D 
  db " we've had recently.",$22
  db $7F,$00

org $08D89F
Conversation_18:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"There is danger if you go",$0D 
  db " close to the tower.",$22
  db $7F,$00

org $08D8D9
Conversation_19:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Lately there seems to be",$0D
  db " a glow around the tower",$0D
  db " at night. Very eerie.",$22
  db $7F,$00

org $08D92D
Conversation_20:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"A lot of soldiers have",$0D
  db " been going into the tower.",$0D 
  db " Something strange is",$0D 
  db " going on.",$22
  db $7F,$00

org $08D98C
Conversation_21:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"That tower holds some",$0D 
  db " kind of secret.",$22
  db $7F,$00

;This one is hard-coded in place due to the two 7F opcodes
org $08D9BE
Conversation_22:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"There's something",$0D
  db " strange about that tower.",$0D 
  db $7F
  db " I wonder if the Evil",$0D
  db " Empress might not be", $0D
  db " stirring?",$22
  db $7F,$00

org $08DA2E
Conversation_23:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"That's right.",$0D
  db " It's a secret, but it",$0D 
  db " seems as though the King",$0D 
  db " has gone insane.",$22
  db $7F,$00

org $08DA8A
Conversation_24:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"It seems like even",$0D
  db " monsters don't want to",$0D 
  db " visit the Castle.",$22
  db $7F,$00

org $08DAD3
Conversation_25:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"That's right. It's",$0D 
  db " a secret, but it looks like",$0D 
  db " the King will come here.",$22
  db $7F,$00

org $08DB28
Conversation_26:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"Everyone with enough",$0D 
  db " money has already fled to",$0D 
  db " other towns.",$22
  db $7F,$00

org $08DB71
Conversation_27:
  db $10 : dl Speaking_text_setup
  db $10 : dl Alchemist_menu
  db $22,"If I had the money I'd",$0D 
  db " leave this place, but it",$0D 
  db " would be just as bad no",$0D
  db " matter where I might go.",$22
  db $7F,$00
