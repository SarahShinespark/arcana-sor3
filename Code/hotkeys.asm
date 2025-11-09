; Dungeon hotkeys - Buttons you can press while exploring dungeons
; X = Menu
; Y = Map

;Open town menu with X button (relocated from [modifications_v3.asm] for completion)
org $818AA3 : db $40  

;Splice in the new code (mid-dungeon input checking)
org $818B1C
  db $1A : dw New_Dungeon_Hotkeys

; Label for the Menu-opening code
org $818B38 : Dungeon_Menu:

; Update "exit from map" code to respond to any face button (since Y opens the map now)
org $819C34 : Map_Loop_until_button_press:
   db $06, $01                               ; WAIT 1
   db $1E : dw $0000                         ; Clear accumulator
   db $07 : dl $80A00F : dw $C0C0            ; Check for ABXY press
   db $0B : dw Map_Loop_until_button_press   ; If false, keep looping


org $81F990
New_Dungeon_Hotkeys:
   db $07 : dl $80A00F          ; Check for X pressed (Menu)
   dw $0040                     ;
   db $0C : dw Dungeon_Menu     ; If A pressed, jump to Menu

   db $07 : dl $80A00F          ; Check for Y pressed (Map)
   dw $4000                     ;
   db $0C : dw Call_Map         ; If Y pressed, jump to Map subroutine

   db $07 : dl $80A00F          ; Check for A pressed (Look)
   dw $0080                     ;
   db $0C : dw Call_Look        ; If A pressed, jump to Open subroutine

   db $1A : dw $8AE9            ; Catch-all, jump to Code_Dungeon_Idle_Loop

;Look and Map end with a Return From Subroutine, so we have to call them with a subroutine
Call_Map:
   db $1B : dw $9BE5            ; Call Map Menu
   db $1A : dw $8AE9            ; After returning from the map, jump to Code_Dungeon_Idle_Loop

Call_Look:
   db $07       ;ASM_CALL
   dl $80A0AC   ;  Call text parser
   dl $888007   ;  Print "0C" to clear the text area (in lieu of printing the whole menu)
   db $00       ;  Write to text buffer 0
   db $07       ;ASM_CALL
   dl $809D07   ;  Call graphics transfer
   dl $81B52F   ;  Draw the menu black box
   db $16       ;MOV $157B, 0 - Hide the compass
   dw $157B
   dw $0000
   db $07       ;ASM_CALL
   dl $809C44   ;Play SFX 11 (Confirm)
   db $11

   db $1B : dw $9260    ;Call Look - search for treasure chest or say Nothing here!
   db $1A : dw $8AE9    ; After returning from Look, jump to Code_Dungeon_Idle_Loop




;Adjust Rooks' Battle Menu cursor movement to allow for a 9th command
org $87AD0F
BattleMenu_MoveUp_Rooks:
   dw $0002                             ;07AD0F|      ;Up on Attack: down 2 to Arcana
   dw $FFFF                             ;07AD11|      ;Up on Weapons: down -1 to Attack
   dw $FFFF                             ;07AD13|      ;Up on Arcana: down -1 to Weapons
   dw $0002                             ;07AD15|      ;Up on Magic: down 2 to Check
   dw $FFFF                             ;07AD17|      ;
   dw $FFFF                             ;07AD19|      ;
   dw $0002                             ;07AD1B|      ;
   dw $FFFF                             ;07AD1D|      ;
   dw $FFFF                             ;07AD1F|      ;
BattleMenu_MoveUp_Spirit:
   dw $0000                             ;07AD21|      ;
   dw $0000                             ;07AD23|      ;
   dw $0000                             ;07AD25|      ;
   dw $0000                             ;07AD27|      ;
   dw $0000                             ;07AD29|      ;
   dw $0000                             ;07AD2B|      ;
   dw $0000                             ;07AD2D|      ;
   dw $0000                             ;07AD2F|      ;
   dw $0000                             ;07AD31|      ;
BattleMenu_MoveUp_Guest:
   dw $0001                             ;07AD33|      ;Up on Attack: down 1 to Weapons
   dw $FFFF                             ;07AD35|      ;Up on Weapons: down -1 to Attack
   dw $0000                             ;07AD37|      ;
   dw $0002                             ;07AD39|      ;Up on Magic: down 2 to Check
   dw $FFFF                             ;07AD3B|      ;Up on Items: down -1 to Magic
   dw $FFFF                             ;07AD3D|      ;Up on Check: down -1 to Items
   dw $0001                             ;07AD3F|      ;
   dw $FFFF                             ;07AD41|      ;
   dw $0000                             ;07AD43|      ;

