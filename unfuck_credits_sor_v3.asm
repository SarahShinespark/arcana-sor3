;Unfuck Credits
;1. Makes the credits easier to read and modify.
;2. Adds a missing credit "Message Coordinator / Abeshi"
;3. Adds a credit for "Seal of Rimsala / Autumn Shinespark"
;4. Fixes spelling ("Programer" -> "Programmer" and "Adviser" -> "Advisor")
;5. Overwrites some unused duplicate entries for the space needed.


!Extra_Credits = 2
;1. Change this value if you add an extra line in the credits.
;2. Add !Section or !End_Block to Credits_Distance for each line.
;3. Add the Credit ID to Credits_Anim_IDs.



;Adapts to # of entries and changes spacing to fit more lines
;Total lines will sum to #$2049 (no they fucking won't)
!Num_Credits = $30+!Extra_Credits
if !Extra_Credits == 0 ;default
    !Section   = $96
    !End_Block = $FF
elseif !Extra_Credits == 2
    !Section   = $92
    !End_Block = $D0
elseif !Extra_Credits == 4
    !Section   = $93
    !End_Block = $C0
else
    !Section   = $96
    !End_Block = $FF
endif


org $01BC0A
Update_Credits_Distance:
;Every new line, sets how far apart the credits are from each other
  LDX.W $1927                          ;Load credits progress
  LDA.L Credits_Distance,X             ;Load the spacing
  AND.W #$00FF                         ;Just the lower byte
  LDY.W $1041                          ;Load context/results
  STA.W $0B9F,Y                        ;Update animation counter
  RTL                                  ;Return 

org $01BC49
End_Credits_Check:
; Draws ~The End~ if all credits have been drawn
  LDA.W $1927                          ;Load credits progress
  SEC                                  ;Prep subtraction
  SBC.W #!Num_Credits                  ;Subtract number of credits
  RTL                                  ;Return

org $01BC65
  LDA.L Credits_Anim_IDs,X             ;Load the IDs for each chunk of text


;Move the anim IDs to unused space in bank $16 (ID 3A)
;org $01BC85     
org $16EA5D
Credits_Anim_IDs:
  db $3A                                            ; 3A: Seal of Rimsala
  db $3B                                            ;  3B: Autumn Shinespark
  db $01                     ;01BC85|        |      ; 01: Executive Producer
  db $12                     ;01BC86|        |      ;  12: Tsuyoshi Ikeda
  db $02                     ;01BC87|        |      ; 02: Producer
  db $13                     ;01BC88|        |      ;  13: Mikio Ikeda
  db $03                     ;01BC89|        |      ; 03: Directors
  db $15                     ;01BC8A|        |      ;  15: SDF @" Hashiguchi
  db $14                     ;01BC8B|        |      ;  14: Mat Sutake
  db $04                     ;01BC8C|        |      ; 04: Script Writers
  db $15                     ;01BC8D|        |      ;  15: SDF @" Hashiguchi
  db $26                     ;01BC8E|        |      ;  26: Shigenobu Kasai
  db $05                     ;01BC8F|        |      ; 05: Main Programer (sp)
  db $16                     ;01BC90|        |      ;  16: Ryu Kuraoka
  db $06                     ;01BC91|        |      ; 06: Programers (sp)
  db $17                     ;01BC92|        |      ;  17: Pantsman
  db $28                     ;01BC93|        |      ;  28: GSX Suga
  db $39                     ;01BC94|        |      ;  39: Miya Aoki
  db $26                     ;01BC95|        |      ;  26: Shigenobu Kasai
  db $00                     ;01BC96|        |      ; 00: Character Designers
  db $11                     ;01BC97|        |      ;  11: Suu Saito
  db $22                     ;01BC98|        |      ;  22: Hitoshi Kikkawa
  db $15                     ;01BC99|        |      ;  15: SDF @" Hashiguchi
  db $33                     ;01BC9A|        |      ;  33: Jichan
  db $10                     ;01BC9B|        |      ;  10: Tetsuya Notoya
  db $21                     ;01BC9C|        |      ;  21: Teacorp
  db $07                     ;01BC9D|        |      ; 07: Music Director
  db $18                     ;01BC9E|        |      ;  18: Jun Ishikawa
  db $08                     ;01BC9F|        |      ; 08: Music Composers
  db $18                     ;01BCA0|        |      ;  18: Jun Ishikawa
  db $19                     ;01BCA1|        |      ;  19: Hirokazu Ando
  db $09                     ;01BCA2|        |      ; 09: Message Programers (sp)
  db $1A                     ;01BCA3|        |      ;  1A: Yhan Debu
  db $2B                     ;01BCA4|        |      ;  2B: Ottosei
  db $3C                                            ; 3C: Message Coordinator
  db $3D                                            ;  3D: Abeshi
  db $0B                     ;01BCA5|        |      ; 0B: Debug Director
  db $1C                     ;01BCA6|        |      ;  1C: /KOBY/
  db $0C                     ;01BCA7|        |      ; 0C: Technical Adviser (sp)
  db $1D                     ;01BCA8|        |      ;  1D: Satoru Iwata
  db $0D                     ;01BCA9|        |      ; 0D: Main Advertiser
  db $1E                     ;01BCAA|        |      ;  1E: Yoshie Ishiyama
  db $0E                     ;01BCAB|        |      ; 0E: Special Thanks To
  db $1F                     ;01BCAC|        |      ;  1F: Hideyuki Katou
  db $30                     ;01BCAD|        |      ;  30: Kenichi Nakajima
  db $20                     ;01BCAE|        |      ;  20: Atsushi Kakuta
  db $31                     ;01BCAF|        |      ;  31: Satoshi Ishida
  db $42                     ;01BCB0|        |      ;  42: Ami Hashikura
  db $41                     ;01BCB1|        |      ;  41: Masahiro Sakurai
  db $0F                     ;01BCB2|        |      ;  0F: Kazu Ozawa


;Move the credits distance to unused space in bank $16
Credits_Distance: 
; Used with Update_Credit_Distance to space out the sections from each other
; $1927 = 1 to 2E
   db !Section
  db !End_Block
  db !Section                ;01BC1B|        |      ;  
  db !End_Block              ;01BC1C|        |      ;  
  db !Section                ;01BC1D|        |      ;  
  db !End_Block              ;01BC1E|        |      ;  
  db !Section                ;01BC1F|        |      ;  
  db !Section                ;01BC20|        |      ;  
  db !End_Block              ;01BC21|        |      ;  
  db !Section                ;01BC22|        |      ;  
  db !Section                ;01BC23|        |      ;  
  db !End_Block              ;01BC24|        |      ;  
  db !Section                ;01BC25|        |      ;  
  db !End_Block              ;01BC26|        |      ;  
  db !Section                ;01BC27|        |      ;  
  db !Section                ;01BC28|        |      ;  
  db !Section                ;01BC29|        |      ;  
  db !Section                ;01BC2A|        |      ;  
  db !End_Block              ;01BC2B|        |      ;  
  db !Section                ;01BC2C|        |      ;  
  db !Section                ;01BC2D|        |      ;  
  db !Section                ;01BC2E|        |      ;  
  db !Section                ;01BC2F|        |      ;  
  db !Section                ;01BC30|        |      ;  
  db !Section                ;01BC31|        |      ;  
  db !End_Block              ;01BC32|        |      ;  
  db !Section                ;01BC33|        |      ;  
  db !End_Block              ;01BC34|        |      ;  
  db !Section                ;01BC35|        |      ;  
  db !Section                ;01BC36|        |      ;  
  db !End_Block              ;01BC37|        |      ;  
  db !Section                ;01BC38|        |      ;  
  db !Section                ;01BC39|        |      ;  
  db !End_Block              ;01BC3A|        |      ;  
  db !Section                ;01BC3B|        |      ;  
  db !End_Block              ;01BC3C|        |      ;  
  db !Section                ;01BC3D|        |      ;  
  db !End_Block              ;01BC3E|        |      ;  
  db !Section                ;01BC3F|        |      ;  
  db !End_Block              ;01BC40|        |      ;  
  db !Section
  db !End_Block
  db !Section                ;01BC41|        |      ;  
  db !Section                ;01BC42|        |      ;  
  db !Section                ;01BC43|        |      ;  
  db !Section                ;01BC44|        |      ;  
  db !Section                ;01BC45|        |      ;  
  db !Section                ;01BC46|        |      ;  
  db !Section                ;01BC47|        |      ;  
  db !Section                ;01BC48|        |      ;  


;;;;;;;;;;;;;;;;;;
; Custom Credits ;  ;Consecutive unused IDs are 3A, 3B, 3C, 3D, 3E, 3F, 40
;;;;;;;;;;;;;;;;;;

