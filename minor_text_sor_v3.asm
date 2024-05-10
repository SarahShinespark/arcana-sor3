;This turned out to be a major file, ironically.
;Battle text, town text, music test...

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
;Attack effects: pointers
org $888492 : dl X_Attacks
org $87B71F : LDA.W #X_Attacks
org $8598C7 : dl X_dodged
org $8598D2 : dl X_dodged_quickly
org $8598E4 : dl X_damaged_defeated
org $8598EF : dl X_suffered_damage
org $828F5A : dl X_damaged_perished
org $828F45 : dl X_taken_damage
org $828EF4 : dl Lost_His_Mind
org $828F08 : dl Despises_Himself
org $828F18 : dl Surprised_by_wounds
;Spell effects: pointers
org $87BF70 : LDA.W #Not_enough_MP
org $87C875 : dw Suffered_damage2                  ;07C875|088624; 0: Damaging spells
org $87C7AC : LDA.W #Suffered_damage_defeated2
org $87C879 : dw HP_restored                       ;07C879|08868E; 2: Healing
org $87C87B : dw X_has_X                           ;07C87B|0886BA; 3: Death and Statuses
org $87C87D : dw X_has_X                           ;07C87D|0886BA; 4: Death and Statuses
org $87C87F : dw X_stat_decreased                  ;07C87F|0886CE; 5: Debuffs
org $87C877 : dw No_effect                         ;07C877|0887BF; 1: Draining (no effect)
org $87C881 : dw No_effect                         ;07C881|0887BF; 6: Undeath (no effect)
org $87C889 : dw No_effect                         ;07C889|0887BF; 0A: Reflects (no effect)
org $87C88F : dw No_effect                         ;07C88F|0887BF; 0D: Out of battle (no effect)
org $87C883 : dw Spirit_explosion_atk              ;07C883|0886EF; 7: Ruinous Mission
org $87C885 : dw X_stat_increased                  ;07C885|088724; 8: Buffs
org $87C887 : dw Change_Attribute                  ;07C887|08874A; 9: Change Attr.
org $87C88B : dw Status_healed                     ;07C88B|088771; 0B: Status heals
org $87C88D : dw Restoration_of_Spirit             ;07C88D|088794; 0C: Restoration of Spirit
;Other spell effects: pointers
org $87C891 : dw HP_recovery                       ;07C891|0888B9; HP recovery
org $87C893 : dw Status_healed                     ;07C893|088771; Status recovery
org $87C895 : dw Restoration_of_Spirit             ;07C895|088794; Restoration of Spirit
org $87C897 : dw Restoration_of_Spirit             ;07C897|088794; Restoration of Spirit
;Other effects: pointers
org $87C95F : LDA.W #Spirit_explosion              ;07C95F|      ; Ruinous Mission text $08/87E1
org $87C99F : LDA.W #Card_Torn                     ;07C99F|      ; Load card break text
org $87C971 : LDA.W #Spirit_not_here               ;07C971|      ; Load spirit not here (can't use Ruinous Mission)
org $87C804 : LDA.W #No_effect_revive              ;07C804|      ; No effect (Restoration of spirit)
org $85F54B : dl No_flee_boss                      ;05F54B|08886C; Can't run from bosses
org $87C31B : LDA.W #Cast_the_Spell_of             ;07C31B|      ; Load "cast the spell of" text
org $85F688 : LDA.W #Rooks_used_cards              ;05F688|      ; Used cards
org $87C2CF : LDA.W #Annihilated_item              ;07C2CF|      ; Used weapon or amulet as an item
;Status effects: pointers
org $8596C2 : dl IsParalyzed                       ;0596C2|088936;
org $8596CD : dl IsPetrified                       ;0596CD|08894E;
org $8596ED : dl IsConfused                        ;0596ED|088966;
org $85971A : dl IsAsleep                          ;05971A|08897D;
org $85972D : dl HasAwakened                       ;05972D|088992;
;Item effects: pointers
org $85F1D9 : dl ItemUsed                          ;05F1D9|0889AE; Item used: honey boosts stat
org $85F25E : dl ItemUsed                          ;05F25E|0889AE; Item used: X has recovered. (HP+)
org $85F2B3 : dl ItemUsed                          ;05F2B3|0889AE; Item used: X has recovered from X
org $85F2DC : dl ItemUsed                          ;05F2DC|0889AE; Item used: no effect
org $85F1F0 : dl ItemStatIncreased                 ;05F1F0|0889D0;
org $85F271 : dl ItemRecovered                     ;05F271|0889F2;
org $85F2C1 : dl ItemRecoveredStatus               ;05F2C1|088A08;
org $85F2E6 : dl ItemNoEffect                      ;05F2E6|088A28;

;Battle text----------------------
org $888492
X_Attacks:
db $06, $0D, $0C, $05, $01, $05, " ", $0C, $01, $00, $06, $03, $0E, $1D;088492|      ;
db $10 : dl $001581
db " attacks!", $0D, $7F, $00                               ;0884AF|      ;