org $87AD69
BattleMenu_MoveDown_Rooks:
   dw $0001                             ;07AD69|      ;
   dw $0001                             ;07AD6B|      ;
   dw $FFFE                             ;07AD6D|      ;
   dw $0001                             ;07AD6F|      ;
   dw $0001                             ;07AD71|      ;
   dw $FFFE                             ;07AD73|      ;
   dw $0001                             ;07AD75|      ;
   dw $0001                             ;07AD77|      ;
   dw $FFFE                             ;07AD79|      ;
BattleMenu_MoveDown_Spirit:
   dw $0000                             ;07AD7B|      ;
   dw $0000                             ;07AD7D|      ;
   dw $0000                             ;07AD7F|      ;
   dw $0000                             ;07AD81|      ;
   dw $0000                             ;07AD83|      ;
   dw $0000                             ;07AD85|      ;
   dw $0000                             ;07AD87|      ;
   dw $0000                             ;07AD89|      ;
   dw $0000                             ;07AD8B|      ;
BattleMenu_MoveDown_Guest:
   dw $0001                             ;07AD8D|      ;
   dw $FFFF                             ;07AD8F|      ;
   dw $0000                             ;07AD91|      ;
   dw $0001                             ;07AD93|      ;
   dw $0001                             ;07AD95|      ;
   dw $FFFE                             ;07AD97|      ;
   dw $0001                             ;07AD99|      ;
   dw $FFFF                             ;07AD9B|      ;
   dw $0000                             ;07AD9D|      ;

org $87ADC3
BattleMenu_MoveLeft_Rooks:
   dw $0006                             ;07ADC3|      ;
   dw $0006                             ;07ADC5|      ;
   dw $0006                             ;07ADC7|      ;
   dw $FFFD                             ;07ADC9|      ;
   dw $FFFD                             ;07ADCB|      ;
   dw $FFFD                             ;07ADCD|      ;
   dw $FFFD                             ;07ADCF|      ;
   dw $FFFD                             ;07ADD1|      ;
   dw $FFFD                             ;07ADD3|      ;
BattleMenu_MoveLeft_Spirit:
   dw $0006                             ;07ADD5|      ;
   dw $0000                             ;07ADD7|      ;
   dw $0000                             ;07ADD9|      ;
   dw $FFFD                             ;07ADDB|      ;
   dw $0000                             ;07ADDD|      ;
   dw $0000                             ;07ADDF|      ;
   dw $FFFD                             ;07ADE1|      ;
   dw $0000                             ;07ADE3|      ;
   dw $0000                             ;07ADE5|      ;
BattleMenu_MoveLeft_Guest:
   dw $0006                             ;07ADE7|      ;
   dw $0006                             ;07ADE9|      ;
   dw $0000                             ;07ADEB|      ;
   dw $FFFD                             ;07ADED|      ;
   dw $FFFD                             ;07ADEF|      ;
   dw $0000                             ;07ADF1|      ;
   dw $FFFD                             ;07ADF3|      ;
   dw $FFFD                             ;07ADF5|      ;
   dw $0000                             ;07ADF7|      ;

org $87AE1D
BattleMenu_MoveRight_Rooks:
   dw $0003                             ;07AE1D|      ;
   dw $0003                             ;07AE1F|      ;
   dw $0003                             ;07AE21|      ;
   dw $0003                             ;07AE23|      ;
   dw $0003                             ;07AE25|      ;
   dw $0003                             ;07AE27|      ;
   dw $FFFA                             ;07AE29|      ;
   dw $FFFA                             ;07AE2B|      ;
   dw $FFFA                             ;07AE2D|      ;
BattleMenu_MoveRight_Spirit:
   dw $0003                             ;07AE2F|      ;
   dw $0000                             ;07AE31|      ;
   dw $0000                             ;07AE33|      ;
   dw $0003                             ;07AE35|      ;
   dw $0000                             ;07AE37|      ;
   dw $0000                             ;07AE39|      ;
   dw $FFFA                             ;07AE3B|      ;
   dw $0000                             ;07AE3D|      ;
   dw $0000                             ;07AE3F|      ;