Credits_Text_3A:
;SEAL OF RIMSALA
  db 0,$C4,1,$44,$3C    ;S
  db 0,$CC,1,$08,$3C    ;E
  db 0,$D4,1,$00,$3C    ;A
  db 0,$DB,1,$26,$3C    ;L

  db 0,$EA,1,$2C,$3C    ;O
  db 0,$F2,1,$0A,$3C    ;F
  
  db 0,$01,1,$42,$3C    ;R
  db 0,$08,1,$20,$3C    ;I
  db 0,$0D,1,$28,$3C    ;M
  db 0,$17,1,$44,$3C    ;S
  db 0,$1F,1,$00,$3C    ;A
  db 0,$26,1,$26,$3C    ;L
  db 2,$2E,1,$00,$3C    ;A

Credits_Text_3B:
;AUTUMN SHINESPARK

  db 0,$BB,1,$00,$3E    ;A
  db 0,$C3,1,$48,$3E    ;U
  db 0,$CB,1,$46,$3E    ;T
  db 0,$D3,1,$48,$3E    ;U
  db 0,$DB,1,$28,$3E    ;M
  db 0,$E7,1,$2A,$3E    ;N

  db 0,$F7,1,$44,$3E    ;S
  db 0,$FF,1,$0E,$3E    ;H
  db 0,$07,1,$20,$3E    ;I
  db 0,$0C,1,$2A,$3E    ;N
  db 0,$14,1,$08,$3E    ;E
  db 0,$1C,1,$44,$3E    ;S
  db 0,$24,1,$2E,$3E    ;P
  db 0,$2B,1,$00,$3E    ;A
  db 0,$33,1,$42,$3E    ;R
  db 2,$3B,1,$24,$3E    ;K
  
Credits_Text_3C:  ; Message Coordinator
db $00, $B3, $01, $28, $3C  ;M
db $00, $BE, $01, $08, $3C  ;E
db $00, $C6, $01, $44, $3C  ;S
db $00, $CE, $01, $44, $3C  ;S
db $00, $D6, $01, $00, $3C  ;A
db $00, $DE, $01, $0C, $3C  ;G
db $00, $E6, $01, $08, $3C  ;E

db $00, $F7, $01, $04, $3C  ;C
db $00, $FF, $01, $2C, $3C  ;O
db $00, $07, $01, $2C, $3C  ;O
db $00, $0F, $01, $42, $3C  ;R
db $00, $17, $01, $06, $3C  ;D
db $00, $1E, $01, $20, $3C  ;I
db $00, $23, $01, $2A, $3C  ;N
db $00, $2C, $01, $00, $3C  ;A
db $00, $33, $01, $84, $3C  ;TO
db $02, $43, $01, $86, $3C  ;R

Credits_Text_3D:  ; Abeshi
db $00,$EA,$01,$00,$3E  ;A
db $00,$F2,$01,$02,$3E  ;B
db $00,$FA,$01,$08,$3E  ;E
db $00,$02,$01,$44,$3E  ;S
db $00,$0A,$01,$0E,$3E  ;H
db $02,$11,$01,$20,$3E  ;I

warnpc $16EDF0  ; Don't overwrite Mr. Sakurai, he's worked too hard for that


;;;;;;;;;;;;;;;
; END CUSTOMS ;
;;;;;;;;;;;;;;;

org $16D883 : Credits_Text_00:  ; Character Designers
  db $00                     ;16D883|        |      ; 
  db $43                     ;16D884|        |      ; X pos 43 (center right)
  db $01                     ;16D885|        |      ; Y pos 1
  db $82                     ;16D886|        |      ; 82 = "S"
  db $3C                     ;16D887|        |      ; 3C = Orange text

  db $00                     ;16D888|        |      ;  
  db $33                     ;16D889|        |      ; X pos 33 (center right)
  db $01                     ;16D88A|        |      ; Y pos 1
  db $80                     ;16D88B|        |      ; 80 = "ER"
  db $3C                     ;16D88C|        |      ; 3C = Orange text

  db $00                     ;16D88D|        |      ;  
  db $2A                     ;16D88E|        |      ; X pos 2A
  db $01                     ;16D88F|        |      ; Y pos 1
  db $2A                     ;16D890|        |      ; 2A = "N"
  db $3C                     ;16D891|        |      ; 3C = Orange text

  db $00                     ;16D892|        |      ;  
  db $22                     ;16D893|        |      ; X pos 22
  db $01                     ;16D894|        |      ; Y pos 1
  db $0C                     ;16D895|        |      ; 0C = "G"
  db $3C                     ;16D896|        |      ; 3C = Orange text

  db $00                     ;16D897|        |      ;  
  db $1D                     ;16D898|        |      ; X pos 1D
  db $01                     ;16D899|        |      ; Y pos 1
  db $20                     ;16D89A|        |      ; 20 = "I"
  db $3C                     ;16D89B|        |      ; 3C = Orange text

  db $00                     ;16D89C|        |      ;  
  db $15                     ;16D89D|        |      ; X pos 15
  db $01                     ;16D89E|        |      ; Y pos 01
  db $44                     ;16D89F|        |      ; 44 = "S"
  db $3C                     ;16D8A0|        |      ; 3C = Orange text

  db $00                     ;16D8A1|        |      ;  
  db $0D                     ;16D8A2|        |      ; X pos 0D
  db $01                     ;16D8A3|        |      ; Y pos 01
  db $08                     ;16D8A4|        |      ; 08 = "E"
  db $3C                     ;16D8A5|        |      ; 3C = Orange text

  db $00                     ;16D8A6|        |      ;  
  db $05                     ;16D8A7|        |      ; X pos 05
  db $01                     ;16D8A8|        |      ; Y pos 01
  db $06                     ;16D8A9|        |      ; 06 = "D"
  db $3C                     ;16D8AA|        |      ; 3C = Orange text

  db $00                     ;16D8AB|        |      ;  
  db $F5                     ;16D8AC|        |      ; X pos F5
  db $01                     ;16D8AD|        |      ; Y pos 01
  db $42                     ;16D8AE|        |      ; 42 = "R"
  db $3C                     ;16D8AF|        |      ; 3C = Orange text

  db $00                     ;16D8B0|        |      ;  
  db $ED                     ;16D8B1|        |      ; X pos ED
  db $01                     ;16D8B2|        |      ; Y pos 01
  db $08                     ;16D8B3|        |      ; 08 = "E"
  db $3C                     ;16D8B4|        |      ; 3C = Orange text

  db $00                     ;16D8B5|        |      ;  
  db $E5                     ;16D8B6|        |      ; X pos E5
  db $01                     ;16D8B7|        |      ; Y pos 01
  db $46                     ;16D8B8|        |      ; 46 = "T"
  db $3C                     ;16D8B9|        |      ; 3C = Orange text

  db $00                     ;16D8BA|        |      ;  
  db $DD                     ;16D8BB|        |      ; X pos DD
  db $01                     ;16D8BC|        |      ; Y pos 01
  db $04                     ;16D8BD|        |      ; 04 = "C"
  db $3C                     ;16D8BE|        |      ; 3C = Orange text

  db $00                     ;16D8BF|        |      ;  
  db $D5                     ;16D8C0|        |      ; X pos D5
  db $01                     ;16D8C1|        |      ; Y pos 01
  db $00                     ;16D8C2|        |      ; 00 = "A"
  db $3C                     ;16D8C3|        |      ; 3C = Orange text

  db $00                     ;16D8C4|        |      ;  
  db $CD                     ;16D8C5|        |      ; X pos CD
  db $01                     ;16D8C6|        |      ; Y pos 01
  db $42                     ;16D8C7|        |      ; 42 = "R"
  db $3C                     ;16D8C8|        |      ; 3C = Orange text

  db $00                     ;16D8C9|        |      ;  
  db $C5                     ;16D8CA|        |      ; X pos C5
  db $01                     ;16D8CB|        |      ; Y pos 01
  db $00                     ;16D8CC|        |      ; 00 = "A"
  db $3C                     ;16D8CD|        |      ; 3C = Orange text

  db $00                     ;16D8CE|        |      ;  
  db $BD                     ;16D8CF|        |      ; X pos BD
  db $01                     ;16D8D0|        |      ; Y pos 01
  db $0E                     ;16D8D1|        |      ; 0E = "H"
  db $3C                     ;16D8D2|        |      ; 3C = Orange text

  db $02                     ;16D8D3|        |      ; -----02 = Final letter
  db $B5                     ;16D8D4|        |      ; X pos B5
  db $01                     ;16D8D5|        |      ; Y pos 1
  db $04                     ;16D8D6|        |      ; 04  = "C"
  db $3C                     ;16D8D7|        |      ; 3C = Orange text

