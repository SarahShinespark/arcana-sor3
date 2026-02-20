arch 65816
lorom
incsrc "unicode_map.asm"
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
db "  TL of Rimsala v3.1b8    "
;  " GAME HEADER LENGTH-----  "

org $80FFC0
RomHeaderName:
db "ARCANA SOR V3.1B8 TL"
;  "ROM HEADER LENGTH---"

;Include new font and title screen
org $80E1D0 : incbin "TL_new_font.bin"
org $8D833F : incbin "TL_new_font_cards.bin"
org $979DD0 : incbin "TL_title_screen.bin"

  

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