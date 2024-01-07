
org $088F63
Enemy5_Num:
  db $10 : dl $0015F3 : db $01,$60,$30
  db "*",$11,$00 : dl $0016E3
  db $7F, $00     ;Replaces Enemy6-8 with a $7F $00 (pause and return)


TooMuchGold:
  db $10 : dl LineByLine_TextSetup
  db $11, $00
  dl $0016DB
  db "GP found.", $0D
  db "But we can't carry more."
  db $7F,$00
warnpc $088F9F  ;Don't overwrite LineByLine_TextSetup

org $888F9F
LineByLine_TextSetup:
db $06, $0D, $0C, $05, $01, $05, " "
db $0C, $01, $00, $06, $03, $0E, $1D, $00
 

;Load pointer to Too Much Gold text
org $87A8EB
Treasure_Full_GP:
  LDA.W #TooMuchGold
  STA.B $00   
  LDA.W #$0008
  STA.B $02   

;Write text from $00/$02 to RAM
Setup_Text_Parser:
  LDA.W #$0000
  JSL.L $80A688   ;Set_Text_Parser_long
  LDA.W #$0000
  RTL         