org $16D8D8 : Credits_Text_01:  ; Executive Producer
  db $00                     ;16D8D8|        |      ; 
  db $3E                     ;16D8D9|        |      ;  
  db $01                     ;16D8DA|        |      ;  
  db $42                     ;16D8DB|        |      ;  
  db $3C                     ;16D8DC|        |      ;  

  db $00                     ;16D8DD|        |      ;  
  db $36                     ;16D8DE|        |      ;  
  db $01                     ;16D8DF|        |      ;  
  db $08                     ;16D8E0|        |      ;  
  db $3C                     ;16D8E1|        |      ;  

  db $00                     ;16D8E2|        |      ;  
  db $2E                     ;16D8E3|        |      ;  
  db $01                     ;16D8E4|        |      ;  
  db $04                     ;16D8E5|        |      ;  
  db $3C                     ;16D8E6|        |      ;  

  db $00                     ;16D8E7|        |      ;  
  db $26                     ;16D8E8|        |      ;  
  db $01                     ;16D8E9|        |      ;  
  db $48                     ;16D8EA|        |      ;  
  db $3C                     ;16D8EB|        |      ;  

  db $00                     ;16D8EC|        |      ;  
  db $1E                     ;16D8ED|        |      ;  
  db $01                     ;16D8EE|        |      ;  
  db $06                     ;16D8EF|        |      ;  
  db $3C                     ;16D8F0|        |      ;  

  db $00                     ;16D8F1|        |      ;  
  db $16                     ;16D8F2|        |      ;  
  db $01                     ;16D8F3|        |      ;  
  db $2C                     ;16D8F4|        |      ;  
  db $3C                     ;16D8F5|        |      ;  

  db $00                     ;16D8F6|        |      ;  
  db $0E                     ;16D8F7|        |      ;  
  db $01                     ;16D8F8|        |      ;  
  db $42                     ;16D8F9|        |      ;  
  db $3C                     ;16D8FA|        |      ;  

  db $00                     ;16D8FB|        |      ;  
  db $06                     ;16D8FC|        |      ;  
  db $01                     ;16D8FD|        |      ;  
  db $2E                     ;16D8FE|        |      ;  
  db $3C                     ;16D8FF|        |      ;  

  db $00                     ;16D900|        |      ;  
  db $F6                     ;16D901|        |      ;  
  db $01                     ;16D902|        |      ;  
  db $08                     ;16D903|        |      ;  
  db $3C                     ;16D904|        |      ;  

  db $00                     ;16D905|        |      ;  
  db $EE                     ;16D906|        |      ;  
  db $01                     ;16D907|        |      ;  
  db $4A                     ;16D908|        |      ;  
  db $3C                     ;16D909|        |      ;  

  db $00                     ;16D90A|        |      ;  
  db $E8                     ;16D90B|        |      ;  
  db $01                     ;16D90C|        |      ;  
  db $20                     ;16D90D|        |      ;  
  db $3C                     ;16D90E|        |      ;  

  db $00                     ;16D90F|        |      ;  
  db $E1                     ;16D910|        |      ;  
  db $01                     ;16D911|        |      ;  
  db $46                     ;16D912|        |      ;  
  db $3C                     ;16D913|        |      ;  

  db $00                     ;16D914|        |      ;  
  db $D9                     ;16D915|        |      ;  
  db $01                     ;16D916|        |      ;  
  db $48                     ;16D917|        |      ;  
  db $3C                     ;16D918|        |      ;  

  db $00                     ;16D919|        |      ;  
  db $D1                     ;16D91A|        |      ;  
  db $01                     ;16D91B|        |      ;  
  db $04                     ;16D91C|        |      ;  
  db $3C                     ;16D91D|        |      ;  

  db $00                     ;16D91E|        |      ;  
  db $C9                     ;16D91F|        |      ;  
  db $01                     ;16D920|        |      ;  
  db $08                     ;16D921|        |      ;  
  db $3C                     ;16D922|        |      ;  

  db $00                     ;16D923|        |      ;  
  db $C1                     ;16D924|        |      ;  
  db $01                     ;16D925|        |      ;  
  db $4E                     ;16D926|        |      ;  
  db $3C                     ;16D927|        |      ;  

  db $02                     ;16D928|        |      ;  
  db $B9                     ;16D929|        |      ; X pos B9
  db $01                     ;16D92A|        |      ; Y pos 01
  db $00                     ;16D92B|        |      ; 00 = "A" (for the meme)
  db $3C                     ;16D92C|        |      ; 3C = Orange text

org $16D92D : Credits_Text_02:  ; Producer
  db $00                     ;16D950|        |      ; 
  db $DE                     ;16D951|        |      ; X pos DE
  db $01                     ;16D952|        |      ; Y pos 01
  db $2E                     ;16D953|        |      ; 2E = "P"
  db $3C                     ;16D954|        |      ; 3C = Orange text

  db $00                     ;16D94B|        |      ;  
  db $E6                     ;16D94C|        |      ; X pos E6
  db $01                     ;16D94D|        |      ; Y pos 01
  db $42                     ;16D94E|        |      ; 42 = "R"
  db $3C                     ;16D94F|        |      ; 3C = Orange text

  db $00                     ;16D946|        |      ;  
  db $EE                     ;16D947|        |      ; X pos EE
  db $01                     ;16D948|        |      ; Y pos 01
  db $2C                     ;16D949|        |      ; 2C = "O"
  db $3C                     ;16D94A|        |      ; 3C = Orange text

  db $00                     ;16D941|        |      ;  
  db $F6                     ;16D942|        |      ; X pos F6
  db $01                     ;16D943|        |      ; Y pos 01
  db $06                     ;16D944|        |      ; 06 = "D"
  db $3C                     ;16D945|        |      ; 3C = Orange text

  db $00                     ;16D93C|        |      ;  
  db $FE                     ;16D93D|        |      ; X pos FE
  db $01                     ;16D93E|        |      ; Y pos 01
  db $48                     ;16D93F|        |      ; 48 = "U"
  db $3C                     ;16D940|        |      ; 3C = Orange text

  db $00                     ;16D937|        |      ;  
  db $06                     ;16D938|        |      ; X pos 06
  db $01                     ;16D939|        |      ; Y pos 01
  db $04                     ;16D93A|        |      ; 04 = "C"
  db $3C                     ;16D93B|        |      ; 3C = Orange text

  db $00                     ;16D932|        |      ;  
  db $0E                     ;16D933|        |      ; X pos 0E
  db $01                     ;16D934|        |      ; Y pos 01
  db $08                     ;16D935|        |      ; 08 = "E"
  db $3C                     ;16D936|        |      ; 3C = Orange text

  db $02                     ;16D92D|        |      ; Text 02 "Producer"
  db $16                     ;16D92E|        |      ; X pos 16
  db $01                     ;16D92F|        |      ; Y pos 01
  db $42                     ;16D930|        |      ; 42 = "R"
  db $3C                     ;16D931|        |      ; 3C = Orange text

org $16D955 : Credits_Text_03:  ; Directors
  db $00                     ;16D978|        |      ;  
  db $DD                     ;16D979|        |      ;  
  db $01                     ;16D97A|        |      ;  
  db $06                     ;16D97B|        |      ;  D
  db $3C                     ;16D97C|        |      ;  

  db $00                     ;16D973|        |      ;  
  db $E4                     ;16D974|        |      ;  
  db $01                     ;16D975|        |      ;  
  db $20                     ;16D976|        |      ;  I
  db $3C                     ;16D977|        |      ;  

  db $00                     ;16D96E|        |      ;  
  db $E9                     ;16D96F|        |      ;  
  db $01                     ;16D970|        |      ;  
  db $42                     ;16D971|        |      ;  R
  db $3C                     ;16D972|        |      ;  

  db $00                     ;16D969|        |      ;  
  db $F1                     ;16D96A|        |      ;  
  db $01                     ;16D96B|        |      ;  
  db $08                     ;16D96C|        |      ;  E
  db $3C                     ;16D96D|        |      ;  

  db $00                     ;16D964|        |      ;  
  db $F9                     ;16D965|        |      ;  
  db $01                     ;16D966|        |      ;  
  db $04                     ;16D967|        |      ;  C
  db $3C                     ;16D968|        |      ;  

  db $00                     ;16D95F|        |      ;  
  db $02                     ;16D960|        |      ;  
  db $01                     ;16D961|        |      ;  
  db $84                     ;16D962|        |      ;  TO
  db $3C                     ;16D963|        |      ;  

  db $00                     ;16D95A|        |      ;  
  db $12                     ;16D95B|        |      ;  
  db $01                     ;16D95C|        |      ;  
  db $86                     ;16D95D|        |      ;  R
  db $3C                     ;16D95E|        |      ;  

  db $02                     ;16D955|        |      ; 
  db $19                     ;16D956|        |      ;  
  db $01                     ;16D957|        |      ;  
  db $44                     ;16D958|        |      ;  S
  db $3C                     ;16D959|        |      ;  

