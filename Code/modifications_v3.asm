;Modifications v3
;Contains the changes from vanilla to 2.1.15 not overwritten by 3.0
;Also contains the new intro skip

;Wipes all EXP upon game start, prevents uninitialization bug
org $808112 : CallWipeEXP:
JSL.L Hack_Wipe_EXP                  ;JSL $87FFB5

;Makes Spirit defense scale with level (fixes a vanilla bug)
org $80C7FF : BuffSpiritDef:
LDA.L $85F107,X  ;Tbl_Spirit_Def_copy     ;80C7FF|BF07F105|05F107;

;Menu buttons were relocated to [hotkeys.asm]
;org $818B20 : db $40  ;Open field menu with X button
;org $818AA3 : db $40  ;Open town menu with X button

;Level up waits for 1 A press (instead of 7)
org $8190CE : db $01

;Part of Multi Levelup patch
org $819028 : Call_MultiLevelLoop:  ;Call Loop lol
   db $1B                               ;819028|        |      ;
   dw Multi_LevelLoop                   ;819029|        |01FFF0;

;Calls ASM subroutine $81907F Post_Battle_Stuff, runs function EXP_Rollover and returns
org $81FFF0 : Multi_LevelLoop:
db $1B                               ;81FFF0|        |      ;
dw $907F                             ;81FFF1|        |01907F;
db $07                               ;81FFF3|        |      ;
dl EXP_Rollover1                     ;81FFF4|        |87FF00;
db $1C                               ;81FFF7|        |      ;

;Dungeon music IDs. The final floor was changed to Birth of A Hero for dramatic tension.
org $83A52A : Tbl_Dungeon_BGM:
   db $4B,$4B,$4A,$4A,$4D,$4C,$4C,$4C   ;83A52A|        |      ;
   db $4B,$4B,$4B,$4B,$4B,$4B,$4B,$4B   ;83A532|        |      ;
   db $4B,$4B,$4B,$4B,$4E,$4C,$4E,$4E   ;83A53A|        |      ;
   db $4E,$4E,$4E,$4E,$4E,$4E,$4E,$4E   ;83A542|        |      ;
   db $4E,$48                           ;83A54A|        |      ;

;Reduce field inventory to half
org $83D5BE
CPX.W #$0030                         ;83D5BE|E03000  |      ;

;Reduce equipment inventory to half
org $83DDD5
CPX.W #$002F                         ;83DDD5|E02F00  |      ;

;Water (first item) is now free   
org $83DF27 : Tbl_Bartender_Prices:
   dw $0000,$0005,$000A,$0014           ;83DF27|        |      ;

;Beer, Meal A, Meal B heal way more now
org $83DFA2 : Bartender_HP_heal:
   dw $001E,$0064,$012C                 ;83DFA2|        |      ;
Bartender_MP_heal:
   dw $000A,$0014,$0040                 ;83DFA8|        |      ;

;Reduced Fog Card price 100->30 ($64->$1E)
org $83E052 : Card_Shop_prices:
   dw $000A,$000A,$000A,$000A           ;83E052|        |      ;
   dw $0064,$001E,$015E                 ;83E05A|        |      ;


;Status effect letter IDs; These start with 00,05,01 then alternate (letter)(position modifier)
org $878EC2
Letter_Tiles_DEATH_Rooks:
   db $00,$05,$01,$0F,$10,$15,$10,$11   ;878EC2|        |      ;
   db $10,$14,$10,$01,$10               ;878ECA|        |      ;
 
Letter_Tiles_DEATH_Spirit:
   db $00,$05,$01,$20,$1C,$20,$1C,$20   ;878ECF|        |      ;
   db $1C,$20,$1C,$20,$1C               ;878ED7|        |      ;
 
Letter_Tiles_DEATH_Guest1:
   db $00,$05,$01,$0F,$14,$15,$14,$11   ;878EDC|        |      ;
   db $14,$14,$14,$01,$14               ;878EE4|        |      ;
 
Letter_Tiles_DEATH_Guest2:
   db $00,$05,$01,$0F,$18,$15,$18,$11   ;878EE9|        |      ;
   db $18,$14,$18,$01,$18               ;878EF1|        |      ;
 