BattleMenu_MoveRight_Guest:
   dw $0003                             ;07AE41|      ;
   dw $0003                             ;07AE43|      ;
   dw $0000                             ;07AE45|      ;
   dw $0003                             ;07AE47|      ;
   dw $0003                             ;07AE49|      ;
   dw $0000                             ;07AE4B|      ;
   dw $FFFA                             ;07AE4D|      ;
   dw $FFFA                             ;07AE4F|      ;
   dw $0000                             ;07AE51|      ;


; Vanilla label; draws your battle menu and listens for input
org $859748 : Display_BattleMenu:

org $8597BE
Tbl_Battle_Commands:
   dw Battle_Attack                     ;0597BE|0597FE; Attack
   dw Battle_Weapons                    ;0597C0|059C59; Weapons
   dw Battle_Cards                      ;0597C2|059CC0; Cards
   dw Battle_Magic                      ;0597C4|059B2E; Magic
   dw Battle_Items                      ;0597C6|05994F; Item
   dw Battle_Check                      ;0597C8|0598B8; Check - I made this!
   dw Battle_Defend                     ;0597CA|059CD2; Defend
   dw Battle_Run                        ;0597CC|059CF1; Run
   dw Battle_Call                       ;0597CE|059A0C; Call

org $8597FE : Battle_Attack:
org $859C59 : Battle_Weapons:
org $859CC0 : Battle_Cards:
org $859B2E : Battle_Magic:
org $85994F : Battle_Items:
;           : Battle_Check:             ;I made this!
org $859CD2 : Battle_Defend:
org $859CF1 : Battle_Run:
org $859A0C : Battle_Call:

;Unused space at the end of bank 05
org $85FAE0
Battle_Check:
   db $0F                               ;0597FE|      ; 0F: Store 0014 in var1
   db $01                               ;0597FF|      ;
   dw $0014                             ;059800|      ;
   db $07       ;CALL_ASM
   dl $80A140   ;Gfx_GetPalette_3b_1b_2b
   dl $8D958E   ;Text_Color_Yellow
   db $02                               ;059809|      ; $420+2x2 -> $1C
   dw $0002                             ;05980A|      ; Loop once (Store (0D/958E) -> $0424)
   db $07       ;ASM_CALL
   dl $80A0AC   ;  Call text parser
   dl Check_Start  ;Prompt the player to select an enemy
   db $00       ;  Write to text buffer 0
   db $07                               ;05980C|      ; 07: Call 07/8A30 (Some Targeting Prep)
   dl $878A30   ;Sub_Targeting_Prep                ;05980D|078A30;
Draw_Enemy_Cursor:
   db $06                               ;059810|      ; Delay 01
   db $01                               ;059811|      ;
   db $07                               ;059812|      ;
   dl $878AA0   ;Sub_078AA0                        ;059813|078AA0;
   db $07                               ;059816|      ;
   dl $878C75   ;Swap_values                       ;059817|078C75;
   db $07                               ;05981A|      ;
   dl $879118   ;Get_enemy_ID_far                  ;05981B|079118;
   db $07                               ;05981E|      ;
   dl $87B61B   ;Get_Enemy_AtkFrame_flag           ;05981F|07B61B;
   db $11                               ;059822|      ;
   db $04                               ;059823|      ;
   dw Selecting_EnemyFrame_00           ;059824|05982C;
   dw Selecting_EnemyFrame_01           ;059826|059831;
   dw Selecting_EnemyFrame_02           ;059828|059836;
   dw Selecting_EnemyFrame_03           ;05982A|05983B;
Selecting_EnemyFrame_00:
   db $30                               ;05982C|      ;
   db $07                               ;05982D|      ;
   db $1A                               ;05982E|      ;
   dw Selecting_Enemy_Button_Listen     ;05982F|05983D;
Selecting_EnemyFrame_01:
   db $30                               ;059831|      ;
   db $08                               ;059832|      ;
   db $1A                               ;059833|      ;
   dw Selecting_Enemy_Button_Listen     ;059834|05983D;
Selecting_EnemyFrame_02:
   db $30                               ;059836|      ;
   db $09                               ;059837|      ;
   db $1A                               ;059838|      ;
   dw Selecting_Enemy_Button_Listen     ;059839|05983D;
Selecting_EnemyFrame_03:
   db $30                               ;05983B|      ;
   db $0A                               ;05983C|      ;