org $16D97D : Credits_Text_04:  ; Script Writers
  db $00                     ;16D9B4|        |      ;  
  db $CA                     ;16D9B5|        |      ;  
  db $01                     ;16D9B6|        |      ;  
  db $44                     ;16D9B7|        |      ;  S
  db $3C                     ;16D9B8|        |      ;  

  db $00                     ;16D9AF|        |      ;  
  db $D2                     ;16D9B0|        |      ;  
  db $01                     ;16D9B1|        |      ;  
  db $04                     ;16D9B2|        |      ;  C
  db $3C                     ;16D9B3|        |      ;  

  db $00                     ;16D9AA|        |      ;  
  db $DA                     ;16D9AB|        |      ;  
  db $01                     ;16D9AC|        |      ;  
  db $42                     ;16D9AD|        |      ;  R
  db $3C                     ;16D9AE|        |      ;  

  db $00                     ;16D9A5|        |      ;  
  db $E1                     ;16D9A6|        |      ;  
  db $01                     ;16D9A7|        |      ;  
  db $20                     ;16D9A8|        |      ;  I
  db $3C                     ;16D9A9|        |      ;  

  db $00                     ;16D9A0|        |      ;  
  db $E6                     ;16D9A1|        |      ;  
  db $01                     ;16D9A2|        |      ;  
  db $2E                     ;16D9A3|        |      ;  P
  db $3C                     ;16D9A4|        |      ;  

  db $00                     ;16D99B|        |      ;  
  db $EE                     ;16D99C|        |      ;  
  db $01                     ;16D99D|        |      ;  
  db $46                     ;16D99E|        |      ;  T
  db $3C                     ;16D99F|        |      ;  


  db $00                     ;16D996|        |      ;  
  db $FF                     ;16D997|        |      ;  
  db $01                     ;16D998|        |      ;  
  db $4C                     ;16D999|        |      ;  W
  db $3C                     ;16D99A|        |      ;  


  db $00                     ;16D991|        |      ;  
  db $0A                     ;16D992|        |      ;  
  db $01                     ;16D993|        |      ;  
  db $42                     ;16D994|        |      ;  R
  db $3C                     ;16D995|        |      ;  

  db $00                     ;16D98C|        |      ;  
  db $11                     ;16D98D|        |      ;  
  db $01                     ;16D98E|        |      ;  
  db $20                     ;16D98F|        |      ;  I
  db $3C                     ;16D990|        |      ;  

  db $00                     ;16D987|        |      ;  
  db $16                     ;16D988|        |      ;  
  db $01                     ;16D989|        |      ;  
  db $46                     ;16D98A|        |      ;  T
  db $3C                     ;16D98B|        |      ;  

  db $00                     ;16D982|        |      ;  
  db $1D                     ;16D983|        |      ;  
  db $01                     ;16D984|        |      ;  
  db $80                     ;16D985|        |      ;  ER
  db $3C                     ;16D986|        |      ;  

  db $02                     ;16D97D|        |      ; 
  db $2D                     ;16D97E|        |      ;  
  db $01                     ;16D97F|        |      ;  
  db $82                     ;16D980|        |      ;  S
  db $3C                     ;16D981|        |      ;  

org $16D9B9 : Credits_Text_05:  ; Main Programmer
  db $00                     ;16D9F5|        |      ;  
  db $C2                     ;16D9F6|        |      ;  
  db $01                     ;16D9F7|        |      ;  
  db $28                     ;16D9F8|        |      ;  M
  db $3C                     ;16D9F9|        |      ;  

  db $00                     ;16D9F0|        |      ;  
  db $CD                     ;16D9F1|        |      ;  
  db $01                     ;16D9F2|        |      ;  
  db $00                     ;16D9F3|        |      ;  A
  db $3C                     ;16D9F4|        |      ;  

  db $00                     ;16D9EB|        |      ;  
  db $D4                     ;16D9EC|        |      ;  
  db $01                     ;16D9ED|        |      ;  
  db $20                     ;16D9EE|        |      ;  I
  db $3C                     ;16D9EF|        |      ;  

  db $00                     ;16D9E6|        |      ;  
  db $D9                     ;16D9E7|        |      ;  
  db $01                     ;16D9E8|        |      ;  
  db $2A                     ;16D9E9|        |      ;  N
  db $3C                     ;16D9EA|        |      ;  


  db $00                     ;16D9E1|        |      ;  
  db $E8                     ;16D9E2|        |      ;  
  db $01                     ;16D9E3|        |      ;  
  db $2E                     ;16D9E4|        |      ;  P
  db $3C                     ;16D9E5|        |      ;  

  db $00                     ;16D9DC|        |      ;  
  db $F0                     ;16D9DD|        |      ;  
  db $01                     ;16D9DE|        |      ;  
  db $42                     ;16D9DF|        |      ;  R
  db $3C                     ;16D9E0|        |      ;  

  db $00                     ;16D9D7|        |      ;  
  db $F8                     ;16D9D8|        |      ;  
  db $01                     ;16D9D9|        |      ;  
  db $2C                     ;16D9DA|        |      ;  O
  db $3C                     ;16D9DB|        |      ;  

  db $00                     ;16D9D2|        |      ;  
  db $00                     ;16D9D3|        |      ;  
  db $01                     ;16D9D4|        |      ;  
  db $0C                     ;16D9D5|        |      ;  G
  db $3C                     ;16D9D6|        |      ;  

  db $00                     ;16D9CD|        |      ;  
  db $08                     ;16D9CE|        |      ;  
  db $01                     ;16D9CF|        |      ;  
  db $42                     ;16D9D0|        |      ;  R
  db $3C                     ;16D9D1|        |      ;  

  db $00                     ;16D9C8|        |      ;  
  db $10                     ;16D9C9|        |      ;  
  db $01                     ;16D9CA|        |      ;  
  db $00                     ;16D9CB|        |      ;  A
  db $3C                     ;16D9CC|        |      ;  

  db $00                     ;16D9C3|        |      ;  
  db $18                     ;16D9C4|        |      ;  
  db $01                     ;16D9C5|        |      ;  
  db $28                     ;16D9C6|        |      ;  M
  db $3C                     ;16D9C7|        |      ;  

  db $00                     ;16D9C3|        |      ;  
  db $23                     ;16D9C4|        |      ;  
  db $01                     ;16D9C5|        |      ;  
  db $28                     ;16D9C6|        |      ;  M
  db $3C                     ;16D9C7|        |      ;  

  db $00                     ;16D9BE|        |      ;  
  db $2E                     ;16D9BF|        |      ;  
  db $01                     ;16D9C0|        |      ;  
  db $08                     ;16D9C1|        |      ;  E
  db $3C                     ;16D9C2|        |      ;  

  db $02                     ;16D9B9|        |      ;  
  db $36                     ;16D9BA|        |      ;  
  db $01                     ;16D9BB|        |      ;  
  db $42                     ;16D9BC|        |      ;  R
  db $3C                     ;16D9BD|        |      ;  

Credits_Text_06:  ; Programmers
  db $00                     ;16DA22|        |      ;  
  db $D2                     ;16DA23|        |      ;  
  db $01                     ;16DA24|        |      ;  
  db $2E                     ;16DA25|        |      ;  P
  db $3C                     ;16DA26|        |      ;  

  db $00                     ;16DA1D|        |      ;  
  db $DA                     ;16DA1E|        |      ;  
  db $01                     ;16DA1F|        |      ;  
  db $42                     ;16DA20|        |      ;  R
  db $3C                     ;16DA21|        |      ;  

  db $00                     ;16DA18|        |      ;  
  db $E2                     ;16DA19|        |      ;  
  db $01                     ;16DA1A|        |      ;  
  db $2C                     ;16DA1B|        |      ;  O
  db $3C                     ;16DA1C|        |      ;  

  db $00                     ;16DA13|        |      ;  
  db $EA                     ;16DA14|        |      ;  
  db $01                     ;16DA15|        |      ;  
  db $0C                     ;16DA16|        |      ;  G
  db $3C                     ;16DA17|        |      ;  

  db $00                     ;16DA0E|        |      ;  
  db $F2                     ;16DA0F|        |      ;  
  db $01                     ;16DA10|        |      ;  
  db $42                     ;16DA11|        |      ;  R
  db $3C                     ;16DA12|        |      ;  

  db $00                     ;16DA09|        |      ;  
  db $FA                     ;16DA0A|        |      ;  
  db $01                     ;16DA0B|        |      ;  
  db $00                     ;16DA0C|        |      ;  A
  db $3C                     ;16DA0D|        |      ;  

  db $00                     ;16DA04|        |      ;  
  db $02                     ;16DA05|        |      ;  
  db $01                     ;16DA06|        |      ;  
  db $28                     ;16DA07|        |      ;  M
  db $3C                     ;16DA08|        |      ;  

  db $00                     ;16DA04|        |      ;  
  db $0C                     ;16DA05|        |      ;  
  db $01                     ;16DA06|        |      ;  
  db $28                     ;16DA07|        |      ;  M
  db $3C                     ;16DA08|        |      ;  

  db $00                     ;16D9FF|        |      ;  
  db $16                     ;16DA00|        |      ;  
  db $01                     ;16DA01|        |      ;  
  db $80                     ;16DA02|        |      ;  ER
  db $3C                     ;16DA03|        |      ;  

  db $02                     ;16D9FA|        |      ;  
  db $26                     ;16D9FB|        |      ;  
  db $01                     ;16D9FC|        |      ;  
  db $82                     ;16D9FD|        |      ;  S
  db $3C                     ;16D9FE|        |      ;  

