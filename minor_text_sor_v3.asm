
;Common subroutine: Write text from $00/$02 to RAM
org $87A8F5
Setup_Text_Parser:
  LDA.W #$0000
  JSL.L $80A688   ;Sub Set_Text_Parser_long (This specifies bank 80 for faster runtime)
  LDA.W #$0000
  RTL         

;Dungeon text section; update text pointers dynamically
org $819276 : dl Nothing_here
org $87A8BB : LDA.W #Nothing_here
org $87A8AF : LDA.W #Empty_Chest
org $87A90B : LDA.W #Item_Get
org $87A922 : LDA.W #GP_Get
org $87A8C7 : LDA.W #TooManyCards
org $87A8D3 : LDA.W #TooManyItems
org $87A8DF : LDA.W #TooMuchEquipment
org $87A89A : LDA.W #MonsterInABox

;Event: Too much GP (Loads pointer to the new text)
;Overwrites a duplicate pointer to "the chest was empty".
org $87A8EB : Treasure_Full_GP:
LDA.W #TooMuchGold

;Replace unused text with a new "Can't carry more gold" line
org $888F63
Enemy5_Num:
  db $10 : dl $0015F3 : db $01,$60,$30
  db "*",$11,$00 : dl $0016E3
  db $7F, $00     ;Replaces Enemy6-8 with a $7F $00 (pause and return)
TooMuchGold:
  db $10 : dl Dungeon_TextSetup
  db "Found ",$11,$00 : dl $0016DB : db " GP.",$0D
  db "But, I can't carry more."
  db $7F,$00
warnpc $888F9F  ;Don't overwrite Dungeon_TextSetup


org $888F9F
Dungeon_TextSetup:
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

org $88D1C4
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
Text_Is_Salah_All_right:
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

; $88E3BF: After this is the status elements None/Zombie/Reptile etc
; $88E48E: Status screen
; $88E590: None/Bolt/Fire etc
; $88E640: (Sword) Atk / (Shield) Def etc
; $88E6B0: 