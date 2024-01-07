;Text before the title screen
;Text after New Game
;New Chapter splash screens text


org $1780DB : dl Opening_crawl
org $1780F1 : dl Opening_crawl2

org $17812B
Opening_crawl:
  db $06,$0D      ;White text
  db $0C          ;Reset stuff
  db $01,$00,$06  ;Cursor to top left
  db $03,$0E      ;Normal vertical spacing
  db $05,$01,$04  ;Medium text speed
  db "This is an historic land. A land", $0D
  db "where, from time immemorial,", $0D
  db "ancient legends have been", $0D
  db "passed down from generation", $0D
  db "to generation. Some, in order", $0D
  db "to gain fame and fortune, have", $0D
  db "visited this land to fulfill their", $0D
  db "dreams. A few realized their", $0D
  db $1B, $01, $FF, $00

org $17822B
Opening_crawl2:
  db "ambitions. . . most were ruined.", $0D
  db "People call this land Elemen."
  db $1B, $01, $FF, $00
warnpc $17826D


org $178726
Tbl_Intro_Crawl:
  dw Intro_crawl_1                     ;178726|        |17874E;  
  dw Intro_crawl_2                     ;178728|        |1787BC;  
  dw Intro_crawl_3                     ;17872A|        |17887E;  
  dw Intro_crawl_4                     ;17872C|        |1788E3;  
  dw Intro_crawl_5                     ;17872E|        |1789D7;  
  dw Intro_crawl_6                     ;178730|        |1789DA;  
  dw Intro_crawl_7                     ;178732|        |178A6D;  

org $17874E
Intro_crawl_1:
  db $06,$0D      ;White text
  db $0C          ;Reset stuff
  db $01,$00,$00  ;Cursor to top left
  db $03,$0E      ;Normal vertical spacing
  db $05,$01,$04  ;Medium text speed
  db "According to the ancient legends,",$0D
  db "men of valor established 6 kingdoms on",$0D
  db "the island of Elemen"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $7F          ;Pause
  db $00

org $1787BC
Intro_crawl_2:
  db $05,$01,$04  ;Medium text speed
  db $0D          ;Newline
  db "Disputes broke out constantly among",$0D
  db "these six kingdoms, but, if you look at",$0D
  db "the history of the land, you can see",$0D
  db "that they were treated as minor",$0D
  db "matters by the people of these",$0D
  db "kingdoms"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $7F          ;Pause
  db $00

org $17887E
Intro_crawl_3:
  db $05,$01,$04  ;Medium text speed
  db $0D          ;Newline
  db "But in time these seemingly minor",$0D
  db "disputes spilled over and became as",$0D
  db "a storm over the land"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $7F          ;Pause
  db $00

org $1788E3
Intro_crawl_4:
  db $05,$01,$04  ;Medium text speed
  db $0D          ;Newline
  db "Eventually the conflict spread out over",$0D
  db "the whole island, with each of the six",$0D
  db "kingdoms fighting for control of the",$0D
  db "island"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $0D          ;Newline
  db $05,$01,$04  ;Medium text speed
  db "This continued on for many years.",$0D
  db "The cities were turned to ruins, and",$0D
  db "the countryside was laid to waste"
  db $05,$01,$F0  ;Extremely slow text speed
  db "."
  db $7F          ;Pause
  db $00

org $1789D7
Intro_crawl_5:
  db $0C          ;Reset stuff
  db $7F          ;Pause
  db $00

org $1789DA
Intro_crawl_6:
  db $06,$0D      ;White text
  db $0C          ;Reset stuff
  db $01,$00,$00  ;Cursor to top left
  db $03,$0E      ;Normal vertical spacing
  db $05,$01,$04  ;Medium text speed
  db "Bizance was the capital and the largest",$0D
  db "city in Lexford. Galneon, one of the",$0D
  db "court magicians, launched a coup",$0D
  db "against King Wagnall"
  db $05,$01,$78  ;Very slow text speed
  db "."
  db $7F          ;Pause
  db $00

org $178A6D
Intro_crawl_7:
  db $05,$01,$04  ;Medium text speed
  db $0D          ;Newline
  db "King Wagnall was killed in the conflict,",$0D
  db "and the evil Galneon ascended to the",$0D
  db "throne. In the conflict the King's two",$0D
  db "daughters disappeared. Their where_",$0D
  db "abouts is still unknown"
  db $05,$01,$3C  ;Sloww text speed
  db "."
  db $7F          ;Pause
  db $00

org $178B27
Ten_years:
  db $06,$0D      ;White text
  db $0C          ;Reset stuff
  db $01,$00,$00  ;Cursor to top left
  db $03,$0E      ;Normal vertical spacing
  db $1C          ;Text appears immediately
  db $08,$14      ;X position 14
  db "Ten years have passed",$0D
  db $08,$14      ;X position 14
  db "since this event."
  db $00
warnpc $178B5C


org $1790AC
Tbl_Splash_screens:
  dw Ch1_Splash                        ;1790AC|        |1790B6;  
  dw Ch2_Splash                        ;1790AE|        |1790E3;  
  dw Ch3_Splash                        ;1790B0|        |179111;  
  dw Ch4_Splash                        ;1790B2|        |179139;  
  dw Ch5_Splash                        ;1790B4|        |179164;  

org $1790B6
Ch1_Splash:
  db $0C, $1C
  db "         Chapter 1", $0D, $0D
  db "    The Journey Begins", $00

org $1790E3
Ch2_Splash:
  db $0C, $1C
  db "         Chapter 2", $0D, $0D
  db "      Reinoll the Elder", $00

org $179111
Ch3_Splash:
  db $0C, $1C
  db "         Chapter 3", $0D, $0D
  db "           Rescue", $00

org $179139
Ch4_Splash:
  db $0C, $1C
  db "         Chapter 4", $0D, $0D
  db "       Confrontation", $00

org $179164
Ch5_Splash:
  db $0C, $1C
  db "         Chapter 5", $0D, $0D
  db "          Salvation", $00

warnpc $17918E