org $8884B0
X_dodged:
db $10                               ;0884B0|      ;
dl $001598                           ;0884B1|001598;
db $0D, "dodged."                    ;0884B4|      ;
db $7F                               ;0884BC|      ;
db $00                               ;0884BD|      ;

org $8884BE
X_dodged_quickly:   ;50% chance of a different text on enemy dodge
db $10                               ;0884BE|      ;
dl $001598                           ;0884BF|001598;
db $0D, "dodged quickly."            ;0884C2|      ;
db $7F                               ;0884D2|      ;
db $00                               ;0884D3|      ;

org $8884D4
X_damaged_defeated:
db $0C, $01, $00, $06                ;0884D4|      ;
db $10                               ;0884D8|      ;
dl $001598                           ;0884D9|001598;
db " suffered", $0D, $06, $0E        ;0884DC|      ;
db $11                               ;0884E8|      ;
db $00                               ;0884E9|      ;
dl $0016DB                           ;0884EA|0016DB;
db $06, $0D
db " points damage.", $0D             ;0884ED|      ;
db $10                               ;0884FF|      ;
dl $001598                           ;088500|001598;
db " was", $0D, "defeated."          ;088503|      ;
db $7F                               ;088510|      ;
db $00                               ;088511|      ;

org $888513
X_suffered_damage:
db $0C, $01, $00, $06                ;088512|      ;
db $10                               ;088516|      ;
dl $001598                           ;088517|001598;
db " suffered", $0D, $06, $0E        ;08851A|      ;
db $11                               ;088526|      ;
db $00                               ;088527|      ;
dl $0016DB                           ;088528|0016DB;
db $06, $0D
db " points damage."                 ;08852B|      ;
db $7F                               ;08853C|      ;
db $00                               ;08853D|      ;

org $88853F
X_damaged_perished:
db $10                               ;08853E|      ; Game over, man!
dl $001598                           ;08853F|001598;
db " took    ", $0D, $06, $0E        ;088542|      ;
db $11                               ;08854F|      ;
db $00                               ;088550|      ;
dl $0016DB                           ;088551|0016DB;
db $06, $0D, " points damage.", $0D
db $10                               ;088572|      ;
dl $001598                           ;088573|001598;
db " perished."                      ;088576|      ;
db $05, $01, $24, " "
db $7F                               ;088584|      ;
db $00                               ;088585|      ;

warnpc $888586
padbyte $FF
pad $888586

org $888586
X_taken_damage:
db $10                               ;088586|      ;
dl $001598                           ;088587|001598;
db " took     ", $0D, $06, $0E       ;08858A|      ;
db $11                               ;088597|      ;
db $00                               ;088598|      ;
dl $0016DB                           ;088599|0016DB;
db $06, $0D, " points damage."       ;08859C|      ;
db $7F                               ;0885AD|      ;
db $00                               ;0885AE|      ;

org $8885AF
Lost_His_Mind: ; Confusion self-damage: Enemy death
db $10                               ;0885AF|      
dl $001598                           ;0885B0|001598;
db $0D, "committed suicide."         ;0885B3|      ;
db $05, $01, $14, " "
db $7F                               ;0885C6|      ;
db $00                               ;0885C7|      ;

;org $8885C9
Despises_Himself: ; Confusion self-damage: Enemy
db $10                               ;0885C8|      ; Enemy confusion damage
dl $001598                           ;0885C9|001598;
db $0D, "truly hated themselves."
db $05, $01, $14, " "
db $7F                               ;0885DD|      ;
db $00                               ;0885DE|      ;

;org $8885DF
Surprised_by_wounds: ; Confusion self-damage: Enemy misses self
db $10 : dl $001598 : db $0D
db "almost hit themselves."          ;0885F8|      ;
db $05, $01, $14, " "
db $7F                               ;0885FF|      ;
db $00                               ;088600|      ;

;org $888601
;Battle_Text_Format:
;db $06, $0D, $0C, $05, $01, $05, " ", $0C, $01, $00, $06, $03, $0E, $1D, $00;088601|      ;
;Dungeon_TextSetup:  ;There are 6 copies of this subroutine, we only need one

warnpc $888610
padbyte $FF
pad $888610

;Spell effects-----------------------
org $888610
Not_enough_MP:
db $10                               ;088610|      ; Call Formatting sub
dl Dungeon_TextSetup                 ;088611|088601;
db "Not enough MP!"                  ;088614|      ;
db $7F                               ;088622|      ; Pause
db $00                               ;088623|      ; Return

org $888624
Suffered_damage2:   ;Taken spell damage
db $10                               ;088624|      ;
dl Dungeon_TextSetup                 ;088625|088601;
db $10                               ;088628|      ;
dl $001598                           ;088629|001598;
db " suffered", $0D, $06, $0E        ;08862C|      ;
db $11, $00                          ;088639|      ;
dl $0016DB                           ;08863A|0016DB;
db $06, $0D, " points damage."       ;08863D|      ;
db $7F                               ;08864E|      ;
db $00                               ;08864F|      ;

