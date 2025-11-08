arch 65816
lorom
; Detail expand a10
;   Converts 2.1.15 a6 to a9 + bugfix


; Splices in some dynamic data for each spell. ExpandSpell requires a 1 byte spell ID on A.
; Saves the following to display temp vars:
;  $16DB = spell MP cost
;  $16DD = spell power
;  $16DF = spell accuracy
; INTENDED FOR: SOR v2.1.15 alpha 6
;  (this patch doesn't add spell footers)
;############################################
;asar file paths
;C:\Users\sarah\OneDrive\Games\Arcana\sor_v2.1.15_a6\spell_expand_v9.asm
;C:\Users\sarah\OneDrive\Games\Arcana\sor_v2.1.15_a6\sor_v2.1.15_a9.sfc


;Update pointer to Weapon minibox expansion
;Don't ask me why there's so many pointers to this
org $819BA9 : dl WeaponSubscreen
org $819CC5 : dl WeaponSubscreen
org $819D0E : dl WeaponSubscreen
org $819E12 : dl WeaponSubscreen
org $819EA5 : dl WeaponSubscreen
org $859C71 : dl WeaponSubscreen  ;Battle weapons menu

;org $88E490 : StatusScreen:
;Update pointer to new status screen
org $819B86 : dl StatusScreen


org $88C9F6
SpiritStatusScreen:   ;Status for Sylph, Dao, Marid, Ifrit
db $06,$0D,$0C
db $01,$04,$04
db $03,$0D
db $1C
db $02,$04
db $10 : dl $0015AF ;Name
db $08,$35
db $10 : dl $0015D6 ;Job
db $0D
db "LV"
db $11,$01 : dl $0016DB   ;LV
db $0D,$02,$04
db "HP"
db $08,$1B
db $11,$02 : dl $0016E5   ;HP
db "/"
db $11,$00 : dl $0016E7   ;Max HP
db $0D
db $02,$04
db "MP"
db $08,$1B
db $11,$02 : dl $0016E9   ;MP
db "/"
db $11,$00 : dl $0016EB   ;Max MP
db $0D
db $02,$04
db "Str"
db $08,$1B
db $11,$02 : dl $0016DD   ;Strength
db $08,$44
db "Endur"
db $08,$68
db $11,$02 : dl $0016DF   ;Endurance
db $0D
db $02,$04
db "Int"
db $08,$1B
db $11,$02 : dl $0016E1   ;Intelligence
db $08,$44
db "Alert"
db $08,$68
db $11,$02 : dl $0016E3   ;Agility
db $0D
db "Attribute"
db $08,$44
db $10 : dl $0015C2
db $00

assert pc() <= $88CA97  ;Don't overwrite Card_menu_inventory text
padbyte $FF
pad $88CA97
;----------------------------
;End of bank 08: Race bonuses for the status screen
org $88E3FF
RaceTypes:
;Each entry is 10 bytes plus a $00 delimiter
!Und = $88
!ead = $89
!Dra = $8A
!gon = $8B
!Med = $8C
!usa = $8D
!Gia = $8E
!nts = $8F
!FiveSpaces = """     """
!EightSpaces = """        """
db "None ",   !FiveSpaces, $00
db !Und,!ead, !EightSpaces, $00
db !Dra,!gon, !EightSpaces, $00
db !Und,!ead, " ", !Dra,!gon, !FiveSpaces, $00
db !Med,!usa, !EightSpaces, $00
db !Und,!ead, " ", !Med,!usa, !FiveSpaces, $00
db !Dra,!gon, " ", !Med,!usa, !FiveSpaces, $00
db !Und, " ", !Dra, " ",!Med, !FiveSpaces, $00
db !Gia,!nts, !EightSpaces, $00
db !Und,!ead, " ", !Gia,!nts, !FiveSpaces, $00
db !Dra,!gon, " ", !Gia,!nts, !FiveSpaces, $00
db !Und, " ", !Dra, " ",!Gia, !FiveSpaces, $00
db !Med,!usa, " ", !Gia,!nts, !FiveSpaces, $00
db !Und, " ", !Med, " ",!Gia, !FiveSpaces, $00
db !Dra, " ", !Med, " ",!Gia, !FiveSpaces, $00
db !Und, " ", !Dra, " ", !Med, " ", !Gia, "   ",$00
;db "Undead    ",$00
;db "Dragons   ",$00
;db "Undead/Dgn",$00
;db "Medusa    ",$00
;db "Undead/Med",$00
;db "Dragon/Med",$00
;db "Un/Dgn/Med",$00
;db "Giants    ",$00
;db "Unde/Giant",$00
;db "Drgn/Giant",$00
;db "UndDrgnGnt",$00
;db "MedsaGiant",$00
;db "Un/Mds/Gnt",$00
;db "Dgn/MdsGnt",$00
;db "All       ",$00

fillbyte $FF
fill align 16

;org $88E490
StatusScreen:   ;Status screen for Rooks, Teefa, Sarah, Arwin and Axs
db $06,$0D,$0C
db $01,$04,$04
db $03,$0D
db $1C
;db $10 : dl $0015D6       ;Job
;db $08,$4F
;db $10 : dl $0015AF       ;Name
db $02,$04
db $10 : dl $0015AF ;Name
db $08,$35
db $10 : dl $0015D6 ;Job
db $0D

db $08,$04
db "LV"
db $11,$01 : dl $0016DB   ;LV
db $08,$27
db $11,$05 : dl $0016ED   ;EXP
db $08,$5F
db "EXP ",$0D

db $02,$04
db "HP"
db $08,$1B
db $11,$02 : dl $0016E5   ;HP
db "/"
db $11,$00 : dl $0016E7   ;Max HP
db $0D

db $02,$04
db "MP"
db $08,$1B
db $11,$02 : dl $0016E9   ;MP
db "/"
db $11,$00 : dl $0016EB   ;Max MP
db $0D

db $02,$04
db "Str"
db $08,$1B
db $11,$02 : dl $0016DD   ;Strength
db $08,$44
db "Endur"
db $08,$68
db $11,$02 : dl $0016DF   ;Endurance
db $0D

db $02,$04
db "Int"
db $08,$1B
db $11,$02 : dl $0016E1   ;Intelligence
db $08,$44
db "Alert"
db $08,$68
db $11,$02 : dl $0016E3   ;Agility
db $0D

db "Atk attr."
db $08,$44
db $10 : dl $001608
db $0D
db "Def attr."
db $08,$44
db $10 : dl $00160D
db $0D

db "Atk bonus"
db $08,$44
db $10 : dl $0015C9
db $0D
db "Def bonus"
db $08,$44
db $10 : dl $0015F8
db $00

fillbyte $FF
fill align 16

!Wi  = $80  ;Wind
!Fi  = $81  ;Fire
!Wa  = $82  ;Water
!Ea  = $83  ;Earth

ElementIcons:
db "None",$00
db !Wi, $20, $20, $20, $00   ;Wind
db !Ea, $20, $20, $20, $00   ;Earth
db !Wi, !Ea, $20, $20, $00   ;Wind, Earth
db !Wa, $20, $20, $20, $00   ;Water
db !Wi, !Wa, $20, $20, $00   ;Wind, Water
db !Wa, !Ea, $20, $20, $00   ;Water, Earth
db !Wi, !Wa, !Ea, $20, $00   ;Wind, Water, Earth
db !Fi, $20, $20, $20, $00   ;Fire
db !Wi, !Fi, $20, $20, $00   ;Wind, Fire
db !Fi, !Ea, $20, $20, $00   ;Fire, Earth
db !Wi, !Fi, !Ea, $20, $00   ;Wind, Fire, Earth
db !Fi, !Wa, $20, $20, $00   ;Fire, Water
db !Wi, !Wa, !Ea, $20, $00   ;Wind, Water, Earth
db !Fi, !Wa, !Ea, $20, $00   ;Fire, Water, Earth
db !Wi, !Fi, !Wa, !Ea, $00   ;Wind, Fire, Water, Earth

fillbyte $FF
fill align 16

!Sword   = $84
!Shield  = $85
!MShield = $86
!Crit    = $87


;org $88E640
WeaponSubscreen:    ;Weapon minibox expand (icons, crit rate etc)
db $06,$0D,$0C  ;White text, clear box
db $01,$00,$06  ;X,Y to (0,6)
db $03,$0E,$1C  ;Normal vertical spacing, no text delay

db " ", $10 : dl $001697  ;Weapon name (temp var)
db $08,$68,!Sword  ;Xpos 68, Draw Sword icon
db $08,$72         ;Xpos 72
db $11,$02 : dl $0016DB   ;Base attack stat (temp var)
db $0D             ;Newline

db " ", $10 : dl $0016A8  ;Armor name (temp var)
db $08,$68,!Shield  ;Xpos 68, Draw Shield icon
db $08,$72          ;Xpos 72
db $11,$02 : dl $0016DD   ;Base defense stat (temp var)
db $0D              ;Newline

db " ", $10 : dl $0016B9  ;Amulet name (temp var)
db $08,$68,!MShield  ;Xpos 68, Draw MagicShield icon
db $08,$71           ;Xpos 71
db $11,$02 : dl $0016E3   ;Magic defense stat (temp var)
db $0D               ;Newline

;db " ", $10 : dl $0016CA  ;Ring name (temp var)
db "                "
db $08,$68,!Crit  ;Xpos 68, Draw "x2" icon for critical hit chance
db $08,$72        ;Xpos 72
db $11,$01 : dl $0016E1   ;Critical hit% (temp var)
db "%",$00        ;Draw % sign

assert pc() <= $88E6B0  ;Don't overwrite SpellDetails in minor_text_sor_v3
padbyte $FF
pad $88E6B0

;Prevent the cursor from highlighting the now-blank ring slot
org $87850A
lda.W #$0002    ;When pressing up on the 1st slot, set cursor to the 3rd slot
sta.W $09C7,X
rtl
lda.W $09C7,X
cmp.W #$0002    ;When pressing down on the 3rd slot, set cursor to the 1st slot


;Update pointer to WeaponSubscreen
;Don't ask me why there's so many pointers to this
org $819BA9 : dl WeaponSubscreen
org $819CC5 : dl WeaponSubscreen
org $819D0E : dl WeaponSubscreen
org $819E12 : dl WeaponSubscreen
org $819EA5 : dl WeaponSubscreen
org $859C71 : dl WeaponSubscreen

;$F0 Sword
;$5B Shield
;$5F Magic Shield
;$F1 x2
;$25 %

;Level up screen
;888D69;                           06 0D 0C 05 01 05 20
;888D70;0C 01 00 06 03 0E 1D 10 81 15 00 20 67 61 69 6E; x gain
;888D80;65 64 20 61 20 6C 65 76 65 6C 21 0D 48 50 08 1C; ed a level! HP
;888D90;06 0E 11 00 E7 16 00 06 0D 08 40 4D 50 08 68 06; MP
;888DA0;0E 11 00 EB 16 00 0D 06 0D 53 74 72 08 1C 06 0E; Str
;888DB0;11 00 DD 16 00 06 0D 08 40 45 6E 64 75 72 08 68; Endur
;888DC0;06 0E 11 00 DF 16 00 0D 06 0D 49 6E 74 08 1C 06; Int
;888DD0;0E 11 00 E1 16 00 06 0D 08 40 41 6C 65 72 74 08; Alert
;888DE0;68 06 0E 11 00 E3 16 00 06 06 0D 7F

;RAM injection
org $87B36A
  jsr SaveLVL

;Saves the current LVL to RAM for "Rooks reached LVL 60!"
;Written right after ExpandSpell
org $87F490
SaveLVL:
  lda.w $137B,x
  sta $16E5
  rts

;Level up: pointers to learned spell text
;org $8190EA : dl LearnedSpell1
;org $8190FD : dl LearnedSpell2
;org $819110 : dl LearnedSpell3
;org $81911B : dl LearnedSpellEnd

;Level the hell up!
;org $888D69
org $8190C9 : dl LevelUp

org $888E00
LevelUp:
db $06,$0D : db $0C : db $05,$01,$05,$20        ;Pause 5 frames
db $0C : db $01,$00,$06 : db $03,$0E : db $1D   ;Set up formatting
db $10 : dl $001581   ;Character name
db " reached LV " : db $06,$0E : db $11,$00 : dl $0016E5 : db $06,$0D : db "!",$0D
db "HP"    : db $08,$13 : db $06,$0E : db $11,$02 : dl $0016E7 : db $06,$0D : db $08,$40
db "MP"    : db $08,$68 : db $06,$0E : db $11,$01 : dl $0016EB : db $0D : db $06,$0D
db "Str"   : db $08,$1C : db $06,$0E : db $11,$01 : dl $0016DD : db $06,$0D : db $08,$40
db "Endur" : db $08,$68 : db $06,$0E : db $11,$01 : dl $0016DF : db $0D : db $06,$0D 
db "Int"   : db $08,$1C : db $06,$0E : db $11,$01 : dl $0016E1 : db $06,$0D : db $08,$40
db "Alert" : db $08,$68 : db $06,$0E : db $11,$01 : dl $0016E3 : db $06,$06 : db $0D,$7F,$00

assert pc() <= $888E8E
padbyte $FF
pad $888E8E

;Level up: Learned spells (you can get up to 3 per level)
;Was commented out bc Battle_Text_Format ptr is in minor_text_sor_v3, but Battle_Text_Format was overwritten
org $888E8E
LearnedSpell1:
db $10 : dl $888F9F   ;Hardcoded ptr to Dungeon_TextSetup in minor_text_sor_v3
db $10 : dl $001581
db " has mastered", $0D, $06, $0E
db $10 : dl $0015AF : db $06, $0D, $7F, $00

LearnedSpell2:
db $0D, $06, $0E
db $10 : dl $0015C7 : db $06, $0D, $7F, $00

LearnedSpell3:
db $0D, $06, $0E
db $10 : dl $0015DF : db $06, $0D, $7F, $00

LearnedSpellEnd:
db ".", $7F, $00

assert pc() <= $888EC7 ;Don't overwrite Card/Item menu
;padbyte $FF     ; Clear unused original text, if necessary
;pad $888EC7


;org $808772
;jsr FastDecompress

org $80E080
AttackRaceBonus:
phy                   ;Save y
ldx $1041
ldy $0CB3,x           ;Get character ID
ldx #$0003
jsr $C6DC             ;x=3 returns Attack Race bonus
and #$000F            ;Keep lowest nybble (1,2,4,8)
ply                   ;Retrieve Y
rtl

org $80E09D
DefendRaceBonus:
sta $15C9,y
rep #$20
phy
ldx $1041
ldy $0CB3,x
ldx #$0001
jsr $C7D1
and #$000F
ldx #$000B
jsl $808A39
lda $00
tax
ldy #$0000
sep #$20

WriteRace:
lda RaceTypes,x
sta $15F8,y
inx : iny
lda RaceTypes,x
beq GetElement
bra WriteRace

GetElement:
sta $15F8,y
rep #$20
ldx $1041
ldy $0CB3,x
ldx #$0003
jsr $C6DC
and #$F000
xba
lsr a : lsr a : lsr a : lsr a
ldx #$0005
jsl $808A39
lda $00
tax
ldy #$0000
sep #$20

WriteElement:
lda ElementIcons,x
sta $1608,y
inx : iny
lda ElementIcons,x
beq GetRaceDef
bra WriteElement

GetRaceDef:
sta $1608,y
rep #$20
ldx $1041
ldy $0CB3,x
ldx #$0001
jsr $C781
and #$F000
xba
lsr a : lsr a : lsr a : lsr a
ldx #$0005
jsl $808A39
lda $00
tax
ldy #$0000
sep #$20

WriteRaceDef:
lda ElementIcons,x
sta $160D,y
inx : iny
lda ElementIcons,x
beq ExitDefendBonus
bra WriteRaceDef

ExitDefendBonus:
sta $160D,y
ply
rep #$20
rtl

org $80E150
Multiply_far:         ;far routine since C88B is local
    jsr $C88B         ;spell accuracy x 100
    rtl

    padbyte $FF       ;Remove old Spell Expand code
    pad $80E190

;FastROM read/write access for $877C decompressor
;Not *entirely* sure if this is necessary any more
;org $80E180
;FastDecompress:
;    ora #$80
;    sta $02
;    stx $00
;    rts

;Interrupt the Condition and call our ExpandEquip function
org $87A3A6
JSL.L ExpandEquip                    ;87A3A6|2290E180|80E190;
NOP                                  ;87A3AA|EA      |      ;
NOP                                  ;87A3AB|EA      |      ;
   
;Equipment Detail expand: loads Atk, Def, MDef, Crit values to RAM
org $80E190 : ExpandEquip:
    phy : phx
    ldx $103F
    lda $09C7,x       ;Get character ID
    jsl $87B0F1       ;Get character offset
    sta $16E3
    tay
    ldx #$0000
    jsr $C6DC
    ldx #$0064
    jsr $C88B
    and #$FF00
    xba
    sta $16E1
    lda $16E3
    tay
    ldx #$0002
    jsr $C7D1
    sta $16E3
    plx : ply
    lda $11C3,x
    and #$00FF
    rtl

;New Spell Expand
    ;lda $1459,x      ;vanilla: load character's spell ID
    ;and #$00FF       ;vanilla: it's a 1 byte value
org $879880
    nop               ;remove unnecessary tax
    nop               ;jsl -> jsr (1 less byte)
    jsr ExpandSpell   ;call our splice!
    ;and #$00FF       ;vanilla: use bottom byte
    ;sta $16DB        ;vanilla: use temp var $16DB

org $87F460            ;not free space in bank 07
ExpandSpell: 
    pha               ;save spell ID
    asl a             ;get double offset
    tax               ;move to x
    lda $85EB4B,x     ;load spell power
    cmp #$03E8        ;if over 999, use 0 spell power (they're special)
    bcs ZeroPower
    sta $16dd         ;save to temp display var
    bra SpellAcc      ;continue to next step
  ZeroPower:
    stz $16dd         ;zero the display var for special cases
  SpellAcc:
    plx               ;retrieve spell id
    phx               ;save it again
    lda $85EAF0,x     ;load spell accuracy
    ldx #$0064        
    jsl Multiply_far  ;multiply by 100
    and #$FF00        ;take the high byte
    xba               ;and swap it (dividing by 256 for accuracy%)
    sta $16df         ;save to next temp display var
    plx               ;pull spell id
    lda $85ECA5,x     ;load MP cost (overwritten by splice)
    rts

;Overwrite "Condition" RAM transfer with Attack/Defend Race Bonus
org $87A706
  ReadRaceText:
    jsl AttackRaceBonus
    nop : nop
    ldx #$000B
    jsl $808A39
    lda $00
    tax
    ldy #$0000
    sep #$20
  LoadRaceText:
    lda RaceTypes,x
    sta $15C9,y     ;$87/A71F 99 C9 15    STA $15C9,y
    inx : iny
    lda RaceTypes,x
    beq LoadDRB
    bra LoadRaceText
  LoadDRB:
    jsl DefendRaceBonus
    nop