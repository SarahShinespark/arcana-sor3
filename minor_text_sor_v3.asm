;Gratuitous Japanese freespace
;$88CC27-$88CCB9

;Alchemist text: pointer tables
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


;Common subroutine: Write text from $00/$02 to RAM
org $87A8F5
Setup_Text_Parser:
  LDA.W #$0000
  JSL.L $80A688   ;Sub Set_Text_Parser_long (This specifies bank 80 for faster runtime)
  LDA.W #$0000
  RTL         

;Treasure events: update text pointers dynamically
org $819276 : dl Nothing_here
org $87A8BB : LDA.W #Nothing_here
org $87A8AF : LDA.W #Empty_Chest
org $87A90B : LDA.W #Item_Get
org $87A922 : LDA.W #GP_Get
org $87A8C7 : LDA.W #TooManyCards
org $87A8D3 : LDA.W #TooManyItems
org $87A8DF : LDA.W #TooMuchEquipment
org $87A89A : LDA.W #MonsterInABox

;Treasure event: Pointer, can't carry more gold
;Overwrites a duplicate pointer to "the chest was empty".
org $87A8EB : Treasure_Full_GP:
LDA.W #TooMuchGold

;Treasure event: Text, can't carry more gold
;Replace some unused text (only 5 enemies can appear at once, this text was for up to 8)
org $888F63
Enemy5_Num:
  db $10 : dl $0015F3 : db $01,$60,$30
  db "*",$11,$00 : dl $0016E3
  db $7F, $00     ;Replaces Enemy6-8 with a $7F $00 (pause and return)
TooMuchGold:
  db $10 : dl Dungeon_TextSetup
  db "Found ",$11,$00 : dl $0016DB : db " GP.",$0D
  db "But, I can't hold more."
  db $7F,$00
warnpc $888F9F  ;Don't overwrite Dungeon_TextSetup


org $888F9F
;Treasure events: text
Dungeon_TextSetup:  ;There are 6 copies of this subroutine, we only need one
db $06, $0D, $0C, $05, $01, $05, " "
db $0C, $01, $00, $06, $03, $0E, $1D, $00
 
;org $888FAE
;Instant_TextSetup:      ;Used for monster in a box; Displays text immediately

;org $888FBD
Nothing_here:
db $10 : dl Dungeon_TextSetup
db "There's nothing there!",$7F,$00
db $FF

;org $888FD2
Empty_Chest:
db $10 : dl Dungeon_TextSetup
db "The treasure chest",$0D
db "was empty.",$7F,$00

;org $888FF3
Item_Get:
db $10 : dl Dungeon_TextSetup
db "Found ", $22, $10 : dl $0015AF : db $22,".",$7F,$00

;org $88900A
GP_Get:
db $10 : dl Dungeon_TextSetup
db "Found ", $11, $00 : dl $0016DB : db " GP.",$7F,$00

;org $889022
TooManyCards:
db $10 : dl Dungeon_TextSetup
db "Found ", $22, $10 : dl $0015AF : db $22, ".", $0D
db "But, I can't carry", $0D, "any more cards.",$7F,$00

;org $889056
TooManyItems:
db $10 : dl Dungeon_TextSetup
db "Found ", $22, $10 : dl $0015AF : db $22, ".", $0D
db "But, I can't carry", $0D, "any more items.",$7F,$00

;org $88908A
TooMuchEquipment:
db $10 : dl Dungeon_TextSetup
db "Found ", $22, $10 : dl $0015AF : db $22, ".", $0D
db "But, I can't carry", $0D, "any more equipment.",$7F,$00

;org $8890C2
MonsterInABox:
db $10 : dl Dungeon_TextSetup : db $1C
db "Rooks", $0D, $22, "AAAAAAHHH!", $22, $00
warnpc $8890D6 ;Don't overwrite Item_Text_Setup
;---------------------------------
;Battle quotes: pointer tables
org $87B731
Tbl_Critical_hit_text:
dw Take_That_Rooks
dw Take_That_Sylph
dw Take_That_Dao  
dw Take_That_Marid
dw Take_That_Ifrit
dw Take_That_Teefa 
dw Take_That_Sarah 
dw Take_That_Darwin
dw Take_That_Axs   