org $888650   ;Taken spell damage and died
Suffered_damage_defeated2:
db $10                               ;088650|      ;
dl Dungeon_TextSetup                 ;088651|088601;
db $10                               ;088654|      ;
dl $001598                           ;088655|001598;
db " suffered", $0D, $06, $0E        ;088658|      ;
db $11, $00                          ;088665|      ;
dl $0016DB                           ;088666|0016DB;
db $06, $0D, " points damage.", $0D  ;088669|      ;
db $10                               ;08867B|      ;
dl $001598                           ;08867C|001598;
db " was", $0D, "defeated."          ;08867F|      ;
db $7F                               ;08868C|      ;
db $00                               ;08868D|      ;

org $88868F
HP_restored:  ;In battle healing
db $10                               ;08868E|      ; Sub
dl Dungeon_TextSetup                 ;08868F|088601;
db $10                               ;088692|      ;
dl $001598                           ;088693|001598;
db $0D
db "recovered "
db $06,$0E,$11,$00 : dl $0016DB      ;08869D|0016DB;
db $06,$0D," HP.", $0D
db $7F                               ;0886B8|      ;
db $00                               ;0886B9|      ;

warnpc $8886BA
padbyte $FF
pad $8886BA

org $8886BA
X_has_X:
db $10                               ;0886BA|      ; Used for death and status effects
dl Dungeon_TextSetup                 ;0886BB|088601;
db $10                               ;0886BE|      ;
dl $001598                           ;0886BF|001598;
db " has", $0D                       ;0886C2|      ;
db $10                               ;0886C7|      ;
dl $0015AF                           ;0886C8|0015AF;
db "."                               ;0886CB|      ;
db $7F                               ;0886CC|      ;
db $00                               ;0886CD|      ;

org $8886CE
X_stat_decreased:
db $10                               ;0886CE|      ;
dl Dungeon_TextSetup                 ;0886CF|088601;
db $10                               ;0886D2|      ;
dl $001598                           ;0886D3|001598;
db "'s     ", $0D                    ;0886D6|      ;
db $10                               ;0886DA|      ;
dl $001581                           ;0886DB|001581;
db " decreased."                     ;0886DE|      ;
db $7F                               ;0886ED|      ;
db $00                               ;0886EE|      ;

org $8886EF
Spirit_explosion_atk:
db $10                               ;0886EF|      ;
dl Dungeon_TextSetup                 ;0886F0|088601;
db $10                               ;0886F3|      ;
dl $001598                           ;0886F4|001598;
db $0D, "was caught in     ", $0D    ;0886F7|      ;
db "the spirit's sacrifice."         ;08870C|      ;
db $7F                               ;088722|      ;
db $00                               ;088723|      ;

org $888724
X_stat_increased:
db $10                               ;088724|      ;
dl Dungeon_TextSetup                 ;088725|088601;
db $10                               ;088728|      ;
dl $001598                           ;088729|001598;
db "'s      ", $0D                   ;08872C|      ;
db $10                               ;088730|      ;
dl $001581                           ;088731|001581;
db " increased.    "                 ;088734|      ;
db $7F                               ;088748|      ;
db $00                               ;088749|      ;

org $88874A
Change_Attribute:
db $10                               ;08874A|      ;
dl Dungeon_TextSetup                 ;08874B|088601;
db $10                               ;08874E|      ;
dl $001598                           ;08874F|001598;
db "'s attribute", $0D,
"became "                            ;088767|      ;
db $10                               ;08876A|      ;
dl $011581                           ;08876B|001581;
db ".    "                           ;08876E|      ;
db $7F                               ;08876F|      ;
db $00                               ;088770|      ;

org $888771
Status_healed:
db $10                               ;088771|      ;
dl Dungeon_TextSetup                 ;088772|088601;
db $10                               ;088775|      ;
dl $001598                           ;088776|001598;
db $0D, "recovered    ", $0D, "from ";088779|      ;
db $10                               ;08878D|      ;
dl $011581                           ;08878E|001581;
db "."                               ;088791|      ;
db $7F                               ;088792|      ;
db $00                               ;088793|      ;

org $888794
Restoration_of_Spirit:
db $10                               ;088794|      ;
dl Dungeon_TextSetup                 ;088795|088601;
db "The "                            ;088798|      ;
db $10                               ;08879C|      ;
dl $001581                           ;08879D|001581;
db " Spirit", $0D
db "has been revived.    "           ;0887B5|      ;
db $7F                               ;0887BD|      ;
db $00                               ;0887BE|      ;

org $8887BF
No_effect:
db $10                               ;0887BF|      ;
dl Dungeon_TextSetup                 ;0887C0|088601;
db "There was no effect", $0D
db "on "                             ;0887D8|      ;
db $10                               ;0887DA|      ;
dl $001598                           ;0887DB|001598;
db "."                               ;0887DE|      ;
db $7F                               ;0887DF|      ;
db $00                               ;0887E0|      ;

