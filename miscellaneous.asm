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
db "  Seal of Rimsala v3.0b4  "   ;seems v3.0.1 fits

org $80FFC0
RomHeaderName:
db "ARCANA SOR V3       "

org $9791DD
TitleScreenBGM:
db $45

;Include custom maps
org $A08000
incbin "sor_v3_maps.bin"

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