org $87B782
Tbl_Getting_crit_text:
dw Ouch_Rooks
dw Ouch_Sylph
dw Ouch_Dao  
dw Ouch_Marid
dw Ouch_Ifrit
dw Ouch_Teefa 
dw Ouch_Sarah 
dw Ouch_Darwin
dw Ouch_Axs   

org $87B7CE
Tbl_Dodge_text:
dw Dodge_Rooks
dw Dodge_Sylph
dw Dodge_Dao  
dw Dodge_Marid
dw Dodge_Ifrit
dw Dodge_Teefa 
dw Dodge_Sarah 
dw Dodge_Darwin
dw Dodge_Axs   

;Custom font tiles
;!Wind    = $EC
;!Fire    = $ED
;!Water   = $EE
;!Earth   = $EF

;Battle quotes: text
org $888A3F
Take_That_Rooks:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,"HA!",$22,$0D,$7F,$00

Take_That_Sylph:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,$EC,"!",$22,$0D,$7F,$00

Take_That_Dao:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,$EF,"!",$22,$0D,$7F,$00

Take_That_Marid:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,$EE,"!",$22,$0D,$7F,$00

Take_That_Ifrit:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,$ED,"!",$22,$0D,$7F,$00

Take_That_Teefa:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,"Take that.",$22,$0D,$7F,$00

Take_That_Sarah:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,"Take that!",$22,$0D,$7F,$00

Take_That_Darwin:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,"Let's go!",$22,$0D,$7F,$00

Take_That_Axs:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001581   ;Character name
db $0D,$22,"RAAAAGH!",$22,$0D,$7F,$00

Ouch_Rooks:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,$22,"Ow!",$22,$0D,$7F,$00

Ouch_Sylph:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,"took a direct hit!",$0D,$7F,$00

Ouch_Dao:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,"took a direct hit!",$0D,$7F,$00

Ouch_Marid:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,"took a direct hit!",$0D,$7F,$00

Ouch_Ifrit:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,"took a direct hit!",$0D,$7F,$00

Ouch_Teefa:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,$22,"Ahhh!",$22,$0D,$7F,$00

Ouch_Sarah:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,$22,"Eyaaaa!",$22,$0D,$7F,$00

Ouch_Darwin:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,$22,"Oof!",$22,$0D,$7F,$00

Ouch_Axs:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598   ;Character name
db $0D,$22,"Whoa!",$22,$0D,$7F,$00

Dodge_Rooks:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,$22,"Too easy!",$22,$0D,$7F,$00

Dodge_Sylph:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,"dodged gracefully.",$0D,$7F,$00

Dodge_Dao:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,"dodged gracefully.",$0D,$7F,$00

Dodge_Marid:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,"dodged gracefully.",$0D,$7F,$00

Dodge_Ifrit:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,"dodged gracefully.",$0D,$7F,$00

Dodge_Teefa:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,$22,"You missed.",$22,$0D,$7F,$00

Dodge_Sarah:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,$22,"Missed me!",$22,$0D,$7F,$00

Dodge_Darwin:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,$22,"Almost had me!",$22,$0D,$7F,$00

Dodge_Axs:
db $10 : dl Dungeon_TextSetup
db $10 : dl $001598
db $0D,$22,"Whoops! That was close.",$22,$0D,$7F,$00

warnpc $888E00 ;Don't overwrite new levelup location
padbyte $FF
pad $888E00
;---------------------------------
org $88CCBA
Speaking_text_setup:    ;Used for shop dialogue
db $06, $0D, $0C, $03, $0E, $04, $06, $01, $00, $06, $1E, $00
Delayed_text_setup:     ;Used for Icorina scenes; pauses 14 frames
db $06, $0D, $0C, $05, $01, $14, " ", $0C, $03, $0E, $04, $06, $01, $00, $06, $1E, $00

