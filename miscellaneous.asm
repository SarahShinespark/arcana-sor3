arch 65816
lorom
!EncountersOff = 0    ;*** 1=No encounters, 0=Yes encounters
!EncounterRate = 20   ;1/20
!EncounterHigh = 4    ;1/4

;Show version number in Window Color menu
org $81976A : dl Version_WindowColor      ;Start of draw menu
org $819800 : dl Version_WindowColor      ;Redraw menu
org $8883EA : db $00    ;null terminate the unused Japanese text, just in case
Version_WindowColor:    ;Overwrites unused Japanese to fit the ROM name
db $06, $0D
db $0C
db $01, $00, $06
db $03, $0E
db $1C
db "  Seal of Rimsala v3.1b5  "
;  " GAME HEADER LENGTH-----  "

org $80FFC0
RomHeaderName:
db "ARCANA SOR V3.1B5   "
;  "ROM HEADER LENGTH---"

;Include new font and title screen
org $80E1D0 : incbin "new_font.bin"
org $8D833F : incbin "new_font_cards.bin"
org $979DD0 : incbin "title_screen.bin"

;Change internal size to 2mb; Expand ROM to 2mb
org $FFD7 : db $0B
org $BFFFFF : db $00

;Include custom maps
org $A08000
incbin "sor_v3_maps.bin"

;Calls our hack to load uncompressed maps. Makes it possible to edit maps easily.
;Loads a dungeon map based on X=$1573 Current_Area.
org $83801C : Redirect_Maps:
LDA.L Tbl_Dungeon_Maps,X             ;83801C|BF808383|838380;
TAX                                  ;838020|AA      |      ;
LDA.W #$00A0   ;Source bank          ;838021|A9A000  |      ;
LDY.W #$FC00   ;WRAM destination     ;838024|A000FC  |      ;
JSL.L Decomp_Map_Hack                ;838027|22D0FF9C|9CFFD0;

;Update pointers to custom dungeon maps (bank A0)
org $838380 : Tbl_Dungeon_Maps:
   dw $8000                    ;838380| Balnia 1F
   dw $8400                    ;838382| Balnia 2F
   dw $8800                    ;838384| Dwarven Pass
   dw $8C00                    ;838386| Crimson Valley
   dw $9000                    ;838388| Forest of Doubt
   dw $9400                    ;83838A| Ice Mine 1F
   dw $9800                    ;83838C| Ice Mine B1F
   dw $9C00                    ;83838E| Ice Mine B2F
   dw $A000                    ;838390| Endless Tower 1-4F
   dw $A000                    ;838392| 
   dw $A000                    ;838394| 
   dw $A000                    ;838396| 
   dw $A400                    ;838398| Endless Tower 5-8F
   dw $A400                    ;83839A| 
   dw $A400                    ;83839C| 
   dw $A400                    ;83839E| 
   dw $A800                    ;8383A0| Endless Tower 9-12F
   dw $A800                    ;8383A2| 
   dw $A800                    ;8383A4| 
   dw $A800                    ;8383A6| 
   dw $AC00                    ;8383A8| Bizance Castle
   dw $B000                    ;8383AA| Secret Passage
   dw $B400                    ;8383AC| Endless Tower 1-12F
   dw $B400                    ;8383AE| 
   dw $B400                    ;8383B0| 
   dw $B400                    ;8383B2| 
   dw $B400                    ;8383B4| 
   dw $B400                    ;8383B6| 
   dw $B400                    ;8383B8| 
   dw $B400                    ;8383BA| 
   dw $B400                    ;8383BC| 
   dw $B400                    ;8383BE| 
   dw $B400                    ;8383C0| 
   dw $B400                    ;8383C2| 

;Injection: Redirects compressed map function to load them uncompressed from elsewhere. 
org $9CFFD0 : Decomp_Map_Hack:
STA.L $804364                        ;9CFFD0|8F644380|804364;
TXA                                  ;9CFFD4|8A      |      ;
STA.L $804362                        ;9CFFD5|8F624380|804362;
LDA.W #$0400                         ;9CFFD9|A90004  |      ;
STA.L $804365                        ;9CFFDC|8F654380|804365;
LDA.W #$8000                         ;9CFFE0|A90080  |      ;
STA.L $804360                        ;9CFFE3|8F604380|804360;
TYA                                  ;9CFFE7|98      |      ;
STA.L $802181                        ;9CFFE8|8F812180|802181;
SEP #$20                             ;9CFFEC|E220    |      ;
PHB                                  ;9CFFEE|8B      |      ;
PLA                                  ;9CFFEF|68      |      ;
STA.L $802183                        ;9CFFF0|8F832180|802183;
LDA.B #$40                           ;9CFFF4|A940    |      ;
STA.L $80420B                        ;9CFFF6|8F0B4280|80420B;
REP #$20                             ;9CFFFA|C220    |      ;
RTL                                  ;9CFFFC|6B      |      ;

;Causes a game crash, hold off until DMA can be sped up
;Speed up final fight
;org $818F75
;  db $07 : dl $878001  ; Call Is_FightingFinalBoss
;  db $1A : dw $818F7E  ; Always skip the pause (Default $0B: skip if false)
;  db $06,$3C           ; 1 second pause

;Confuse buff
;Makes confused enemies skip spellcasting attempts
org $828D87
  db $1A : dw $8EB6   ;Jump to subroutine 8EB6 (use physical attack)

;Speed up saving and change the SFX
org $83BDD3
File_saved: 
  db $07 : dl $809C44   ;Get/Set SFX
  db $1F                ;use Heal SFX
  db $06,$0A            ;Delay 10 frames
  

;Turn off encounters if !EncountersOff == 1
org $98802E
RandomEncounterCheck:
lda $16F5   ;Floor Tile value
cmp #$0010
bcc Tile_NoEncounter  ;Tile == 00-0F (wall)
if !EncountersOff == 1
  cmp #$0030
  bcc Tile_NoEncounter
  nop #5
else
  cmp #$0020            ;Tile == 10-1F (Random encounters)
  bcc Normal_Encounter
  cmp #$0030            ;Tile == 20-2F (Random encounters, high rate)
  bcc High_Encounter
endif
Tile_NoEncounter:
lda #$0000
rtl
Normal_Encounter:
ldx.w #!EncounterRate
bra $03
High_Encounter:
ldx.w #!EncounterHigh