org $8887E1
Spirit_explosion: ;Casting Last Resort
db $10                               ;0887E1|      ;
dl Dungeon_TextSetup                 ;0887E2|088601;
db $10                               ;0887E5|      ;
dl $001581                           ;0887E6|001581;
db " made the ultimate", $0D
db "sacrifice.  ", $0D               ;0887FE|      ;
db $7F                               ;08880B|      ;
db $00                               ;08880C|      ;

org $88880C
Card_Torn:      ;Casting Last Resort with a dead spirit
db $10                               ;08880D|      ;
dl Dungeon_TextSetup                 ;08880E|088601;
db "The "                            ;088811|      ;
db $10                               ;088815|      ;
dl $001581                           ;088816|001581;
db " Card"
db $0D, "was torn."                  ;088819|      ;
db $7F                               ;088827|      ;
db $00                               ;088828|      ;

org $888829
Spirit_not_here:  ;Casting Last Resort with no spirit out
db $10                               ;088829|      ;
dl Dungeon_TextSetup                 ;08882A|088601;
db "But the Spirit is", $0D
db "not summoned."                   ;088842|      ;
db $7F                               ;08884C|      ;
db $00                               ;08884D|      ;

org $88884E
No_effect_revive:
db $10                               ;08884E|      ;
dl Dungeon_TextSetup                 ;08884F|088601;
db "But the Spirit is well. "        ;088867|      ;
db $7F                               ;08886A|      ;
db $00                               ;08886B|      ;

org $88886C
No_flee_boss:
db $06, $0D, $0C, $05, $01, $05, " ", $0C, $01, $00, $06, $03, $0E, $1C ;08886C|      ;
db "There's no escape!      ", $00          ;088881|      ;

org $888893
Cast_the_Spell_of:
db $10                               ;088893|      ;
dl Dungeon_TextSetup                 ;088894|088601;
db $10                               ;088897|      ;
dl $001581                           ;088898|001581;
db "    ", $0D
db "cast the spell of", $0D          ;0888B0|      ;
db $10                               ;0888B2|      ;
dl $011598                           ;0888B3|001598;
db "."                               ;0888B6|      ;
db $7F                               ;0888B7|      ;
db $00                               ;0888B8|      ;

org $8888B9
HP_recovery:  ;Out of battle healing
db $10                               ;0888B9|      ;
dl Dungeon_TextSetup                 ;0888BA|088601;
db $10                               ;0888BD|      ;
dl $001598                           ;0888BE|001598;
db $0D
db "recovered "
db $11, $00                          ;0888C5|      ;
dl $0016DB                           ;0888C6|0016DB;
db " HP.",$0D
db $7F                               ;0888E2|      ;
db $00                               ;0888E3|      ;

warnpc $8888E4
padbyte $FF
pad $8888E4

org $8888E4
Rooks_used_cards:
db $10                               ;0888E4|      ;
dl Dungeon_TextSetup                 ;0888E5|088601;
db "Rooks used      ", $0D           ;0888E8|      ;
db $11                               ;0888F7|      ;
db $00                               ;0888F8|      ;
dl $0016DB                           ;0888F9|0016DB;
db "x "                              ;0888FC|      ;
db $10                               ;088900|      ;
dl $011598                           ;088901|001598;
db "."                               ;088904|      ;
db $7F                               ;088905|      ;
db $00                               ;088906|      ;

org $888907
Annihilated_item:
db $10                               ;088907|      ;
dl Dungeon_TextSetup                 ;088908|088601;
db $10                               ;08890B|      ;
dl $001581                           ;08890C|001581;
db " raised the     ", $0D, $10      ;08890F|      ;
dl $001598                           ;088921|001598;
db "!"                               ;088924|      ;
db $7F                               ;088925|      ;
db $00                               ;088926|      ;

;org $888927
;Statused_Text_Setup:
;db $06, $0D, $0C, $05, $01, $05, " ", $0C, $01, $00, $06, $03, $0E, $1D, $00;088927|      ; Subroutine for X is statused

warnpc $888936
padbyte $FF
pad $888936

org $888936
IsParalyzed:
db $10                               ;088936|      ;
dl Dungeon_TextSetup                 ;088937|088927;
db $10                               ;08893A|      ;
dl $001581                           ;08893B|001581;
db $0D, "is paralyzed."              ;08893E|      ;
db $7F                               ;08894C|      ;
db $00                               ;08894D|      ;

org $88894E
IsPetrified:
db $10                               ;08894E|      ;
dl Dungeon_TextSetup                 ;08894F|088927;
db $10                               ;088952|      ;
dl $001581                           ;088953|001581;
db $0D, "is petrified."              ;088956|      ;
db $7F                               ;088964|      ;
db $00                               ;088965|      ;

org $888966
IsConfused:
db $10                               ;088966|      ;
dl Dungeon_TextSetup                 ;088967|088927;
db $10                               ;08896A|      ;
dl $001581                           ;08896B|001581;
db $0D, "is confused."               ;08896E|      ;
db $7F                               ;08897B|      ;
db $00                               ;08897C|      ;

