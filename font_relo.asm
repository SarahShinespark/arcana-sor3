
org $80AC2B
Loc_Font_var00:
dl $80E1D0;$80AD14 Font_tiles       ;$0A8000 Japanese font
dl $80AC34;VWF_font_widths

;Relocated font:
;80 Bolt
;81 Fire
;82 Water
;83 Earth
;84 Sword
;85 Shield
;86 MShield
;87 Crit

;Sylph screm
;90 Star filled in
;91 Triangle, empty
;92 Square, empty

;Dao screm
;93 The flower thing
;94 @
;95 %

;Marid screm
;96 The greek letter rho?
;97 infinity
;98 Star

;Ifrit screm
;99 double circle
;9A Diamond, empty
;Another 97 infinity

org $80AC34
      VWF_font_widths:
db $04     ;00AC34; $20 space
db $05     ;00AC35; $21 !
db $05     ;00AC36; $22 "
db $06     ;00AC37; $23 #
db $06     ;00AC38; $24 $
db $08     ;00AC39; $25 %
db $06     ;00AC3A; $26 &
db $04     ;00AC3B; $27 '
db $05     ;00AC3C; $28 (
db $05     ;00AC3D; $29 )
db $0A     ;00AC3E; $2A *
db $0A     ;00AC3F; $2B +
db $04     ;00AC40; $2C ,
db $06     ;00AC41; $2D -
db $03     ;00AC42; $2E .
db $0A     ;00AC43; $2F /
db $09     ;00AC44; $30 0
db $09     ;00AC45; $31 1
db $09     ;00AC46; $32 2
db $09     ;00AC47; $33 3
db $09     ;00AC48; $34 4
db $09     ;00AC49; $35 5
db $09     ;00AC4A; $36 6
db $09     ;00AC4B; $37 7
db $09     ;00AC4C; $38 8
db $09     ;00AC4D; $39 9
db $03     ;00AC4E; $3A :
db $04     ;00AC4F; $3B ;
db $05     ;00AC50; $3C <
db $01     ;00AC51; $3D =
db $05     ;00AC52; $3E >
db $07     ;00AC53; $3F ?
db $01     ;00AC54; $40 @
db $09     ;00AC55; $41 A
db $08     ;00AC56; $42 B
db $09     ;00AC57; $43 C
db $09     ;00AC58; $44 D
db $08     ;00AC59; $45 E
db $08     ;00AC5A; $46 F
db $09     ;00AC5B; $47 G
db $09     ;00AC5C; $48 H
db $04     ;00AC5D; $49 I
db $08     ;00AC5E; $4A J
db $09     ;00AC5F; $4B K
db $08     ;00AC60; $4C L
db $0A     ;00AC61; $4D M
db $09     ;00AC62; $4E N
db $09     ;00AC63; $4F O
db $08     ;00AC64; $50 P
db $09     ;00AC65; $51 Q
db $08     ;00AC66; $52 R
db $08     ;00AC67; $53 S
db $07     ;00AC68; $54 T
db $08     ;00AC69; $55 U
db $09     ;00AC6A; $56 V
db $0A     ;00AC6B; $57 W
db $09     ;00AC6C; $58 X
db $09     ;00AC6D; $59 Y
db $08     ;00AC6E; $5A Z
db $01     ;00AC6F; $5B [
db $01     ;00AC70; $5C \
db $01     ;00AC71; $5D ]
db $01     ;00AC72; $5E ^
db $04     ;00AC73; $5F _
db $09     ;00AC74; $60 (reserved)
db $06     ;00AC75; $61 a
db $06     ;00AC76; $62 b
db $06     ;00AC77; $63 c
db $06     ;00AC78; $64 d
db $06     ;00AC79; $65 e
db $05     ;00AC7A; $66 f
db $06     ;00AC7B; $67 g
db $06     ;00AC7C; $68 h
db $03     ;00AC7D; $69 i
db $04     ;00AC7E; $6A j
db $06     ;00AC7F; $6B k
db $03     ;00AC80; $6C l
db $08     ;00AC81; $6D m
db $06     ;00AC82; $6E n
db $06     ;00AC83; $6F o
db $06     ;00AC84; $70 p
db $06     ;00AC85; $71 q
db $06     ;00AC86; $72 r
db $06     ;00AC87; $73 s
db $05     ;00AC88; $74 t
db $06     ;00AC89; $75 u
db $06     ;00AC8A; $76 v
db $08     ;00AC8B; $77 w
db $06     ;00AC8C; $78 x
db $06     ;00AC8D; $79 y
db $06     ;00AC8E; $7A z
db $01     ;00AC8F; $7B {}
db $01     ;00AC90; $7C |
db $01     ;00AC91; $7D }
db $01     ;00AC92; $7E ~
db $01     ;00AC93; $7F (reserved)
db $08     ;00AC94; $80 (bolt)
db $0A     ;00AC95; $81 (fire)
db $0A     ;00AC96; $82 (water)
db $0B     ;00AC97; $83 (earth)
db $09     ;00AC98; $84 (sword)
db $06     ;00AC99; $85 (shield)
db $09     ;00AC9A; $86 (mshield)
db $0B     ;00AC9B; $87 (crit)
db $0C     ;00AC9C; $88 (UND)
db $0C     ;00AC9D; $89 (EAD)
db $0C     ;00AC9E; $8A (DRA)
db $0C     ;00AC9F; $8B (GON)
db $0C     ;00ACA0; $8C (MED)
db $0C     ;00ACA1; $8D (USA)
db $0C     ;00ACA2; $8E (GIA)
db $0C     ;00ACA3; $8F (NTS)
db $0B     ;00ACA4; $90 (star)
db $0B     ;00ACA5; $91 (triangle)
db $0B     ;00ACA6; $92 (square)
db $0B     ;00ACA7; $93 (flower)
db $0B     ;00ACA8; $94 (big @)
db $0B     ;00ACA9; $95 (big %)
db $0A     ;00ACAA; $96 (theta)
db $0B     ;00ACAB; $97 (infinity)
db $0B     ;00ACAC; $98 (snowflake)
db $0B     ;00ACAD; $99 (double ring)
db $0B     ;00ACAE; $9A (diamond)
db $01     ;00ACAF; $9B 
db $01     ;00ACB0; $9C 
db $01     ;00ACB1; $9D 
db $01     ;00ACB2; $9E 
db $01     ;00ACB3; $9F 
db $04     ;00ACB4; $A0 (NBSP)(unused)
db $05     ;00ACB5; $A1 ¡
db $09     ;00ACB6; $A2 ¢
db $0A     ;00ACB7; $A3 £
db $09     ;00ACB8; $A4 ¤
db $09     ;00ACB9; $A5 ¥
db $04     ;00ACBA; $A6 ¦
db $09     ;00ACBB; $A7 §
db $05     ;00ACBC; $A8 ¨
db $05     ;00ACBD; $A9 ©
db $06     ;00ACBE; $AA ª
db $06     ;00ACBF; $AB «
db $06     ;00ACC0; $AC ¬
db $08     ;00ACC1; $AD (soft hyphen)
db $06     ;00ACC2; $AE ®
db $06     ;00ACC3; $AF ¯
db $05     ;00ACC4; $B0 °
db $06     ;00ACC5; $B1 ±
db $06     ;00ACC6; $B2 ²
db $06     ;00ACC7; $B3 ³
db $04     ;00ACC8; $B4 ´
db $0B     ;00ACC9; $B5 µ
db $08     ;00ACCA; $B6 ¶
db $08     ;00ACCB; $B7 ·
db $06     ;00ACCC; $B8 ¸
db $06     ;00ACCD; $B9 ¹
db $06     ;00ACCE; $BA º
db $06     ;00ACCF; $BB »
db $08     ;00ACD0; $BC ¼
db $08     ;00ACD1; $BD ½
db $08     ;00ACD2; $BE ¾
db $07     ;00ACD3; $BF ¿
db $09     ;00ACD4; $C0 À
db $09     ;00ACD5; $C1 Á
db $09     ;00ACD6; $C2 Â
db $09     ;00ACD7; $C3 Ã
db $09     ;00ACD8; $C4 Ä
db $09     ;00ACD9; $C5 Å
db $0A     ;00ACDA; $C6 Æ
db $09     ;00ACDB; $C7 Ç
db $08     ;00ACDC; $C8 È
db $08     ;00ACDD; $C9 É
db $08     ;00ACDE; $CA Ê
db $08     ;00ACDF; $CB Ë
db $04     ;00ACE0; $CC Ì
db $04     ;00ACE1; $CD Í
db $04     ;00ACE2; $CE Î
db $04     ;00ACE3; $CF Ï
db $09     ;00ACE4; $D0 Ð
db $09     ;00ACE5; $D1 Ñ
db $09     ;00ACE6; $D2 Ò
db $09     ;00ACE7; $D3 Ó
db $09     ;00ACE8; $D4 Ô
db $09     ;00ACE9; $D5 Õ
db $09     ;00ACEA; $D6 Ö
db $06     ;00ACEB; $D7 ×
db $09     ;00ACEC; $D8 Ø
db $08     ;00ACED; $D9 Ù
db $08     ;00ACEE; $DA Ú
db $08     ;00ACEF; $DB Û
db $08     ;00ACF0; $DC Ü
db $09     ;00ACF1; $DD Ý
db $06     ;00ACF2; $DE Þ
db $09     ;00ACF3; $DF ß
db $06     ;00ACF4; $E0 à
db $06     ;00ACF5; $E1 á
db $06     ;00ACF6; $E2 â
db $06     ;00ACF7; $E3 ã 	
db $06     ;00ACF8; $E4 ä
db $06     ;00ACF9; $E5 å
db $08     ;00ACFA; $E6 æ
db $06     ;00ACFB; $E7 ç
db $06     ;00ACFC; $E8 è
db $06     ;00ACFD; $E9 é
db $06     ;00ACFE; $EA ê
db $06     ;00ACFF; $EB ë
db $03     ;00AD00; $EC ì
db $03     ;00AD01; $ED í
db $03     ;00AD02; $EE î
db $03     ;00AD03; $EF ï
db $06     ;00AD04; $F0 ð
db $06     ;00AD05; $F1 ñ
db $06     ;00AD06; $F2 ò
db $06     ;00AD07; $F3 ó
db $06     ;00AD08; $F4 ô
db $06     ;00AD09; $F5 õ
db $06     ;00AD0A; $F6 ö
db $06     ;00AD0B; $F7 ÷
db $06     ;00AD0C; $F8 ø
db $06     ;00AD0D; $F9 ù 	
db $06     ;00AD0E; $FA ú
db $06     ;00AD0F; $FB û
db $06     ;00AD10; $FC ü
db $06     ;00AD11; $FD ý
db $06     ;00AD12; $FE þ
db $06     ;00AD13; $FF ÿ