Credits_Text_07:  ; Music Director
  db $00                     ;16DA27|        |      ;  
  db $2E                     ;16DA28|        |      ;  
  db $01                     ;16DA29|        |      ;  
  db $86                     ;16DA2A|        |      ;  
  db $3C                     ;16DA2B|        |      ;  
  db $00                     ;16DA2C|        |      ;  
  db $1E                     ;16DA2D|        |      ;  
  db $01                     ;16DA2E|        |      ;  
  db $84                     ;16DA2F|        |      ;  
  db $3C                     ;16DA30|        |      ;  
  db $00                     ;16DA31|        |      ;  
  db $16                     ;16DA32|        |      ;  
  db $01                     ;16DA33|        |      ;  
  db $04                     ;16DA34|        |      ;  
  db $3C                     ;16DA35|        |      ;  
  db $00                     ;16DA36|        |      ;  
  db $0E                     ;16DA37|        |      ;  
  db $01                     ;16DA38|        |      ;  
  db $08                     ;16DA39|        |      ;  
  db $3C                     ;16DA3A|        |      ;  
  db $00                     ;16DA3B|        |      ;  
  db $06                     ;16DA3C|        |      ;  
  db $01                     ;16DA3D|        |      ;  
  db $42                     ;16DA3E|        |      ;  
  db $3C                     ;16DA3F|        |      ;  
  db $00                     ;16DA40|        |      ;  
  db $01                     ;16DA41|        |      ;  
  db $01                     ;16DA42|        |      ;  
  db $20                     ;16DA43|        |      ;  
  db $3C                     ;16DA44|        |      ;  
  db $00                     ;16DA45|        |      ;  
  db $FA                     ;16DA46|        |      ;  
  db $01                     ;16DA47|        |      ;  
  db $06                     ;16DA48|        |      ;  
  db $3C                     ;16DA49|        |      ;  
  db $00                     ;16DA4A|        |      ;  
  db $EA                     ;16DA4B|        |      ;  
  db $01                     ;16DA4C|        |      ;  
  db $04                     ;16DA4D|        |      ;  
  db $3C                     ;16DA4E|        |      ;  
  db $00                     ;16DA4F|        |      ;  
  db $E5                     ;16DA50|        |      ;  
  db $01                     ;16DA51|        |      ;  
  db $20                     ;16DA52|        |      ;  
  db $3C                     ;16DA53|        |      ;  
  db $00                     ;16DA54|        |      ;  
  db $DE                     ;16DA55|        |      ;  
  db $01                     ;16DA56|        |      ;  
  db $44                     ;16DA57|        |      ;  
  db $3C                     ;16DA58|        |      ;  
  db $00                     ;16DA59|        |      ;  
  db $D6                     ;16DA5A|        |      ;  
  db $01                     ;16DA5B|        |      ;  
  db $48                     ;16DA5C|        |      ;  
  db $3C                     ;16DA5D|        |      ;  
  db $02                     ;16DA5E|        |      ;  
  db $CB                     ;16DA5F|        |      ;  
  db $01                     ;16DA60|        |      ;  
  db $28                     ;16DA61|        |      ;  
  db $3C                     ;16DA62|        |      ;  

Credits_Text_08:  ; Music Composers
  db $00                     ;16DA63|        |      ;  
  db $34                     ;16DA64|        |      ;  
  db $01                     ;16DA65|        |      ;  
  db $82                     ;16DA66|        |      ;  
  db $3C                     ;16DA67|        |      ;  

  db $00                     ;16DA68|        |      ;  
  db $24                     ;16DA69|        |      ;  
  db $01                     ;16DA6A|        |      ;  
  db $80                     ;16DA6B|        |      ;  
  db $3C                     ;16DA6C|        |      ;  

  db $00                     ;16DA6D|        |      ;  
  db $1C                     ;16DA6E|        |      ;  
  db $01                     ;16DA6F|        |      ;  
  db $44                     ;16DA70|        |      ;  
  db $3C                     ;16DA71|        |      ;  

  db $00                     ;16DA72|        |      ;  
  db $14                     ;16DA73|        |      ;  
  db $01                     ;16DA74|        |      ;  
  db $2C                     ;16DA75|        |      ;  
  db $3C                     ;16DA76|        |      ;  

  db $00                     ;16DA77|        |      ;  
  db $0C                     ;16DA78|        |      ;  
  db $01                     ;16DA79|        |      ;  
  db $2E                     ;16DA7A|        |      ;  
  db $3C                     ;16DA7B|        |      ;  

  db $00                     ;16DA7C|        |      ;  
  db $01                     ;16DA7D|        |      ;  
  db $01                     ;16DA7E|        |      ;  
  db $28                     ;16DA7F|        |      ;  
  db $3C                     ;16DA80|        |      ;  

  db $00                     ;16DA81|        |      ;  
  db $F9                     ;16DA82|        |      ;  
  db $01                     ;16DA83|        |      ;  
  db $2C                     ;16DA84|        |      ;  
  db $3C                     ;16DA85|        |      ;  

  db $00                     ;16DA86|        |      ;  
  db $F1                     ;16DA87|        |      ;  
  db $01                     ;16DA88|        |      ;  
  db $04                     ;16DA89|        |      ;  
  db $3C                     ;16DA8A|        |      ;  

  db $00                     ;16DA8B|        |      ;  
  db $E1                     ;16DA8C|        |      ;  
  db $01                     ;16DA8D|        |      ;  
  db $04                     ;16DA8E|        |      ;  
  db $3C                     ;16DA8F|        |      ;  

  db $00                     ;16DA90|        |      ;  
  db $DC                     ;16DA91|        |      ;  
  db $01                     ;16DA92|        |      ;  
  db $20                     ;16DA93|        |      ;  
  db $3C                     ;16DA94|        |      ;  

  db $00                     ;16DA95|        |      ;  
  db $D5                     ;16DA96|        |      ;  
  db $01                     ;16DA97|        |      ;  
  db $44                     ;16DA98|        |      ;  
  db $3C                     ;16DA99|        |      ;  

  db $00                     ;16DA9A|        |      ;  
  db $CD                     ;16DA9B|        |      ;  
  db $01                     ;16DA9C|        |      ;  
  db $48                     ;16DA9D|        |      ;  
  db $3C                     ;16DA9E|        |      ;  

  db $02                     ;16DA9F|        |      ;  
  db $C2                     ;16DAA0|        |      ;  
  db $01                     ;16DAA1|        |      ;  
  db $28                     ;16DAA2|        |      ;  
  db $3C                     ;16DAA3|        |      ;  


Credits_Text_09:
; Message Programmers
  db $00,$B0,$01,$28,$3C    ; 0, (B5,1), "M", Title
  db $00,$BA,$01,$08,$3C    ; 0, (BD,1), "E", Title
  db $00,$C2,$01,$44,$3C    ; 0, (C5,1), "S", Title
  db $00,$CA,$01,$44,$3C    ; 0, (CD,1), "S", Title
  db $00,$D2,$01,$00,$3C    ; 0, (D5,1), "A", Title
  db $00,$DA,$01,$0C,$3C    ; 0, (DD,1), "G", Title
  db $00,$E2,$01,$08,$3C    ; 0, (E5,1), "E", Title

  db $00,$F2,$01,$2E,$3C    ; 0, (F5,1), "P", Title
  db $00,$FA,$01,$42,$3C    ; 0, (FD,1), "R", Title
  db $00,$02,$01,$2C,$3C    ; 0, (05,1), "O", Title
  db $00,$0A,$01,$0C,$3C    ; 0, (0D,1), "G", Title
  db $00,$12,$01,$42,$3C    ; 0, (15,1), "R", Title
  db $00,$1A,$01,$00,$3C    ; 0, (1D,1), "A", Title
  db $00,$22,$01,$28,$3C    ; 0, (22,1), "M", Title
  db $00,$2D,$01,$28,$3C    ; 0, (2A,1), "M", Title
  db $00,$38,$01,$80,$3C    ; 0, (33,1), "ER", Title
  db $02,$48,$01,$82,$3C    ; 2, (43,1), "S", Title

