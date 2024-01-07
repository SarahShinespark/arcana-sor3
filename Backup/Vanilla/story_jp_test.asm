org $0CF235
  JP_CLEAR: db $06,$0D
            db $0C
            db $01,$00,$06
            db $03,$0E
            db $00

MACRO_JP_119: db $05,$FF,$14
            db $0C
            db $0D
            db $01,$00,$06
            db $05,$01,$02
            db $00

MACRO_JP_120: db $05,$FF,$14
            db $0C
            db $0D
            db $01,$00,$06
            db $05,$01,$02
            db $00

PROMPT_JP_ROOKS: db $05,$FF,$14
              db $0C
              db $0D
              db $01,$00,$06
              db "ルークス"
              db $05,$01,$02
              db $0D
              db $00

DISPLAY_JP_ALAN: db $1B,$00,$01
               db $05,$FF,$14
               db $0C
               db $0D
               db $01,$00,$06
               db "アラン"
               db $05,$01,$02
               db $0D
               db $1B,$00,$00
               db $00