Letter_Tiles_PARA_Rooks:
   db $00,$05,$01,$0D,$10,$11,$10,$07   ;878EF6|        |      ;
   db $10,$11,$10,$10,$10               ;878EFE|        |      ;
 
Letter_Tiles_PARA_Guest1:
   db $00,$05,$01,$0D,$14,$11,$14,$07   ;878F03|        |      ;
   db $14,$11,$14,$10,$14               ;878F0B|        |      ;
 
Letter_Tiles_PARA_Guest2:
   db $00,$05,$01,$0D,$18,$11,$18,$07   ;878F10|        |      ;
   db $18,$11,$18,$10,$18               ;878F18|        |      ;
 
Letter_Tiles_STONE_Rooks:
   db $00,$05,$01,$0A,$10,$14,$10,$08   ;878F1D|        |      ;
   db $10,$18,$10,$15,$10               ;878F25|        |      ;
 
Letter_Tiles_STONE_Guest1:
   db $00,$05,$01,$0A,$14,$14,$14,$08   ;878F2A|        |      ;
   db $14,$18,$14,$15,$14               ;878F32|        |      ;
 
Letter_Tiles_STONE_Guest2:
   db $00,$05,$01,$0A,$18,$14,$18,$08   ;878F37|        |      ;
   db $18,$18,$18,$15,$18               ;878F3F|        |      ;
 
Letter_Tiles_CONFU_Rooks:
   db $00,$05,$01,$19,$10,$08,$10,$18   ;878F44|        |      ;
   db $10,$16,$10,$1A,$10               ;878F4C|        |      ;
 
Letter_Tiles_CONFU_Guest1:
   db $00,$05,$01,$19,$14,$08,$14,$18   ;878F51|        |      ;
   db $14,$16,$14,$1A,$14               ;878F59|        |      ;
 
Letter_Tiles_CONFU_Guest2:
   db $00,$05,$01,$19,$18,$08,$18,$18   ;878F5E|        |      ;
   db $18,$16,$18,$1A,$18               ;878F66|        |      ;
 
Letter_Tiles_SLEEP_Rooks:
   db $00,$05,$01,$0A,$10,$0C,$10,$15   ;878F6B|        |      ;
   db $10,$15,$10,$0D,$10               ;878F73|        |      ;
 
Letter_Tiles_SLEEP_Guest1:
   db $00,$05,$01,$0A,$14,$0C,$14,$15   ;878F78|        |      ;
   db $14,$15,$14,$0D,$14               ;878F80|        |      ;
 
Letter_Tiles_SLEEP_Guest2:
   db $00,$05,$01,$0A,$18,$0C,$18,$15   ;878F85|        |      ;
   db $18,$15,$18,$0D,$18               ;878F8D|        |      ;

;Character name letter IDs; edit these to make the character portraits show the right names
org $878FE9
Letter_Tiles_ROOKS:
   db $00,$05,$01,$07,$10,$08,$10,$08   ;878FE9|        |      ;
   db $10,$09,$10,$0A,$10               ;878FF1|        |      ;
 
Letter_Tiles_SYLPH:
   db $00,$05,$01,$0A,$1C,$0B,$1C,$0C   ;878FF6|        |      ;
   db $1C,$0D,$1C,$0E,$1C               ;878FFE|        |      ;
 
Letter_Tiles_DAO:
   db $00,$05,$01,$10,$1C,$0F,$1C,$11   ;879003|        |      ;
   db $1C,$08,$1C,$10,$1C               ;87900B|        |      ;
 
Letter_Tiles_MARID:
   db $00,$05,$01,$12,$1C,$11,$1C,$07   ;879010|        |      ;
   db $1C,$13,$1C,$0F,$1C               ;879018|        |      ;
 
Letter_Tiles_IFRIT:
   db $00,$05,$01,$13,$1C,$16,$1C,$07   ;87901D|        |      ;
   db $1C,$13,$1C,$14,$1C               ;879025|        |      ;
 