org $88CCD9
Sub_White_Text:         ;Unnecessary subs
db $06, $0D, $00
Sub_Color_Text:
db $06, $0E, $00

org $88CCE3
Sub_Shop_menu_GP:
db $1C
db $01,$06,$78        ; Cursor: (06,78)
db "Money         "
db $01,$4B,$78        ; Cursor: (4B,78)
db $11,$04 : dl $001559 : db "GP",$00   ; Load current GP, End string
;---------------------------------
;Inn events start at $3BD3D
org $88CD58
Inn_menu:
db $10 : dl Speaking_text_setup
db "Welcome.", $0D
db "What can I do for you?",$0D
db $1C : db $01,$1A,$22
db "A room     Save",$7F,$00

org $88CD91
Inn_Anything_Else:
db $10 : dl Speaking_text_setup
db "Anything else?"
db $1C : db $01,$1A,$22
db "A room     Save",$7F,$00

org $88CDB8
Inn_Save_in_which_file:
db $10 : dl Speaking_text_setup
db "Save as which file?"
db $1C
db $01,$2E,$14,"File 1"
db $01,$2E,$22,"File 2"
db $01,$2E,$30,"File 3",$7F,$00

org $88CDED
Inn_Saving_file_x:
db $10 : dl Speaking_text_setup
db "Saving "
db $10 : dl Sub_Color_Text
db "file ",$11,$00 : dl $0016DB
db $10 : dl Sub_White_Text
db ".",$0D
db "Please wait.",$7F,$00

org $88CE1B
Inn_File_x_is_saved:
db $10 : dl Speaking_text_setup
db $10 : dl Sub_Color_Text
db "File ",$11,$00 : dl $0016DB
db $10 : dl Sub_White_Text : db $0D
db "File successfully saved.",$7F,$00

org $88CE4C
Inn_File_x_not_saved:
db $10 : dl Speaking_text_setup
db $10 : dl Sub_Color_Text
db "File ",$11,$00 : dl $0016DB
db $10 : dl Sub_White_Text : db $0D
db "File is not saved.",$0D
db "Try again.",$7F,$00

org $88CE82
Inn_Loading_save:
db $10 : dl Speaking_text_setup
db "Good morning.",$0D
db "Do your best today!",$7F,$00

org $88CEA9
Inn_One_night_costs_x:
db $10 : dl Speaking_text_setup
db "One night's stay costs",$0D
db $11,$00 : dl $0016DB : db "GP.",$0D
db $1C
db "       Stay     Move on",$7F,$00

org $88CEE7
Inn_Bye:
db $10 : dl Speaking_text_setup
db "Come back whenever you",$0D
db "need a good night's rest.",$7F,$00

org $88CF1D
Inn_Not_Enough:
db $10 : dl Speaking_text_setup
db "Not enough.",$7F,$00

org $88CF2E
Inn_Good_night:
db $10 : dl Speaking_text_setup
db "Good night. Sleep well.",$7F,$00

org $88CF4B
Inn_Good_morning_Crono:
db $10 : dl Speaking_text_setup
db "Good morning.",$0D
db "It looks like you slept well",$0D
db "last night.",$7F,$00

;Healer events start at $3BED1
org $88CF87
Spirit_Healer_shop:
db $10 : dl Speaking_text_setup
db "Welcome.",$0D
db "What would you like?"
db $1C
db $01,$20,$22
db "Cards     Healing",$7F,$00

org $88CFBF
Healer_Cant_Buy_Card:
db $10 : dl Speaking_text_setup
db "You don't have enough",$0D
db "money to buy that card.",$7F,$00

org $88CFF2
Healer_Full_Cards:
db $10 : dl Speaking_text_setup
db "You can't carry any more",$0D
db "of those cards.",$7F,$00

org $88D020
Healer_Thank_You:
db $10 : dl Speaking_text_setup
db "Thank you.",$7F,$00