org $88897D
IsAsleep:
db $10                               ;08897D|      ;
dl Dungeon_TextSetup                 ;08897E|088927;
db $10                               ;088981|      ;
dl $001581                           ;088982|001581;
db $0D, "is asleep."                 ;088985|      ;
db $7F                               ;088990|      ;
db $00                               ;088991|      ;

org $888992
HasAwakened:
db $10                               ;088992|      ;
dl Dungeon_TextSetup                 ;088993|088927;
db "But", $0D, $10                   ;088996|      ;
dl $001581                           ;08899B|001581;
db $0D
db "woke up.     "                   ;08899E|      ;
db $7F                               ;0889AC|      ;
db $00                               ;0889AD|      ;

org $8889AE
ItemUsed:
db $06, $0D, $0C, $05, $01, $05, " ", $0C, $01, $00, $06, $03, $0E, $1C, $10;0889AE|      ;
dl $001581                           ;0889BD|001581;
db $0D, "was used.     ", $00        ;0889C0|      ;

org $8889D0
ItemStatIncreased:
db $0D, $10                          ;0889D0|      ;
dl $001581                           ;0889D2|001581;
db "'s ", $10                        ;0889D5|      ;
dl $001598                           ;0889D9|001598;
db $0D, "increased.         "        ;0889DC|      ;
db $7F                               ;0889F0|      ;
db $00                               ;0889F1|      ;

org $8889F2
ItemRecovered:
db $0D, $10                          ;0889F2|      ;
dl $001581                           ;0889F4|001581;
db " recovered.    "                 ;0889F7|      ;
db $7F                               ;088A06|      ;
db $00                               ;088A07|      ;

org $888A08
ItemRecoveredStatus:
db $0D, $10                          ;088A08|      ;
dl $001581                           ;088A0A|001581;
db " recovered    ", $0D, "from " 
db $10 : dl $001598                  ;088A22|001598;
db "."                               ;088A25|      ;
db $7F                               ;088A26|      ;
db $00                               ;088A27|      ;

org $888A28
ItemNoEffect:
db $0D, "There was no effect."       ;088A28|      ;
db $7F                               ;088A3D|      ;
db $00                               ;088A3E|      ;

;---------------------------------------------
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
db $06,$0D,$00
Sub_Color_Text:
db $06,$0E,$00

org $88CCE3
Sub_Shop_menu_GP:
db $1C
db $01,$06,$78        ; Cursor: (06,78)
db "Money         "
db $01,$4B,$78        ; Cursor: (4B,78)
db $11,$04 : dl $001559 : db "GP",$00   ; Load current GP, End string
;---------------------------------
;Inn events: pointers
org $83BD41 : dl Inn_menu                          ;03BD41|08CD58;
org $83BD53 : dl Inn_Anything_Else                 ;03BD53|08CD91;
org $83BD7F : dl Inn_Save_in_which_file            ;03BD7F|08CDB8;
org $83BDB3 : dl Inn_Saving_file_x                 ;03BDB3|08CDED;
org $83BDCC : dl Inn_File_x_not_saved              ;03BDCC|08CE4C;
org $83BDDE : dl Inn_File_x_is_saved               ;03BDDE|08CE1B;
org $83B930 : dl Inn_Loading_save                  ;03B930|08CE82;
org $83BDF5 : dl Inn_Anything_Else                 ;03BDF5|08CD91;
org $83BE17 : dl Sub_Shop_menu_GP                  ;03BE17|08CCE3;
org $83BE21 : dl Inn_One_night_costs_x             ;03BE21|08CEA9;
org $83BE62 : dl Inn_Not_Enough                    ;03BE62|08CF1D;
org $83BE75 : dl Inn_Good_night                    ;03BE75|08CF2E;
org $83BE99 : dl Speaking_text_setup               ;03BE99|08CCBA;
org $83BEB4 : dl Inn_Good_morning_Crono            ;03BEB4|08CF4B;
org $83BEC7 : dl Inn_Bye                           ;03BEC7|08CEE7;

org $88CD58
Inn_menu:
db $10 : dl Speaking_text_setup
db "Welcome.", $0D
db "How can I help you?   ",$0D
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
db "Save in which file?"
db $1C
db $01,$2E,$14,"File 1"
db $01,$2E,$22,"File 2"
db $01,$2E,$30,"File 3",$7F,$00

org $88CDED
Inn_Saving_file_x:
db $10 : dl Speaking_text_setup
db "Okay, saving in "
db $06,$0E, "File ", $11,$00 : dl $0016DB : db $06,$0D    ;File name in yellow
db ".",$7F,$00
warnpc $88CE1B
padbyte $FF     ; Clear unused original text, if necessary
pad $88CE1B


org $88CE1B
Inn_File_x_is_saved:
db $10 : dl Speaking_text_setup
db "The game was saved in",$0D
db $06,$0E, "File ",$11,$00 : dl $0016DB : db $06,$0D   ;File name in yellow
db ".     ",$7F,$00

warnpc $88CE4C
padbyte $FF
pad $88CE4C