org $16DAF5 : Credits_Text_0A:  ; Unused (Message Coordinator Abeshi)
org $16DB67 : Credits_Text_0B:  ; Debug Director
org $16DBA3 : Credits_Text_0C:  ; Technical Advisor
  db $00                               ;16DBEE|        |      ;  
  db $BE                               ;16DBEF|        |      ;  
  db $01                               ;16DBF0|        |      ;  
  db $46                               ;16DBF1|        |      ;  T
  db $3C                               ;16DBF2|        |      ;  

  db $00                               ;16DBE9|        |      ;  
  db $C5                               ;16DBEA|        |      ;  
  db $01                               ;16DBEB|        |      ;  
  db $08                               ;16DBEC|        |      ;  E
  db $3C                               ;16DBED|        |      ;  
  
  db $00                               ;16DBE4|        |      ;  
  db $CD                               ;16DBE5|        |      ;  
  db $01                               ;16DBE6|        |      ;  
  db $04                               ;16DBE7|        |      ;  C
  db $3C                               ;16DBE8|        |      ;  
  
  db $00                               ;16DBDF|        |      ;  
  db $D5                               ;16DBE0|        |      ;  
  db $01                               ;16DBE1|        |      ;  
  db $0E                               ;16DBE2|        |      ;  H
  db $3C                               ;16DBE3|        |      ;  
  
  db $00                               ;16DBDA|        |      ;  
  db $DD                               ;16DBDB|        |      ;  
  db $01                               ;16DBDC|        |      ;  
  db $2A                               ;16DBDD|        |      ;  N
  db $3C                               ;16DBDE|        |      ;  
  
  db $00                               ;16DBD5|        |      ;  
  db $E5                               ;16DBD6|        |      ;  
  db $01                               ;16DBD7|        |      ;  
  db $20                               ;16DBD8|        |      ;  I
  db $3C                               ;16DBD9|        |      ;  
  
  db $00                               ;16DBD0|        |      ;  
  db $EA                               ;16DBD1|        |      ;  
  db $01                               ;16DBD2|        |      ;  
  db $04                               ;16DBD3|        |      ;  C
  db $3C                               ;16DBD4|        |      ;  
 
  db $00                               ;16DBCB|        |      ;  
  db $F2                               ;16DBCC|        |      ;  
  db $01                               ;16DBCD|        |      ;  
  db $00                               ;16DBCE|        |      ;  A
  db $3C                               ;16DBCF|        |      ;  

  db $00                               ;16DBC6|        |      ;  
  db $FA                               ;16DBC7|        |      ;  
  db $01                               ;16DBC8|        |      ;  
  db $26                               ;16DBC9|        |      ;  L
  db $3C                               ;16DBCA|        |      ;  
  
  
  
  db $00                               ;16DBC1|        |      ;  
  db $0B                               ;16DBC2|        |      ;  
  db $01                               ;16DBC3|        |      ;  
  db $00                               ;16DBC4|        |      ;  A
  db $3C                               ;16DBC5|        |      ;  
  
  db $00                               ;16DBBC|        |      ;  
  db $13                               ;16DBBD|        |      ;  
  db $01                               ;16DBBE|        |      ;  
  db $06                               ;16DBBF|        |      ;  D
  db $3C                               ;16DBC0|        |      ;  
  
  db $00                               ;16DBB7|        |      ;  
  db $1B                               ;16DBB8|        |      ;  
  db $01                               ;16DBB9|        |      ;  
  db $4A                               ;16DBBA|        |      ;  V
  db $3C                               ;16DBBB|        |      ;  
  
  db $00                               ;16DBB2|        |      ;  
  db $22                               ;16DBB3|        |      ;  
  db $01                               ;16DBB4|        |      ;  
  db $20                               ;16DBB5|        |      ;  I
  db $3C                               ;16DBB6|        |      ;  
  
  db $00                               ;16DBAD|        |      ;  
  db $27                               ;16DBAE|        |      ;  
  db $01                               ;16DBAF|        |      ;  
  db $44                               ;16DBB0|        |      ;  S
  db $3C                               ;16DBB1|        |      ;  
  
  db $00                               ;16DBA8|        |      ;  
  db $2F                               ;16DBA9|        |      ;  
  db $01                               ;16DBAA|        |      ;  
  db $2C                               ;16DBAB|        |      ;  O
  db $3C                               ;16DBAC|        |      ;  
  
  db $02                               ;16DBA3|        |      ;  
  db $37                               ;16DBA4|        |      ;  
  db $01                               ;16DBA5|        |      ;  
  db $42                               ;16DBA6|        |      ;  R
  db $3C                               ;16DBA7|        |      ;  


;Revert RetGal's credit for Seal of Rimsala
org $16DBF3 : Credits_Text_0D:  ; Main Advertiser
  db $00                               ;16DBF3|        |      ;  
  db $30                               ;16DBF4|        |      ;  
  db $01                               ;16DBF5|        |      ;  
  db $42                               ;16DBF6|        |      ;  
  db $3C                               ;16DBF7|        |      ;  

  db $00                               ;16DBF8|        |      ;  
  db $28                               ;16DBF9|        |      ;  
  db $01                               ;16DBFA|        |      ;  
  db $08                               ;16DBFB|        |      ;  
  db $3C                               ;16DBFC|        |      ;  

  db $00                               ;16DBFD|        |      ;  
  db $20                               ;16DBFE|        |      ;  
  db $01                               ;16DBFF|        |      ;  
  db $44                               ;16DC00|        |      ;  
  db $3C                               ;16DC01|        |      ;  

  db $00                               ;16DC02|        |      ;  
  db $1B                               ;16DC03|        |      ;  
  db $01                               ;16DC04|        |      ;  
  db $20                               ;16DC05|        |      ;  
  db $3C                               ;16DC06|        |      ;  

  db $00                               ;16DC07|        |      ;  
  db $15                               ;16DC08|        |      ;  
  db $01                               ;16DC09|        |      ;  
  db $46                               ;16DC0A|        |      ;  
  db $3C                               ;16DC0B|        |      ;  

  db $00                               ;16DC0C|        |      ;  
  db $0E                               ;16DC0D|        |      ;  
  db $01                               ;16DC0E|        |      ;  
  db $42                               ;16DC0F|        |      ;  
  db $3C                               ;16DC10|        |      ;  

  db $00                               ;16DC11|        |      ;  
  db $06                               ;16DC12|        |      ;  
  db $01                               ;16DC13|        |      ;  
  db $08                               ;16DC14|        |      ;  
  db $3C                               ;16DC15|        |      ;  

  db $00                               ;16DC16|        |      ;  
  db $FE                               ;16DC17|        |      ;  
  db $01                               ;16DC18|        |      ;  
  db $4A                               ;16DC19|        |      ;  
  db $3C                               ;16DC1A|        |      ;  

  db $00                               ;16DC1B|        |      ;  
  db $F6                               ;16DC1C|        |      ;  
  db $01                               ;16DC1D|        |      ;  
  db $06                               ;16DC1E|        |      ;  
  db $3C                               ;16DC1F|        |      ;  

  db $00                               ;16DC20|        |      ;  
  db $ED                               ;16DC21|        |      ;  
  db $01                               ;16DC22|        |      ;  
  db $00                               ;16DC23|        |      ;  
  db $3C                               ;16DC24|        |      ;  

  db $00                               ;16DC25|        |      ;  
  db $DD                               ;16DC26|        |      ;  
  db $01                               ;16DC27|        |      ;  
  db $2A                               ;16DC28|        |      ;  
  db $3C                               ;16DC29|        |      ;  

  db $00                               ;16DC2A|        |      ;  
  db $D8                               ;16DC2B|        |      ;  
  db $01                               ;16DC2C|        |      ;  
  db $20                               ;16DC2D|        |      ;  
  db $3C                               ;16DC2E|        |      ;  

  db $00                               ;16DC2F|        |      ;  
  db $D1                               ;16DC30|        |      ;  
  db $01                               ;16DC31|        |      ;  
  db $00                               ;16DC32|        |      ;  
  db $3C                               ;16DC33|        |      ;  

  db $02                               ;16DC34|        |      ;  
  db $C6                               ;16DC35|        |      ;  
  db $01                               ;16DC36|        |      ;  
  db $28                               ;16DC37|        |      ;  
  db $3C                               ;16DC38|        |      ;  

org $16DC39 : Credits_Text_0E:  ; Special Thanks To
org $16DC84 : Credits_Text_0F:  ; Kazu Ozawa
org $16DCB1 : Credits_Text_10:  ; Tetsuya Notoya
org $16DCF2 : Credits_Text_11:  ; Suu Saito
org $16DD1A : Credits_Text_12:  ; Tsuyoshi Ikeda
org $16DD5B : Credits_Text_13:  ; Mikio Ikeda
org $16DD8D : Credits_Text_14:  ; Mat Sutake
org $16DDBA : Credits_Text_15:  ; SDF @" Hashiguchi
org $16DE00 : Credits_Text_16:  ; Ryu Kuraoka
org $16DE32 : Credits_Text_17:  ; Pantsman
org $16DE5A : Credits_Text_18:  ; Jun Ishikawa
org $16DE91 : Credits_Text_19:  ; Hirokazu Ando
org $16DECD : Credits_Text_1A:  ; Yhan Debu
  db $00                     ;16DECD|        |      ;  
  db $1C                     ;16DECE|        |      ;  
  db $01                     ;16DECF|        |      ;  
  db $48                     ;16DED0|        |      ;  U
  db $3E                     ;16DED1|        |      ;  
  
  db $00                     ;16DED2|        |      ;  
  db $14                     ;16DED3|        |      ;  
  db $01                     ;16DED4|        |      ;  
  db $02                     ;16DED5|        |      ;  B
  db $3E                     ;16DED6|        |      ;  
  
  db $00                     ;16DED7|        |      ;  
  db $0C                     ;16DED8|        |      ;  
  db $01                     ;16DED9|        |      ;  
  db $08                     ;16DEDA|        |      ;  E
  db $3E                     ;16DEDB|        |      ;  
  
  db $00                     ;16DEDC|        |      ;  
  db $04                     ;16DEDD|        |      ;  
  db $01                     ;16DEDE|        |      ;  
  db $06                     ;16DEDF|        |      ;  D
  db $3E                     ;16DEE0|        |      ;  
  
  db $00                     ;16DEE1|        |      ;  
  db $F3                     ;16DEE2|        |      ;  
  db $01                     ;16DEE3|        |      ;  
  db $2A                     ;16DEE4|        |      ;  N
  db $3E                     ;16DEE5|        |      ;  
  
  db $00                     ;16DEE6|        |      ;  
  db $EB                     ;16DEE7|        |      ;  
  db $01                     ;16DEE8|        |      ;  
  db $00                     ;16DEE9|        |      ;  A
  db $3E                     ;16DEEA|        |      ;  
  
  db $00                     ;16DEEB|        |      ;  
  db $E3                     ;16DEEC|        |      ;  
  db $01                     ;16DEED|        |      ;  
  db $0E                     ;16DEEE|        |      ;  H
  db $3E                     ;16DEEF|        |      ;  
  
  db $02                     ;16DEF0|        |      ;  
  db $DB                     ;16DEF1|        |      ;  
  db $01                     ;16DEF2|        |      ;  
  db $60                     ;16DEF3|        |      ;  Y
  db $3E                     ;16DEF4|        |      ;  