org $88D030
Healer_What_Else:
db $10 : dl Speaking_text_setup
db "What else would you like?"
db $1C
db $01,$20,$22
db "Cards     Healing",$7F,$00

org $88D064
Healer_Revive:
db $10 : dl Speaking_text_setup
db "Which Spirit would you",$0D
db "like healed?",$7F,$00

org $88D08D
Healer_No_Torn_Spirits:
db $10 : dl Speaking_text_setup
db "I can revive your fallen",$0D
db "spirits for you.",$7F,$00

org $88D0BC
Healer_Revive_Price:
db $10 : dl Speaking_text_setup
db "Healing that spirit will",$0D
db "cost ",$11,$00 : dl $0016DB : db "GP.",$0D
db "Do you want to proceed?",$0D
db $1C
db $01,$20,$30
db "Yes       No",$7F,$00

org $88D111
Healer_Cant_buy_revive:
db $10 : dl Speaking_text_setup
db "You don't seem to have",$0D
db "enough money.",$0D
db "I'm afraid I won't be able",$0D
db "to heal that spirit.",$7F,$00

org $88D16B
Healer_Revive_Complete:
db $10 : dl Speaking_text_setup
db "The healing has been",$0D
db "successful.",$7F,$00

org $88D191
Healer_Choose_Spirit:
db $10 : dl Speaking_text_setup
db $1C
db $01,$0B,$14                  ; Cursor to (0B,14)
db $14 : dl $0015AF             ; Write 1st dead spirit name
db $01,$0B,$22                  ; Cursor to (0B,22)
db $14 : dl $0015B3             ; Write 2nd dead spirit name
db $01,$0B,$30                  ; Cursor to (0B,30)
db $14 : dl $0015B7             ; Write 3rd dead spirit name
db $01,$0B,$3E                  ; Cursor to (0B,3E)
db $14 : dl $0015BB             ; Write 4th dead spirit name
db $10 : dl Sub_Shop_menu_GP    ; Write the GP shop display
db $00                          ; End section

;----------------------------
;The Alchemist events start at $3BB35 btw
org $83BB39 : dl Alchemist_welcome
org $83BBD4 : dl Alchemist_Pick_drink
org $83BB8A : dl Alchemist_Anything_else
org $83BD03 : dl Alchemist_Anything_else
org $83BB5F : dl Alchemist_Leaving
org $83BCD6 : dl Alchemist_Not_enough
org $83BC0A : dl Drink_water
org $83BC27 : dl Drink_Elixir
org $83BC5F : dl Eat_Food_A
org $83BC97 : dl Eat_Food_B
org $83BC3C : dl Gained_5_HP
org $83BC74 : dl Gained_10_HP
org $83BCAC : dl Gained_10_HP_5_MP

org $88D1B7
Speak_Alchemist:  ;Displays his name during Conversations
db $1C,"Bartender",$0D,$1E,$00

;org $88D1C4
Alchemist_welcome:
db $10 : dl Speaking_text_setup
db "Welcome.",$0D
db "What can I do for ya?",$0D
db $1C    ;Display options immediately
db "  Menu",$08,$44,"Chat",$7F,$00

;org $88D203
Alchemist_Pick_drink:
db $10 : dl Speaking_text_setup
db "Which one would ya",$0D
db "like?",$00

;org $88D22A
Alchemist_Anything_else:
db $10 : dl Speaking_text_setup
db "Anything else I can get",$0D
db "for ya?"
db $1C,$0D
db "  Menu",$08,$44,"Chat",$7F,$00

;org $88D266
Alchemist_Leaving:
db $10 : dl Speaking_text_setup
db "Thanks! Come back if",$0D
db "ya need anything else.",$7F,$00

;org $88D289
Alchemist_Not_enough:
db $10 : dl Speaking_text_setup
db "Oh my! Looks like ya",$0D
db "don't have the money",$0D
db "for it.",$7F,$00

;org $88D2A7
Drink_water:
db $10 : dl Speaking_text_setup
db "Everyone has a drink.",$0D
db "It quenches their thirst.",$7F,$00