org $88CE4C
Inn_File_x_not_saved:
db $10 : dl Speaking_text_setup
db $06,$0E, "File ", $11,$00 : dl $0016DB : db $06,$0D    ;File name in yellow
db " was not saved.",$0D
db "Please try again. ",$7F,$00

org $88CE82
Inn_Loading_save:
db $10 : dl Speaking_text_setup
db "Good morning.",$0D
db "I hope you have a",$0D
db "great day!",$7F,$00

;org $88CEA9
Inn_One_night_costs_x:
db $10 : dl Speaking_text_setup
db "It will cost "
db $11,$00 : dl $0016DB : db "GP",$0D
db "to stay the night.",$0D
db $1C
db $08,$1D
db "Stay"
db $08,$4A
db "Leave",$7F,$00

;org $88CEE7
Inn_Bye:
db $10 : dl Speaking_text_setup
db "Please come and stay",$0D
db "with us whenever you",$0D
db "are tired.",$7F,$00

;org $88CF1D
;Inn_Not_Enough:
;(Moved to free space after Alchemist Conversation_27)

warnpc $88CF2E  ;Don't overwrite Inn_Good_night
padbyte $FF
pad $88CF2E

org $88CF2E
Inn_Good_night:
db $10 : dl Speaking_text_setup
db "Good night. Sleep well!",$7F,$00

org $88CF4B
Inn_Good_morning_Crono:
db $10 : dl Speaking_text_setup
db "Good morning.",$0D
db "It looks like you slept",$0D
db "well last night.",$7F,$00

;Healer events start at $3BED1
;Healer events: pointers
org $83BED5 : dl Spirit_Healer_shop                ;03BED5|08CF87;
org $83BEE4 : dl Sub_Shop_menu_GP                  ;03BEE4|08CCE3;
org $83BF1C : dl Healer_Bye                        ;03BF1C|08D020;
org $83BF3E : dl Healer_No_Torn_Spirits            ;03BF3E|08D08D;
org $83BF4E : dl Healer_What_Else                  ;03BF4E|08D030;
org $83BF67 : dl Healer_Choose_Spirit              ;03BF67|08D191;
org $83BF78 : dl Healer_Revive                     ;03BF78|08D064;
org $83BFA5 : dl Healer_Revive_Price               ;03BFA5|08D0BC;
org $83BFE1 : dl Healer_Revive_Complete            ;03BFE1|08D16B;
org $83BFF4 : dl Healer_Cant_buy_revive            ;03BFF4|08D111;
org $83C020 : dl Healer_What_Else                  ;03C020|08D030;
;org $83C048 : dl Healer_4_Items_For_Sale           ;03C048|08E033;
;org $83C077 : dl Healer_4_Items_For_Sale           ;03C077|08E033;
;org $83C08C : dl Healer_3_Items_For_Sale           ;03C08C|08E081;
org $83C0AC : dl Healer_What_Else                  ;03C0AC|08D030;
org $83C0CC : dl Sub_Shop_menu_GP                  ;03C0CC|08CCE3;
org $83C0E5 : dl Healer_What_Else                  ;03C0E5|08D030;
org $83C0FA : dl Healer_Cant_Buy_Card              ;03C0FA|08CFBF;
org $83C11C : dl Healer_Full_Cards                 ;03C11C|08CFF2;


org $88CF87
Spirit_Healer_shop:
db $10 : dl Speaking_text_setup
db "Welcome.",$0D
db "What would you like?"
db $1C
db $01,$20,$22
db "Cards     Mending",$7F,$00

org $88CFBF
Healer_Cant_Buy_Card:
db $10 : dl Speaking_text_setup
db "You don't have enough",$0D
db "money to buy that card.",$7F,$00

org $88CFF2
Healer_Full_Cards:
db $10 : dl Speaking_text_setup
db "You can't carry any more",$0D
db "of that card.  ",$7F,$00

org $88D020
Healer_Bye:
db $10 : dl Speaking_text_setup
db "Thank you.",$7F,$00

org $88D030
Healer_What_Else:
db $10 : dl Speaking_text_setup
db "What else would you like?"
db $1C
db $01,$20,$22
db "Cards     Mending",$7F,$00

org $88D064
Healer_Revive:
db $10 : dl Speaking_text_setup
db "Which Spirit shall I heal?",$0D
db "        ",$7F,$00

org $88D08D
Healer_No_Torn_Spirits:
db $10 : dl Speaking_text_setup
db "I can revive your fallen",$0D
db "Spirits for you.",$7F,$00

org $88D0BC
Healer_Revive_Price:
db $10 : dl Speaking_text_setup
db "It will cost ",$11,$00 : dl $0016DB : db "GP",$0D
db "to heal that Spirit.",$0D
db "Is that all right?  ",$0D
db $1C
db $01,$20,$30
db "Yes       No",$7F,$00

warnpc $88D111
padbyte $FF
pad $88D111

org $88D111
Healer_Cant_buy_revive:
db $10 : dl Speaking_text_setup
db "You don't seem to have",$0D
db "enough money.",$0D
db "I'm afraid I won't be able",$0D
db "to heal that Spirit.",$7F,$00

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
db "   Menu",$08,$48,"Chat",$7F,$00