org $16DEF5 : Credits_Text_1B:  ; Unused (Message Coordinator Abeshi)
org $16DF68 : Credits_Text_1C:  ; /KOBY/
  db $00                     ;16DF68|        |      ;  
  db $EB                     ;16DF69|        |      ;  
  db $01                     ;16DF6A|        |      ;  
  db $64                     ;16DF6B|        |      ;  
  db $3E                     ;16DF6C|        |      ;  

  db $00                     ;16DF72|        |      ;  
  db $FB                     ;16DF73|        |      ;  
  db $01                     ;16DF74|        |      ;  
  db $66                     ;16DF75|        |      ;  
  db $3E                     ;16DF76|        |      ;  

  db $02                     ;16DF6D|        |      ;  
  db $0B                     ;16DF6E|        |      ;  
  db $01                     ;16DF6F|        |      ;  
  db $68                     ;16DF70|        |      ;  
  db $3E                     ;16DF71|        |      ;  

org $16DF77 : Credits_Text_1D:  ; Satoru Iwata

;Revert RetGal's credits mod
org $16DFAE : Credits_Text_1E:  ; Yoshie Ishiyama
  db $00                               ;16DFAE|        |      ;  
  db $2E                               ;16DFAF|        |      ;  
  db $01                               ;16DFB0|        |      ;  
  db $00                               ;16DFB1|        |      ;  
  db $3E                               ;16DFB2|        |      ;  

  db $00                               ;16DFB3|        |      ;  
  db $23                               ;16DFB4|        |      ;  
  db $01                               ;16DFB5|        |      ;  
  db $28                               ;16DFB6|        |      ;  
  db $3E                               ;16DFB7|        |      ;  

  db $00                               ;16DFB8|        |      ;  
  db $1B                               ;16DFB9|        |      ;  
  db $01                               ;16DFBA|        |      ;  
  db $00                               ;16DFBB|        |      ;  
  db $3E                               ;16DFBC|        |      ;  

  db $00                               ;16DFBD|        |      ;  
  db $15                               ;16DFBE|        |      ;  
  db $01                               ;16DFBF|        |      ;  
  db $60                               ;16DFC0|        |      ;  
  db $3E                               ;16DFC1|        |      ;  

  db $00                               ;16DFC2|        |      ;  
  db $10                               ;16DFC3|        |      ;  
  db $01                               ;16DFC4|        |      ;  
  db $20                               ;16DFC5|        |      ;  
  db $3E                               ;16DFC6|        |      ;  

  db $00                               ;16DFC7|        |      ;  
  db $09                               ;16DFC8|        |      ;  
  db $01                               ;16DFC9|        |      ;  
  db $0E                               ;16DFCA|        |      ;  
  db $3E                               ;16DFCB|        |      ;  

  db $00                               ;16DFCC|        |      ;  
  db $01                               ;16DFCD|        |      ;  
  db $01                               ;16DFCE|        |      ;  
  db $44                               ;16DFCF|        |      ;  
  db $3E                               ;16DFD0|        |      ;  

  db $00                               ;16DFD1|        |      ;  
  db $FC                               ;16DFD2|        |      ;  
  db $01                               ;16DFD3|        |      ;  
  db $20                               ;16DFD4|        |      ;  
  db $3E                               ;16DFD5|        |      ;  

  db $00                               ;16DFD6|        |      ;  
  db $ED                               ;16DFD7|        |      ;  
  db $01                               ;16DFD8|        |      ;  
  db $08                               ;16DFD9|        |      ;  
  db $3E                               ;16DFDA|        |      ;  

  db $00                               ;16DFDB|        |      ;  
  db $E8                               ;16DFDC|        |      ;  
  db $01                               ;16DFDD|        |      ;  
  db $20                               ;16DFDE|        |      ;  
  db $3E                               ;16DFDF|        |      ;  

  db $00                               ;16DFE0|        |      ;  
  db $E1                               ;16DFE1|        |      ;  
  db $01                               ;16DFE2|        |      ;  
  db $0E                               ;16DFE3|        |      ;  
  db $3E                               ;16DFE4|        |      ;  

  db $00                               ;16DFE5|        |      ;  
  db $D9                               ;16DFE6|        |      ;  
  db $01                               ;16DFE7|        |      ;  
  db $44                               ;16DFE8|        |      ;  
  db $3E                               ;16DFE9|        |      ;  

  db $00                               ;16DFEA|        |      ;  
  db $D1                               ;16DFEB|        |      ;  
  db $01                               ;16DFEC|        |      ;  
  db $2C                               ;16DFED|        |      ;  
  db $3E                               ;16DFEE|        |      ;  

  db $02                               ;16DFEF|        |      ;  
  db $CA                               ;16DFF0|        |      ;  
  db $01                               ;16DFF1|        |      ;  
  db $60                               ;16DFF2|        |      ;  
  db $3E                               ;16DFF3|        |      ;  

