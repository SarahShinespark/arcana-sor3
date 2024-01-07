;Text before the title screen
;Text after New Game
;New Chapter splash screens text


org $9780DB : dl Opening_crawl
org $9780F1 : dl Opening_crawl2
org $978640 : dl Ten_years

org $97812B
Opening_crawl:
  db $06,$0D      ;White text
  db $0C          ;Reset stuff
  db $01,$00,$06  ;Cursor to top left
  db $03,$0E      ;Normal vertical spacing
  db $05,$01,$04  ;Medium text speed
  db "There was once a sacred land.", $0D
  db "A land where many legends and", $0D
  db "myths have been passed down", $0D
  db "since ancient times. Many", $0D
  db "visited that land to achieve", $0D
  db "their dreams. Some brought", $0D
  db "blood-lust... others searched", $0D
  db "for fame. "
  db $1B, $01, $FF, $00

;org $97822B
Opening_crawl2:
  db "While some dreams",$0D
  db "came true, others perished", $0D
  db "in the fields.",$0D
  db "People call that land Elemen."
  db $1B, $01, $FF, $00
warnpc $97826D


org $978726
Tbl_Intro_Crawl:
  dw Intro_crawl_1                     ;178726|        |17874E;  
  dw Intro_crawl_2                     ;178728|        |1787BC;  
  dw Intro_crawl_3                     ;17872A|        |17887E;  
  dw Intro_crawl_4                     ;17872C|        |1788E3;  
  dw Intro_crawl_5                     ;17872E|        |1789D7;  
  dw Intro_crawl_6                     ;178730|        |1789DA;  
  dw Intro_crawl_7                     ;178732|        |178A6D;  

org $97874E
Intro_crawl_1:
  db $06,$0D      ;White text
  db $0C          ;Reset stuff
  db $01,$00,$00  ;Cursor to top left
  db $03,$0E      ;Normal vertical spacing
  db $05,$01,$04  ;Medium text speed
  db "According to the ancient legends,",$0D
  db "heroes founded six kingdoms on",$0D
  db "the island of Elemen"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $7F          ;Pause
  db $00

;org $9787BC
Intro_crawl_2:
  db $05,$01,$04  ;Medium text speed
  db $0D          ;Newline
  db "Conflicts between kingdoms repeated",$0D
  db "countless times, but from the",$0D
  db "perspective of Elemen's long history,",$0D
  db "they were only recorded as trivial",$0D
  db "matters by the locals"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $7F          ;Pause
  db $00

;org $97887E
Intro_crawl_3:
  db $05,$01,$04  ;Medium text speed
  db $0D          ;Newline
  db "However, these petty grudges",$0D
  db "eventually turned into a storm",$0D
  db "that ravaged the land"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $7F          ;Pause
  db $00

;org $9788E3
Intro_crawl_4:
  db $05,$01,$04  ;Medium text speed
  db $0D          ;Newline
  db "Before anyone knew it, the warring",$0D
  db "spread across the island, and the six",$0D
  db "countries continued to fight each other",$0D
  db "for supremacy over Elemen"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $0D          ;Newline
  db $05,$01,$04  ;Medium text speed
  db "Many years passed since then.",$0D
  db "The land was devastated, the cities",$0D
  db "were turned to ruins, and much blood",$0D
  db "was shed upon the earth"
  db $05,$01,$F0  ;Extremely slow text speed
  db "."
  db $7F          ;Pause
  db $00

;org $9789D7
Intro_crawl_5:
  db $0C          ;Reset stuff
  db $7F          ;Pause
  db $00

;org $9789DA
Intro_crawl_6:
;Byzantium, the royal capital of the Kingdom of Rexfert.
;In this most prosperous city on Elemene Island, the court magician Garner suddenly rebelled against King Wagner.
  db $06,$0D      ;White text
  db $0C          ;Reset stuff
  db $01,$00,$00  ;Cursor to top left
  db $03,$0E      ;Normal vertical spacing
  db $05,$01,$03  ;Medium text speed 04
  db "Bizance was the royal capital of the",$0D
  db "Kingdom of Lexford and most",$0D
  db "prosperous city in all of Elemen"
  db $05,$01,$24,".",$0D,$05,$01,$03
  db "Galneon, the court magician, suddenly",$0D
  db "rebelled against King Wagnall"
  db $05,$01,$50  ;Very slow text speed 78
  db "."
  db $7F          ;Pause
  db $00

;org $978A6D
Intro_crawl_7:
;King Wagner died in the battle. And Garnaire took the throne.
;Also, King Wagner's two daughters remain missing during the rebellion.
  db $05,$01,$03  ;Medium text speed 04
  db $0D          ;Newline
  db "King Wagnall died in battle, and",$0D
  db "evil Galneon succeeded the throne"
  db $05,$01,$C8,".",$0D,$05,$01,$03
  db "Also, the king's two daughters",$0D
  db "have been missing since the coup"
  db $05,$01,$3C  ;Sloww text speed
  db "..."
  db $7F          ;Pause
  db $00

;warnpc $978B27
;org $978B27
Ten_years:
  db $06,$0D      ;White text
  db $0C          ;Reset stuff
  db $01,$00,$00  ;Cursor to top left
  db $03,$0E      ;Normal vertical spacing
  db $1C          ;Text appears immediately
  db $08,$14,"This was about",$0D
  db $08,$2A,"10 years ago."
  db $00
warnpc $978B5C
padbyte $FF
pad $978B5C


org $9790AC
Tbl_Splash_screens:
  dw Ch1_Splash                        ;1790AC|        |1790B6;  
  dw Ch2_Splash                        ;1790AE|        |1790E3;  
  dw Ch3_Splash                        ;1790B0|        |179111;  
  dw Ch4_Splash                        ;1790B2|        |179139;  
  dw Ch5_Splash                        ;1790B4|        |179164;  

org $9790B6
Ch1_Splash:
  db $0C, $1C
  db $08,$23,"Chapter 1", $0D, $0D
  db "   The Journey Begins", $00

;org $9790E3
Ch2_Splash:
  db $0C, $1C
  db $08,$23,"Chapter 2", $0D, $0D
  db "      Reinoll the Sage", $00

;org $979111
Ch3_Splash:
  db $0C, $1C
  db $08,$23,"Chapter 3", $0D, $0D
  db "           Rescue", $00

;org $979139
Ch4_Splash:
  db $0C, $1C
  db $08,$23,"Chapter 4", $0D, $0D
  db "   The Seal of Rimsala", $00

;org $979164
Ch5_Splash:
  db $0C, $1C
  db $08,$23,"Chapter 5", $0D, $0D
  db "         Toward a",$0D
  db "     Bright New Era", $00

warnpc $97918E