;org $88D203
Alchemist_Pick_drink:
db $10 : dl Speaking_text_setup
db "Which one would",$0D
db "ya like?",$00

;org $88D22A
Alchemist_Anything_else:
db $10 : dl Speaking_text_setup
db "Anything else I can get",$0D
db "for ya?"
db $1C,$0D
db "   Menu",$08,$48,"Chat",$7F,$00

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
db " recovers",$0D
db "HP and MP.",$0D,$7F,$00
warnpc $88D3C4

org $88D3C4
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

Inn_Not_Enough:
db $10 : dl Speaking_text_setup
db "I'm sorry, you don't",$0D
db "have enough.",$7F,$00

warnpc $88CCBA  ; Don't overwrite Speaking_text_setup
padbyte $FF     ; Clear unused original text, if necessary
pad $88CCBA
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
;Outfitter events: pointers
;dl Outfitter_menu                    ;03C134|08DC27;
;dl Sub_Shop_menu_GP                  ;03C143|08CCE3;
;dl Outfitter_Bye                     ;03C186|08DD43;
;dl Outfitter_Anything_else           ;03C1FE|08DCCF;
;dl Outfitter_Pay_How                 ;03C222|08DC64;
;dl Sub_Shop_menu_GP                  ;03C27F|08CCE3;
;dl Outfitter_Thanks                  ;03C295|08DC95;
;dl Outfitter_No_Money                ;03C2A0|08DD89;
;dl Outfitter_Full_Items              ;03C2AB|08DDBC;
;dl Outfitter_No_Trade                ;03C2DA|08DE3E;
;dl Outfitter_Cant_Trade              ;03C39D|08DE72;
;dl Outfitter_No_Money                ;03C3D6|08DD89;
;dl Sub_Shop_menu_GP                  ;03C40E|08CCE3;
;dl Outfitter_Traded_X                ;03C427|08DE5E;
;dl Outfitter_Anything_else           ;03C432|08DCCF;
;dl Outfitter_Anything_else           ;03C49D|08DCCF;
;dl Outfitter_Pay_How                 ;03C4C5|08DC64;
;dl Outfitter_Thanks                  ;03C538|08DC95;
;dl Outfitter_No_Money                ;03C547|08DD89;
;dl Outfitter_Full_Items              ;03C552|08DDBC;
;dl Outfitter_No_Trade                ;03C581|08DE3E;
;dl Outfitter_Cant_Trade              ;03C637|08DE72;
;dl Outfitter_No_Money                ;03C674|08DD89;
;dl Outfitter_Sell_Choice             ;03C6DE|08DD09;
;dl Outfitter_Anything_else           ;03C711|08DCCF;
;dl Menu_Sell_8_Weapons               ;03C73F|08E0F2;
;dl Sub_Shop_menu_GP                  ;03C791|08CCE3;
;dl Outfitter_Sell_Price              ;03C7B1|08DECC;
;dl Sub_Shop_menu_GP                  ;03C7E6|08CCE3;
;dl Outfitter_Thanks                  ;03C7F0|08DC95;
;dl Outfitter_Cant_Sell               ;03C809|08DE9F;
;dl Speaking_text_setup               ;03C837|08CCBA;
;dl Outfitter_No_Equipment            ;03C89F|08DDF4;
;dl Menu_Sell_8_Items                 ;03C8C2|08E190;
;dl Sub_Shop_menu_GP                  ;03C902|08CCE3;
;dl Outfitter_Sell_Price              ;03C922|08DECC;
;dl Sub_Shop_menu_GP                  ;03C957|08CCE3;
;dl Outfitter_Thanks                  ;03C961|08DC95;
;dl Outfitter_Cant_Sell               ;03C97A|08DE9F;
;dl Speaking_text_setup               ;03C9A3|08CCBA;
;dl Outfitter_No_Items                ;03C9FE|08DE1A;
;dl Outfitter_Anything_else           ;03CA22|08DCCF;


org $88DC27
Outfitter_menu:
db $10 : dl Speaking_text_setup
db "Welcome!",$0D
db "What do you need?   ",$0D
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
db "You need anything else?  ",$0D
db $1C,$0D
db "  Weapons  Items    Sell",$7F,$00

org $88DD09
Outfitter_Sell_Choice:
db $10 : dl Speaking_text_setup
db "What will you sell me?",$0D
db "     ",$0D
db $1C
db "    Weapons      Items",$7F,$00

org $88DD43
Outfitter_Bye:
db $10 : dl Speaking_text_setup
db "Thank you very much. ",$0D
db "Come back whenever you",$0D
db "need anything else.",$7F,$00

org $88DD89
Outfitter_No_Money:
db $10 : dl Speaking_text_setup
db "You don't have enough",$0D
db "money to buy that item.",$7F,$00

org $88DDBC
 Outfitter_Full_Items:
db $10 : dl Speaking_text_setup
db "You're holding too many",$0D
db "things to take any more.  ",$7F,$00