org $16DFF4 : Credits_Text_1F:  ; Hideyuki Katou
org $16E035 : Credits_Text_20:  ; Atsushi Kakuta
org $16E076 : Credits_Text_21:  ; Teacorp
org $16E099 : Credits_Text_22:  ; Hotishi Kikkawa
org $16E0DF : Credits_Text_23:  ; Unused (Executive Producer Tsuyoshi Ikeda)
org $16E175 : Credits_Text_24:  ; Unused (PRODUCER MIKIO IKEDA)
org $16E1CF : Credits_Text_25:  ; Unused (DIRECTORS SDF @" HASHIGUCHI  MAT SUTAKE)
org $16E26A : Credits_Text_26:  ; Shigenobu Kasai
org $16E2B0 : Credits_Text_27:  ; Unused (Main Programmer Ryu Kuraoka)
org $16E323 : Credits_Text_28:  ; GSX Suga
org $16E346 : Credits_Text_29:  ; Unused (Music Director Jun Ishikawa)
org $16E3B9 : Credits_Text_2A:  ; Unused (Music Composers Jun Ishikawa Hirokazu Ando)
org $16E46D : Credits_Text_2B:  ; Ottosei
org $16E490 : Credits_Text_2C:  ; Unused (Message Coordinator Abeshi)
org $16E503 : Credits_Text_2D:  ; Unused (Debug Director /KOBY/)
org $16E54E : Credits_Text_2E:  ; Unused (Technical Adviser Satoru Iwata)
org $16E5D5 : Credits_Text_2F:  ; Unused (Main Advertiser Yoshie Ishiyama)
org $16E661 : Credits_Text_30:  ; Kenichi Nakajima
org $16E6AC : Credits_Text_31:  ; Satoshi Ishida
org $16E6ED : Credits_Text_32:  ; Unused (Tetsuya Notoya  Teacorp)
org $16E751 : Credits_Text_33:  ; Jichan
org $16E770 : Credits_Text_34:  ; Unused (Executive Producer Tsuyoshi Ikeda)
org $16E805 : Credits_Text_35:  ; Unused (Producer Mikio Ikeda)
org $16E85F : Credits_Text_36:  ; Unused (Directors SDF Hashiguchi Mat Sutake)
org $16E8FA : Credits_Text_37:  ; Unused (Script Writers SDF Hashiguchi Shigenobu Kasai)
org $16E9C2 : Credits_Text_38:  ; Unused (Main Programmer Ryu Kuraoka)
org $16EA35 : Credits_Text_39:  ; Miya Aoki

; Repurposed
;org $16EA5D : Credits_Text_3A:  ; Unused (Music Director Jun Ishikawa)
;org $16EAD0 : Credits_Text_3B:  ; Unused (Music Composers Jun Ishikawa Hirokazu Ando)
;org $16EB84 : Credits_Text_3C:  ; Unused (Message Programers Yhan Debu  Ottosei)
;org $16EC1F : Credits_Text_3D:  ; Unused (Message Coordinator Abeshi)
org $16EC92 : Credits_Text_3E:  ; Unused (Debug Director /KOBY/)
org $16ECDD : Credits_Text_3F:  ; Unused (Technical Adviser Satoru Iwata)
org $16ED64 : Credits_Text_40:  ; Unused (Main Advertiser Yoshie Ishiyama)

org $16EDF0 : Credits_Text_41:  ; Masahiro Sakurai
org $16EE3B : Credits_Text_42:  ; Ami Hashikura
org $16EE77 : Credits_Text_43:  ; Unused (Tetsuya Notoya  Teacorp)

org $16EEDB : Credits_Text_44:  ; ~THE END~
!TheEnd = $3A
;$3C = Default green
;$38 = Yellow + blue border
;$3A = Light blue + blue border
  db $00                     ;16EEDB|        |      ;
  db $20                     ;16EEDC|        |      ;  
  db $00                     ;16EEDD|        |      ;  
  db $CA                     ;16EEDE|        |      ;  
  db !TheEnd                 ;16EEDF|        |      ;  
  
  db $00                     ;16EEE0|        |      ;  
  db $10                     ;16EEE1|        |      ;  
  db $00                     ;16EEE2|        |      ;  
  db $C8                     ;16EEE3|        |      ;  
  db !TheEnd                 ;16EEE4|        |      ;  
  
  db $00                     ;16EEE5|        |      ;  
  db $00                     ;16EEE6|        |      ;  
  db $00                     ;16EEE7|        |      ;  
  db $C6                     ;16EEE8|        |      ;  
  db !TheEnd                 ;16EEE9|        |      ;  
  
  db $00                     ;16EEEA|        |      ;  
  db $F0                     ;16EEEB|        |      ;  
  db $00                     ;16EEEC|        |      ;  
  db $C4                     ;16EEED|        |      ;  
  db !TheEnd                 ;16EEEE|        |      ;  
  
  db $00                     ;16EEEF|        |      ;  
  db $E0                     ;16EEF0|        |      ;  
  db $00                     ;16EEF1|        |      ;  
  db $C2                     ;16EEF2|        |      ;  
  db !TheEnd                 ;16EEF3|        |      ;  
  
  db $00                     ;16EEF4|        |      ;  
  db $D0                     ;16EEF5|        |      ;  
  db $00                     ;16EEF6|        |      ;  
  db $C0                     ;16EEF7|        |      ;  
  db !TheEnd                 ;16EEF8|        |      ;  
  
  db $00                     ;16EEF9|        |      ;  
  db $20                     ;16EEFA|        |      ;  
  db $F0                     ;16EEFB|        |      ;  
  db $AA                     ;16EEFC|        |      ;  
  db !TheEnd                 ;16EEFD|        |      ;  
  
  db $00                     ;16EEFE|        |      ;  
  db $10                     ;16EEFF|        |      ;  
  db $F0                     ;16EF00|        |      ;  
  db $A8                     ;16EF01|        |      ;  
  db !TheEnd                 ;16EF02|        |      ;  
  
  db $00                     ;16EF03|        |      ;  
  db $00                     ;16EF04|        |      ;  
  db $F0                     ;16EF05|        |      ;  
  db $A6                     ;16EF06|        |      ;  
  db !TheEnd                 ;16EF07|        |      ;  
  
  db $00                     ;16EF08|        |      ;  
  db $F0                     ;16EF09|        |      ;  
  db $F0                     ;16EF0A|        |      ;  
  db $A4                     ;16EF0B|        |      ;  
  db !TheEnd                 ;16EF0C|        |      ;  
  
  db $00                     ;16EF0D|        |      ;  
  db $E0                     ;16EF0E|        |      ;  
  db $F0                     ;16EF0F|        |      ;  
  db $A2                     ;16EF10|        |      ;  
  db !TheEnd                 ;16EF11|        |      ;  
  
  db $02                     ;16EF12|        |      ;  
  db $D0                     ;16EF13|        |      ;  
  db $F0                     ;16EF14|        |      ;  
  db $A0                     ;16EF15|        |      ;  
  db !TheEnd                 ;16EF16|        |      ;  

    Tbl_Credits_Tiles: dw Credits_Text_00         ;16EF17|        |16D883;  
                       dw Credits_Text_01         ;16EF19|        |16D8D8;  
                       dw Credits_Text_02         ;16EF1B|        |16D92D;  
                       dw Credits_Text_03         ;16EF1D|        |16D955;  
                       dw Credits_Text_04         ;16EF1F|        |16D97D;  
                       dw Credits_Text_05         ;16EF21|        |16D9B9;  
                       dw Credits_Text_06         ;16EF23|        |16D9FA;  
                       dw Credits_Text_07         ;16EF25|        |16DA27;  
                       dw Credits_Text_08         ;16EF27|        |16DA63;  
                       dw Credits_Text_09         ;16EF29|        |16DAA4;  
                       dw Credits_Text_0A         ;16EF2B|        |16DAF4;  
                       dw Credits_Text_0B         ;16EF2D|        |16DB67;  
                       dw Credits_Text_0C         ;16EF2F|        |16DBA3;  
                       dw Credits_Text_0D         ;16EF31|        |16DBF3;  
                       dw Credits_Text_0E         ;16EF33|        |16DC39;  
                       dw Credits_Text_0F         ;16EF35|        |16DC84;  
                       dw Credits_Text_10         ;16EF37|        |16DCB1;  
                       dw Credits_Text_11         ;16EF39|        |16DCF2;  
                       dw Credits_Text_12         ;16EF3B|        |16DD1A;  
                       dw Credits_Text_13         ;16EF3D|        |16DD5B;  
                       dw Credits_Text_14         ;16EF3F|        |16DD8D;  
                       dw Credits_Text_15         ;16EF41|        |16DDBA;  
                       dw Credits_Text_16         ;16EF43|        |16DE00;  
                       dw Credits_Text_17         ;16EF45|        |16DE32;  
                       dw Credits_Text_18         ;16EF47|        |16DE5A;  
                       dw Credits_Text_19         ;16EF49|        |16DE91;  
                       dw Credits_Text_1A         ;16EF4B|        |16DECD;  
                       dw Credits_Text_1B         ;16EF4D|        |16DEF5;  
                       dw Credits_Text_1C         ;16EF4F|        |16DF68;  
                       dw Credits_Text_1D         ;16EF51|        |16DF77;  
                       dw Credits_Text_1E         ;16EF53|        |16DFAE;  
                       dw Credits_Text_1F         ;16EF55|        |16DFF4;  
                       dw Credits_Text_20         ;16EF57|        |16E035;  
                       dw Credits_Text_21         ;16EF59|        |16E076;  
                       dw Credits_Text_22         ;16EF5B|        |16E099;  
                       dw Credits_Text_23         ;16EF5D|        |16E0DF;  
                       dw Credits_Text_24         ;16EF5F|        |16E175;  
                       dw Credits_Text_25         ;16EF61|        |16E1CF;  
                       dw Credits_Text_26         ;16EF63|        |16E26A;  
                       dw Credits_Text_27         ;16EF65|        |16E2B0;  
                       dw Credits_Text_28         ;16EF67|        |16E323;  
                       dw Credits_Text_29         ;16EF69|        |16E346;  
                       dw Credits_Text_2A         ;16EF6B|        |16E3B9;  
                       dw Credits_Text_2B         ;16EF6D|        |16E46D;  
                       dw Credits_Text_2C         ;16EF6F|        |16E490;  
                       dw Credits_Text_2D         ;16EF71|        |16E503;  
                       dw Credits_Text_2E         ;16EF73|        |16E54E;  
                       dw Credits_Text_2F         ;16EF75|        |16E5D5;  
                       dw Credits_Text_30         ;16EF77|        |16E661;  
                       dw Credits_Text_31         ;16EF79|        |16E6AC;  
                       dw Credits_Text_32         ;16EF7B|        |16E6ED;  
                       dw Credits_Text_33         ;16EF7D|        |16E751;  
                       dw Credits_Text_34         ;16EF7F|        |16E76F;  
                       dw Credits_Text_35         ;16EF81|        |16E805;  
                       dw Credits_Text_36         ;16EF83|        |16E85F;  
                       dw Credits_Text_37         ;16EF85|        |16E8FA;  
                       dw Credits_Text_38         ;16EF87|        |16E9C2;  
                       dw Credits_Text_39         ;16EF89|        |16EA35;  
                       dw Credits_Text_3A         ;16EF8B|        |16EA5D;  
                       dw Credits_Text_3B         ;16EF8D|        |16EAD0;  
                       dw Credits_Text_3C         ;16EF8F|        |16EB84;  
                       dw Credits_Text_3D         ;16EF91|        |16EC1F;  
                       dw Credits_Text_3E         ;16EF93|        |16EC92;  
                       dw Credits_Text_3F         ;16EF95|        |16ECDD;  
                       dw Credits_Text_40         ;16EF97|        |16ED64;  
                       dw Credits_Text_41         ;16EF99|        |16EDF0;  
                       dw Credits_Text_42         ;16EF9B|        |16EE3B;  
                       dw Credits_Text_43         ;16EF9D|        |16EE77;  
                       dw Credits_Text_44         ;16EF9F|        |16EEDB;  