;org $88D2D1
Drink_Elixir:
db $10 : dl Speaking_text_setup      ; Totally not alcohol.
db "Everyone has a beer.",$0D
db "Cheers!",$7F,$00

;org $88D2FC
Eat_Food_A:
db $10 : dl Speaking_text_setup
db "Everyone eats the combo",$0D
db "meal. They feel full.",$7F,$00

;org $88D325
Eat_Food_B:
db $10 : dl Speaking_text_setup
db "Everyone eats the combo",$0D
db "meal. They feel satisfied.",$7F,$00

;org $88D34E
Gained_5_HP:
db $10 : dl Speaking_text_setup
db $1D      ;Display one line at a time
db $10 : dl $0015AF 
db " recovers HP.",$0D,$7F,$00

;org $88D36E
Gained_10_HP:
db $10 : dl Speaking_text_setup
db $1D      ;Display one line at a time
db $10 : dl $0015AF
db " recovers HP.",$0D,$7F,$00

;org $88D38F
Gained_10_HP_5_MP:
db $10 : dl Speaking_text_setup
db $1D      ;Display one line at a time
db $10 : dl $0015AF 
db " recovers HP",$0D
db "and MP.",$0D,$7F,$00
warnpc $88D3C3

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

;Relocate last conversation to free space; Overwrites unused Japanese menus
org $88CC27
Conversation_27:
  db $10 : dl Speaking_text_setup
  db $10 : dl Speak_Alchemist
  db $22,"If only I'd the money",$0D 
  db " I'd get outta here too,",$0D 
  db " but wherever I went it'd",$0D
  db " prolly be just as bad.",$22
  db $7F,$00

warnpc $88CCB9  ; Don't overwrite Speaking_text_setup
padbyte $FF     ; Clear unused original text, if necessary
pad $88CCB9
;-------------------------------------
org $88DBE0
Alchemist_shop_text:  ; The prices are both text here, and hardcoded elsewhere.
db $10 : dl Speaking_text_setup
db $1C
db $01,$06,$06 : db "Water"
db $01,$2E,$13 : db "   "
db $01,$06,$21 : db "Beer  "
db $01,$2E,$2E : db "5GP"
db $01,$06,$3C : db "Meal A"
db $01,$25,$49 : db "10GP"
db $01,$06,$57 : db "Meal B"
db $01,$25,$64 : db "20GP"
db $10 : dl Sub_Shop_menu_GP : db $00

;Outfitter events start at $3C130
org $88DC27
Outfitter_menu:
db $10 : dl Speaking_text_setup
db "Welcome.",$0D
db "What would you like?",$0D
db $1C      ;Display options all at once
db "  Weapons  Items    Sell",$7F,$00

org $88DC64
Outfitter_Pay_How:
db $10 : dl Speaking_text_setup
db "How will you pay?",$0D,$0D
db $1C
db "       Cash       Trade",$7F,$00

org $88DC95
Outfitter_Thanks:
db $10 : dl Speaking_text_setup
db "Thank you. Anything else?",$0D
db $1C,$0D
db "  Weapons  Items    Sell",$7F,$00

org $88DCCF
Outfitter_Anything_else:
db $10 : dl Speaking_text_setup
db "Anything else you'd like?",$0D
db $1C,$0D
db "  Weapons  Items    Sell",$7F,$00

org $88DD09
Outfitter_Sell_Choice:
db $10 : dl Speaking_text_setup
db "What do you want to",$0D
db "sell me?",$0D
db $1C
db "    Weapons      Items",$7F,$00

org $88DD43
Outfitter_Bye:
db $10 : dl Speaking_text_setup
db "Thank you.",$0D
db "Come back again if there's",$0D
db "anything I can do to help.",$7F,$00

org $88DD89
Outfitter_No_Money:
db $10 : dl Speaking_text_setup
db "You don't have enough",$0D
db "money to buy that item.",$7F,$00

org $88DDBC
 Outfitter_Full_Items:
db $10 : dl Speaking_text_setup
db "Your inventory is full!",$0D
db "You can't hold more items.",$7F,$00

org $88DDF4
Outfitter_No_Equipment:
db $10 : dl Speaking_text_setup
db "You are not holding any",$0D
db "weapons.",$7F,$00

org $88DE1A
Outfitter_No_Items:
db $10 : dl Speaking_text_setup
db "You are not holding any",$0D
db "items.",$7F,$00

org $88DE3E
Outfitter_No_Trade:
db $10 : dl Speaking_text_setup
db "You have nothing to trade.",$7F,$00

org $88DE5E
Outfitter_Traded_X:
db $10 : dl Speaking_text_setup
db "Sold: "
db $10 : dl Sub_Color_Text
db $10 : dl $0015AF
db $7F,$00

org $88DE72
Outfitter_Cant_Trade:
db $10 : dl Speaking_text_setup
db "Too bad, but you can't",$0D
db "trade with that.",$7F,$00

org $88DE9F
Outfitter_Cant_Sell:
db $10 : dl Speaking_text_setup
db "Sorry, but you can't sell",$0D
db $10 : dl Sub_Color_Text
db $10 : dl $0015AF
db $10 : dl Sub_White_Text
db ".",$7F,$00

org $88DECC
Outfitter_Sell_Price:
db $10 : dl Speaking_text_setup
db $10 : dl Sub_Color_Text
db $10 : dl $0015AF
db $10 : dl Sub_White_Text
db $0D
db "costs ",$11,$00 : dl $0016DB : db "GP",$0D
db $1C
db $01,$20,$22, "Sell        Refuse",$7F,$00
;------------------------------
org $88E1E7
Speak_Rooks:
db $1C
db "Rooks",$0D
db $1E,$00

org $88E1F0
Speak_Axs:
db $1C
db "Axs",$0D
db $1E,$00

org $88E1F7
Speak_Icorina:
db $1C
db "Icorina",$0D
db $1E,$00

org $88E202
Text_Entrust_the_princess:
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Axs
db $22, "Rooks, I entrust the",$0D
db " Princess to you.",$22,$0D,$7F
db $10 : dl Delayed_text_setup
db $10 : dl Speak_Rooks
db $22, "Leave everything to me.", $22,$7F,$00

org $88E257
Text_Axs_isnt_here:
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Rooks
db $22, "What? Axs isn't here.",$0D
db " I wonder where he went?",$22,$7F,$00

org $88E291
Text_Axs_not_back:
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Rooks
db $22, "Axs hasn't come back",$0D
db " yet.",$22,$7F,$00

org $88E2B7
Text_Is_Anyone_there:
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Rooks
db $22,"Anyone there?",$22,$0D
db $05,$01,$06        ;Text speed 6 frames per letter
db $22,".....?",$22,$0D
db $1E
db $22,"I guess there's no one",$0D
db " here.",$22,$7F,$00

org $88E2FD
Text_Is_Sarah_All_right:
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Rooks
db $22,"Is Sarah all right?",$22,$7F
db $10 : dl Delayed_text_setup
db $10 : dl Speak_Icorina
db $22,"Don't worry, I'm here.",$22,$7F
db $10 : dl Delayed_text_setup
db $10 : dl Speak_Rooks
db $22,"Thank you. I'll leave it up",$0D
db "to you.",$22,$7F,$00

org $88E36B
Text_Be_Careful:
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Icorina
db $22,"Be careful.",$22,$7F,$00

org $88E382
Sound_test:
db $06,$0D
db $0C
db $04,$06
db $01,$04,$02
db $1C
db "ARCANA SOUND ROOM", $00

org $88E39D
Text_Music_Number:
db $06,$0D
db $0C
db $04,$06
db $01,$22,$02
db $1C
db $06,$0E,"MUSIC NUMBER"
db $01,$4C,$10
db $06,$0D
db $11,$01 : dl $00119F : db $00

warnpc $88E3FF  ;Don't overwrite RaceTypes in detail_expand_v10
padbyte $FF
pad $88E3FF