Letter_Tiles_TEEFA:
   db $00,$05,$01,$14,$14,$15,$14,$15   ;87902A|        |      ;
   db $14,$16,$14,$11,$14               ;879032|        |      ;
 
Letter_Tiles_SARAH:
   db $00,$05,$01,$0A,$14,$11,$14,$07   ;879037|        |      ;
   db $14,$11,$14,$0E,$14               ;87903F|        |      ;
 
Letter_Tiles_ARWIN:
   db $00,$05,$01,$26,$18,$27,$18,$28   ;879044|        |      ;
   db $18,$29,$18,$2A,$18               ;87904C|        |      ;
 
Letter_Tiles_AXS:
   db $00,$05,$01,$10,$18,$11,$18,$17   ;879051|        |      ;
   db $18,$0A,$18,$10,$18               ;879059|        |      ;
 
Letter_Tiles_Blank:
   db $00,$05,$01,$10,$1C,$10,$1C,$10   ;87905E|        |      ;
   db $1C,$10,$1C,$10,$1C               ;879066|        |      ;

;Skips a Branch Always; makes Enchanted Jewel display greyed out in battle and in the menu
org $878968
NOP                                  ;878968|EA      |      ;
NOP                                  ;878969|EA      |      ;
org $87A13F
NOP                                  ;87A13F|EA      |      ;
NOP                                  ;87A140|EA      |      ;

;Add Item to inventory: $30 slots instead of $60
org $87AA27
CPX.W #$0030                         ;87AA27|E03000  |      ;

;Bank pointer for spell handler
org $87C338
LDA.W #$0087                         ;87C338|A90780  |      ;
   

;Multi Level Up
;Calls a subroutine for the multi levelup check
org $87B249 : SubLevelupCheck:
   JML.L EXP_Rollover2                  ;87B249|5C3EFF87|87FF3E; 
   NOP                                  ;87B24D|EA      |      ;

;Overwrite "set ToNextLevel to Current EXP" for our own routine
;I think it sets your EXP depending on if you're fighting the final boss?
org $87B29F
JML.L $87FFA5                           ;87B29F|5CA5FF87|87FFA5;

org $87B425 : SubLevelupDeduct:
   JML.L EXP_Rollover3                  ;87B425|5C68FF87|87FF68;

;EXP Rollover (Multi Levelup patch)
;If you gain a level, reuses the leftover EXP towards multiple levels.
org $87FF00 : EXP_Rollover1:
   LDX.W $103F ;Selection               ;87FF00|AE3F10  |00103F;
   LDA.W $09EB,X ;Selection_value,X     ;87FF03|BDEB09  |0009EB;
   ASL A                                ;87FF06|0A      |      ;
   TAX                                  ;87FF07|AA      |      ;
   LDA.W $155B,X ;Curr_party,X          ;87FF08|BD5B15  |00155B;
   CMP.W #$0009                         ;87FF0B|C90900  |      ;
   BEQ CODE_87FF37                      ;87FF0E|F027    |87FF37;
   PHX                                  ;87FF10|DA      |      ;
   LDA.W $155B,X ;Curr_party,X          ;87FF11|BD5B15  |00155B;
   LDX.W #$0078                         ;87FF14|A27800  |      ;
   JSL.L $808A39 ;MultiplyTo1E00_far    ;87FF17|22398A80|808A39;
   PLX                                  ;87FF1B|FA      |      ;
   LDA.W $137B,X ;CurrentLV,X           ;87FF1C|BD7B13  |00137B;
   CMP.W #$003C                         ;87FF1F|C93C00  |      ;
   BCS CODE_87FF37                      ;87FF22|B013    |87FF37;
   ASL A                                ;87FF24|0A      |      ;
   CLC                                  ;87FF25|18      |      ;
   ADC.B $00                            ;87FF26|6500    |000000;
   TAY                                  ;87FF28|A8      |      ;
   LDA.W $1363,X ;CurrentEXP,X          ;87FF29|BD6313  |001363;
   BEQ CODE_87FF38                      ;87FF2C|F00A    |87FF38;
   TYX                                  ;87FF2E|BB      |      ;
   CMP.L $85A91A,X ;EXP_To_Next,X       ;87FF2F|DF1AA985|85A91A;
   BEQ CODE_87FF37                      ;87FF33|F002    |87FF37;
   BCS CODE_87FF38                      ;87FF35|B001    |87FF38;
 