org $88DDF4
Outfitter_No_Equipment:
db $10 : dl Speaking_text_setup
db "You're not carrying any",$0D
db "weapons.",$7F,$00

org $88DE1A
Outfitter_No_Items:
db $10 : dl Speaking_text_setup
db "You're not carrying any",$0D
db "items.",$7F,$00

org $88DE3E
Outfitter_No_Trade:
db $10 : dl Speaking_text_setup
db "You have nothing to trade.",$7F,$00

org $88DE5E
Outfitter_Traded_X:
db $10 : dl Speaking_text_setup
db "Traded: "
db $06,$0E,$10 : dl $0015AF   ;Item name in yellow
db $7F,$00

org $88DE72
Outfitter_Cant_Trade:
db $10 : dl Speaking_text_setup
db "I'm sorry to say,",$0D
db "I can't take that.   ",$7F,$00

org $88DE9F
Outfitter_Cant_Sell:
db $10 : dl Speaking_text_setup
db "I'm sorry, I can't buy ",$0D
db "your "
db $06,$0E,$10 : dl $0015AF : db $06,$0D    ;Item name in yellow
db ". ",$7F,$00

org $88DECC
Outfitter_Sell_Price:
db $10 : dl Speaking_text_setup
db "I can pay ",$11,$00 : dl $0016DB : db "GP",$0D
db "for "
db $06,$0E,$10 : dl $0015AF : db $06,$0D    ;Item name in yellow
db ".",$0D
db $1C
db $01,$20,$22, "Sell", $08,$52, "Refuse ",$7F,$00

warnpc $88DF03  ;Don't overwrite Outfitter_Trade_6_Weapons:
padbyte $FF
pad $88DF03
;------------------------------
;Icorina house events: pointers
org $83B9FB : dl Text_Entrust_the_princess         ;03B9FB|08E202;
org $83BA40 : dl Text_Axs_isnt_here                ;03BA40|08E257;
org $83BA53 : dl Text_Axs_not_back                 ;03BA53|08E291;
org $83BA66 : dl Text_Is_Anyone_there              ;03BA66|08E2B7;
org $83BAB8 : dl Text_Is_Sarah_All_right           ;03BAB8|08E2FD;
org $83BAF8 : dl Text_Be_Careful                   ;03BAF8|08E36B;
org $80D3CE : dl Sound_test                        ;00D3CE|08E382;
org $80D3D8 : dl Text_Music_Number                 ;00D3D8|08E39D;
org $80D47A : LDA.W #Text_Music_Number      ;Called to update the current music number
org $80D47F : LDA.W #$0088

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
Text_Entrust_the_princess:  ;After getting Sarah in Chapter 2
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Axs
db $22, "Rooks, I'm counting",$0D
db " on you to protect",$0D
db " the Princess.",$22,$0D,$7F
db $10 : dl Delayed_text_setup
db $10 : dl Speak_Rooks
db $22, "Leave it to me.", $22,$7F,$00

;org $88E257
Text_Axs_isnt_here:   ;After getting Darwin in Chapter 2
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Rooks
db $22, "What...?",$0D
db " Axs isn't here.",$0D
db " Where did he go?",$22,$7F,$00

;org $88E291
Text_Axs_not_back:    ;Before getting Axs in Chapter 3
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Rooks
db $22, "Axs hasn't come back",$0D
db " yet.",$22,$7F,$00

;org $88E2B7
Text_Is_Anyone_there:   ;After getting Axs in Chapter 3
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Rooks
db $22,"Is anyone there?",$22,$0D
db $05,$01,$06        ;Text speed 6 frames per letter
db $22,".....?",$22,$0D
db $1E
db $22,"I guess not.",$22,$7F,$00

;org $88E2FD
Text_Is_Sarah_All_right:  ;Before getting Sarah in Chapter 4
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Rooks
db $22,"Is Sarah okay?",$22,$7F
db $10 : dl Delayed_text_setup
db $10 : dl Speak_Icorina
db $22,"Don't worry, I'm here",$0D
db " with her.",$22,$7F
db $10 : dl Delayed_text_setup
db $10 : dl Speak_Rooks
db $22,"Thank you. I'll leave her",$0D
db " in your hands.",$22,$7F,$00

;org $88E36B
Text_Be_Careful:    ;After getting Sarah in Chapter 4
db $10 : dl Speaking_text_setup
db $10 : dl Speak_Icorina
db $22,"Just be careful.",$22,$7F,$00

;org $88E382
Sound_test:
db $06,$0D
db $0C
db $04,$06
db $01,$10,$02  ;db $01,$04,$02
db $1C
db "ARCANA SOUND ROOM", $00

;org $88E39D
Text_Music_Number:
db $06,$0D
db $0C
db $04,$06
db $01,$28,$02  ;db $01,$22,$02
db $1C
db $06,$0E,"MUSIC NUMBER"
db $01,$4C,$10
db $06,$0D
db $11,$01 : dl $00119F : db $00

warnpc $88E3FF  ;Don't overwrite RaceTypes in detail_expand_v10
padbyte $FF
pad $88E3FF