Selecting_Enemy_Button_Listen:
   db $1E                               ;05983D|      ;
   db $00                               ;05983E|      ;
   db $00                               ;05983F|      ;
   db $07                               ;059840|      ; Was B pressed?
   dl $80A00F  ;WasBtnPressed_2b                  ;059841|00A00F;
   dw $8000                             ;059844|      ;
   db $0C                               ;059846|      ; If true, exit Check
   dw Check_Cancel                     ;059847|059858;
   db $1E                               ;059849|      ;
   db $00                               ;05984A|      ;
   db $00                               ;05984B|      ;
   db $07                               ;059840|      ; Was A pressed?
   dl $80A00F  ;WasBtnPressed_2b
   dw $0080                             ;059844|      ;
   db $0C                               ;059846|      ; If true, display check
   dw Display_Enemy_Info
   db $1A
   dw Draw_Enemy_Cursor

Display_Enemy_Info:
   db $07 : dl $809C44 : db $11         ;Play Confirm SFX
   ;Get enemy species info
   db $07 : dl $879118                  ;Get_enemy_ID_far - Saves enemy ID to A (Event slot - $18; i.e. Barium = 0)
   db $07 : dl $87B569                  ;Get_enemy_name - Reads enemy ID from A and saves their name + A-H to $1598
   ;Get enemy stats info
   db $07 : dl $879156                  ;Set attacker $1121 and target $1123 using var1 - Gets the enemy's stats offset (8=Enemy1, A=Enemy2, etc)
   db $07 : dl $87A672                  ;Status Screen Prep - Loads a bunch of values to be referenced by the status screen text
   db $07 : dl $80A0AC                  ;Setup_Text_Parser_3b_1b
   dl Check_Infodump : db $00
Check_Wait_For_Input:
   db $06                               ;059933|      ;
   db $01                               ;059934|      ;
   db $07                               ;059935|      ;
   dl $07BA4F  ;Some_1095_check_1b                ;059936|07BA4F;
   db $00                               ;059939|      ;
   db $0B                               ;05993A|      ;
   dw Check_Wait_For_Input              ;05993B|059933;

   db $1A
   dw Draw_Enemy_Cursor
Check_Cancel:
   db $07                               ;059858|      ; Play SFX 06 (Cancel)
   dl $809C44  ;GetSet_SFX_1b
   db $06                               ;05985C|      ;
   db $1A : dw Display_BattleMenu       ;Done: Redraw Battle menu


Check_Start:
   db $0C, $01, $00, $06, $03, $0E, $1C
   db "Please select an enemy."
   db $00

Check_Infodump:
   db $0C, $01, $00, $06, $03, $0E, $1C
   db "LV ", $11,$00 : dl $0016DB : db " "         ;LV
   db $10 : dl $001598 : db $0D                    ;Name
   db "HP ", $11,$00 : dl $0016E5 : db $0D         ;HP
   db "EXP ", $11,$00 : dl $0016ED : db $0D        ;EXP
   db "Attribute " : db $10 : dl $0015C2           ;Attribute
   db $7F, $00

;Rewritten commands to add Check
org $8882E5 
Text_Battle_menu_Rooks:
   db $06, $0D, $0C, $01, $00, $06, $03, $0E, $1C
   db "  Attack    Magic  Defend", $0D
   db "  Weapons",$08,$3D,"Items",$08,$64,"Run", $0D
   db "  Arcana",$08,$3D,"Check",$08,$64,"Call", $00

Text_Battle_menu_Spirit:
   db $06, $0D, $0C, $01, $00, $06, $03, $0E, $1C
   db "  Attack    Magic  Defend", $00

Text_Battle_menu_Guest:
   db $06, $0D, $0C, $01, $00, $06, $03, $0E, $1C
   db "  Attack    Magic  Defend", $0D
   db "  Weapons",$08,$3D,"Items",$08,$64,"Run",$0D
   db $08,$3D,"Check",$00

;Make freespace of the unreadable, unused Japanese menus
;Stop before overwriting Version_WindowColor in [miscellaneous.asm]
assert pc() <= $8883EA
padbyte $FF
pad $8883EA

org $859758 : dl Text_Battle_menu_Rooks
org $859763 : dl Text_Battle_menu_Spirit
org $85976E : dl Text_Battle_menu_Guest
org $859779 : dl Text_Battle_menu_Guest