CODE_87FF37:
   RTL                                  ;87FF37|6B      |      ;

;If there's more EXP to allocate, restart the levelup process (jump back to Multi_LevelLoop)  
CODE_87FF38:
   LDA.W #$FFEF                         ;87FF38|A9EFFF  |      ;
   STA.B $10                            ;87FF3B|8510    |000010;
   RTL                                  ;87FF3D|6B      |      ;

;Returns 1 if you leveled up, 0 otherwise
org $87FF3E : EXP_Rollover2:
   PHX                                  ;87FF3E|DA      |      ;
   LDA.W $155B,X ;Curr_party,X          ;87FF3F|BD5B15  |00155B;
   LDX.W #$0078                         ;87FF42|A27800  |      ;
   JSL.L $808A39 ;MultiplyTo1E00_far    ;87FF45|22398A80|808A39;
   PLX                                  ;87FF49|FA      |      ;
   LDA.W $137B,X ;CurrentLV,X           ;87FF4A|BD7B13  |00137B;
   ASL A                                ;87FF4D|0A      |      ;
   CLC                                  ;87FF4E|18      |      ;
   ADC.B $00                            ;87FF4F|6500    |000000;
   TAY                                  ;87FF51|A8      |      ;
   LDA.W $1363,X ;CurrentEXP,X          ;87FF52|BD6313  |001363;
   BEQ CODE_87FF64                      ;87FF55|F00D    |87FF64;
   TYX                                  ;87FF57|BB      |      ;
   CMP.L $85A91A,X ;EXP_to_Next,X       ;87FF58|DF1AA985|85A91A;
   BEQ CODE_87FF60                      ;87FF5C|F002    |87FF60;
   BCS CODE_87FF64                      ;87FF5E|B004    |87FF64;
 
CODE_87FF60:
   LDA.W #$0000                         ;87FF60|A90000  |      ;
   RTL                                  ;87FF63|6B      |      ;
  
CODE_87FF64:
   LDA.W #$0001                         ;87FF64|A90100  |      ;
   RTL                                  ;87FF67|6B      |      ;

;Deducts the current EXP from the To Next Level
org $87FF68 : EXP_Rollover3: 
   LDA.W $1363,X ;CurrentEXP,X          ;87FF68|BD6313  |001363;
   SEC                                  ;87FF6B|38      |      ;
   SBC.W $13A3 ;Temp_EXP                ;87FF6C|EDA313  |0013A3;
   STA.W $1363,X ;CurrentEXP,X          ;87FF6F|9D6313  |001363;
   PHX                                  ;87FF72|DA      |      ;
   BCS CODE_87FF95                      ;87FF73|B020    |87FF95;
   LDA.W $155B,X ;Curr_party,X          ;87FF75|BD5B15  |00155B;
   LDX.W #$0078                         ;87FF78|A27800  |      ;
   JSL.L $808A39 ;MultiplyTo1E00_far    ;87FF7B|22398A80|808A39;
   PLX                                  ;87FF7F|FA      |      ;
   LDA.W $137B,X ;CurrentLV,X           ;87FF80|BD7B13  |00137B;
   ASL A                                ;87FF83|0A      |      ;
   CLC                                  ;87FF84|18      |      ;
   ADC.B $00                            ;87FF85|6500    |000000;
   TAY                                  ;87FF87|A8      |      ;
   PHX                                  ;87FF88|DA      |      ;
   LDA.W $1363,X ;CurrentEXP,X          ;87FF89|BD6313  |001363;
   TYX                                  ;87FF8C|BB      |      ;
   CMP.L $85A91A,X ;EXP_To_Next,X       ;87FF8D|DF1AA985|85A91A;
   BEQ CODE_87FF97                      ;87FF91|F004    |87FF97;
   BCC CODE_87FF97                      ;87FF93|9002    |87FF97;
 
