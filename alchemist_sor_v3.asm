;Gratuitous Japanese freespace
;$88CC27-$88CCB9


org $83DEB3
Tbl_Alchemist_Events:
;If your progress is LESS than that number, use that convo set. i.e. Chapter 1 is less than 4, so it uses Set 1.
;1=Start Ch1, 2=Spoke to Ariel,     3=Ready to leave town,  4=Entered Crystal Sword room
;5=Start Ch2, 6=Met Darwin,         7=Recruited Darwin,     8=Got the Fire Spirit      9=Found Reinoll
;A=Start Ch3; B=Finding Axs stoned  C=Beating the Hydra     D=Entering the Lava Room
;E=Start Ch4; F=Finding Darah       10=The door won't open  11=Sarah wakes up   12=Sarah opens a door   13=DarahBarah   14=Ariel  15=Darwin   16=Teefa  17=Galneon
;18=Start Ch5; 19=Met Karul         1A=Met Galneon          1B=RedBlue Guardian   1C=Tiamat   1D=Entered final door   1E=Credits
  dw $0004  ;Before Ch2
  dw $0007  ;Before getting Darwin
  dw $000A  ;Before Ch3
  dw $000B  ;Before getting Axs
  dw $000E  ;Before Ch4
  dw $0012  ;Before Sarah opens the door
  dw $0018  ;Before Ch5
  dw $001A  ;Before killing Galneon
  dw $FFFF  ;Any time after that

org $83DEC5
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


org $88CCBA : Speaking_text_setup:
org $88D1B7 : Speak_Alchemist:

org $88D3C3
Conversation_1:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"If ya meet more",$0D
  db " companions, come back",$0D
  db " ta town and get 'em",$0D
  db " equipped.",$22
  db $7F,$00

;org $88D413
Conversation_2:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Rumor has it,",$0D
  db " monsters're gatherin'",$0D
  db " at the temple.",$22
  db $7F,$00

;org $88D44D
Conversation_3:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Yer quite the",$0D
  db " strappin' young lad!",$0D
  db " Do ya need a job?",$22
  db $7F,$00

;org $88D482
Conversation_4:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"They say, nobody",$0D
  db " who goes deep inta the",$0D
  db " Lost Forest ever comes",$0D
  db " back.",$22
  db $7F,$00

;org $88D4DF
Conversation_5:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"A long time ago, ya",$0D 
  db " could go through the",$0D 
  db " Lost Forest ta reach",$0D 
  db " the Elven Forest.",$22
  db $7F,$00

;org $88D538
Conversation_6:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Thanks ta all the",$0D 
  db " monsters, sales've",$0D
  db " been good.",$22
  db $7F,$00

;org $88D571
Conversation_7:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Be careful, lately",$0D 
  db " monsters've been",$0D 
  db " showin' up a lot.",$0D
  db " Even 'round here.",$22
  db $7F,$00

;org $88D5CC
 Conversation_8:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Long ago the Lost Forest",$0D 
  db " used ta be a nice place.",$0D 
  db " Not any more...",$22
  db $7F,$00

;org $88D623
 Conversation_9:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"I've heard people say",$0D 
  db " there's somebody livin'",$0D 
  db " deep in the Lost Forest.",$22
  db $7F,$00

;org $88D670
Conversation_10:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"The mine got closed off",$0D 
  db " cuz of all the monsters.",$22 
  db $7F,$00

;org $88D6AD
Conversation_11:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"A customer was saying",$0D 
  db " there's somethin' secret",$0D
  db " deep in the Ice Mine.",$22 
  db $7F,$00

;org $88D6EC
Conversation_12:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Oh, yer the guy Axs",$0D 
  db " mentioned.",$22
  db $7F,$00

;org $88D71A
Conversation_13:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"People say they've",$0D 
  db " seen soldiers going inta",$0D 
  db " the mine.",$22
  db $7F,$00

;org $88D76B
Conversation_14:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Now that ya mention",$0D 
  db " it, some are sayin' the",$0D 
  db " ice is startin' to melt",$0D 
  db " deep inside the mine.",$22
  db $7F,$00

;org $88D7CA
Conversation_15:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Axs, yer really",$0D 
  db " lookin' old these days!",$22
  db $7F,$00

;org $88D808
Conversation_16:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"I heard there's a place",$0D
  db " deep inside the tower ya",$0D 
  db " can't get into.",$22
  db $7F,$00

;org $88D84F
Conversation_17:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Phew, I'm just worried",$0D 
  db " 'bout all the earthquakes",$0D 
  db " we've had recently.",$22
  db $7F,$00

;org $88D89F
Conversation_18:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"It's dangerous ta get",$0D 
  db " near the tower, so ya",$0D
  db " should stay away.",$22
  db $7F,$00

;org $88D8D9
Conversation_19:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Lately, whenever it gets",$0D
  db " dark, there's a light",$0D
  db " shinin' from the tower.",$0D
  db " Gives me the creeps.",$22
  db $7F,$00

;org $88D92D
Conversation_20:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Soldiers've been",$0D
  db " goin' inta the tower",$0D 
  db " a lot lately. Somethin'",$0D 
  db " strange's going on.",$22
  db $7F,$00

;org $88D98C
Conversation_21:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"The tower must hold",$0D 
  db " some kinda secret.",$22
  db $7F,$00

;This one is hard-coded in place due to the two 7F opcodes
;But fuck that
;org $88D9BE
Conversation_22:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Somethin' weird's goin'",$0D
  db " on in the tower. Maybe",$0D 
  db " that Evil Empress came",$0D
  db " back to life?",$22
  db $7F,$00

;org $88DA2E
Conversation_23:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Yeah... it's bein' kept",$0D
  db " secret, but sounds like",$0D 
  db " the King went crazy.",$22
  db $7F,$00

;org $88DA8A
Conversation_24:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"Apparently the castle's",$0D
  db " become a place even",$0D 
  db " monsters won't go any",$0D
  db " more.",$22
  db $7F,$00

;org $88DAD3
Conversation_25:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"The king's disappeared!",$0D 
  db " Serves 'im right.",$22
  db $7F,$00

;org $88DB28
Conversation_26:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"All the rich folks took",$0D 
  db " off fer somewhere far",$0D 
  db " away.",$22
  db $7F,$00
warnpc $88DBE0
padbyte $FF     ; Clear unused original text, if necessary
pad $88DBE0

;Relocate last conversation to free space
org $88CC27
Conversation_27:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"If only I'd the money",$0D 
  db " I'd get outta here too,",$0D 
  db " but wherever I went it'd",$0D
  db " prolly be just as bad.",$22
  db $7F,$00

warnpc $88CCB9
padbyte $FF     ; Clear unused original text, if necessary
pad $88CCB9