CODE_87FF95:
   PLX                                  ;87FF95|FA      |      ;
   RTL                                  ;87FF96|6B      |      ;
  
CODE_87FF97:
   LDA.L $85A91A,X ;EXP_To_Next,X       ;87FF97|BF1AA985|85A91A;
   INC A                                ;87FF9B|1A      |      ;
   PLX                                  ;87FF9C|FA      |      ;
   STA.W $1363,X ;CurrentEXP,X          ;87FF9D|9D6313  |001363;
   RTL                                  ;87FFA0|6B      |      ;
 
   LDA.L $85A91A,X ;EXP_To_Next,X       ;87FFA1|BF1AA985|85A91A;

   LDX.W $1064                          ;87FFA5|AE6410  |001064;
   CPX.W #$0055                         ;87FFA8|E05500  |      ;
   BNE CODE_87FFB1                      ;87FFAB|D004    |87FFB1;
   CLC                                  ;87FFAD|18      |      ;
   ADC.W $1363,Y ;CurrentEXP,Y          ;87FFAE|796313  |001363;
 
CODE_87FFB1:
   STA.W $1363,Y ;CurrentEXP,Y          ;87FFB1|996313  |001363;
   RTL                                  ;87FFB4|6B      |      ;
 
;Called during power on, splices in $8112 and clears out EXP
Hack_Wipe_EXP:
   PHX                                  ;87FFB5|DA      |      ;
   LDX.W #$0030                         ;87FFB6|A23000  |      ;
CODE_87FFB9:
   STZ.W $1363,X ;CurrentEXP,X          ;87FFB9|9E6313  |001363;
   DEX                                  ;87FFBC|CA      |      ;
   DEX                                  ;87FFBD|CA      |      ;
   BNE CODE_87FFB9                      ;87FFBE|D0F9    |87FFB9;
   PLX                                  ;87FFC0|FA      |      ;
   LDA.W #$1E00                         ;87FFC1|A9001E  |      ;
   TCD                                  ;87FFC4|5B      |      ;
   RTL                                  ;87FFC5|6B      |      ;
 
 
;Injects an extra command to set an HDMA temp variable low nybble to 0 (idk why)
org $97800A : Call_Init_Hack:
JSL.L Initialization_Hack            ;97800A|22C0FF9C|9CFFC0;
NOP                                  ;97800E|EA      |      ;
NOP                                  ;97800F|EA      |      ;

; Splice in our intro skip code.
; If A/Start are pressed, breaks out of the current text loop and jumps to the end.
; Otherwise, reads the next byte (0) and checks if the text has finished printing before continuing (normal behavior)
org $9785C8 : Call_Intro_Skip_Check:
db $07 : dl Intro_Skip_Check

; Reduce pause: 100->25 frames, before "This was about 10 years ago". This also speeds up the intro skip.
org $9785E5 : Last_Part_Of_Intro:
db $06, $19

;Skips the intro if Start are pressed (after fadein)
;This will jump to the "10 years ago" line
org $97FF00 : Intro_Skip_Check:
LDA.W $0021
AND.W #$1000       ;Check inputs held/pressed for Start
BEQ +              ;Branch if false
LDA.W #$0007       ;Set current intro animation to 7 ("This was around 10 years ago")
STA.W $11B5
INC.b $10          ;Advance program counter (since we're skipping the function that reads the next byte)
LDA.W #$0001       ;Return 1 to break out of the loop
RTL
+:
JML.L $87BA4F      ;Else: jump to original code (Waiting for text to be done printing)
RTL


;Injection: Zeros a temp variable for HDMA channel
org $9CFFC0 : Initialization_Hack:
LDA.W #$0024                         ;9CFFC0|A92400  |      ;
STA.W $0639                          ;9CFFC3|8D3906  |000639;
SEP #$20                             ;9CFFC6|E220    |      ;
STZ.W $105A                          ;9CFFC8|9C5A10  |00105A;
REP #$20                             ;9CFFCB|C220    |      ;
RTL                                  ;9CFFCD|6B      |      ;
db $FF,$FF                           ;9CFFCE|        |648FFF;

