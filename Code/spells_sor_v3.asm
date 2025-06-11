
org $85C8D3 : Tbl_Spell_IDs_Rooks:
   db $00,$21,$38,$4B,$34,$4D,$4C,$22   ;85C8D3|        |      ;
   db $31,$3D,$18,$1B,$1A,$19           ;85C8DB|        |      ;
 
org $85C8E1 : Tbl_Spell_IDs_Sylph:
   db $00,$43,$01,$3F,$02,$28,$03,$25   ;85C8E1|        |      ;
 
org $85C8E9 : Tbl_Spell_IDs_Dao:
   db $00,$44,$04,$40,$05,$29,$06,$26   ;85C8E9|        |      ;

org $85C8F1 : Tbl_Spell_IDs_Marid:
   db $00,$45,$07,$41,$08,$1E,$2B,$09   ;85C8F1|        |      ;
   db $49                               ;85C8F9|        |      ;

org $85C8FA : Tbl_Spell_IDs_Ifrit:
   db $00,$46,$0A,$42,$0B,$1F,$2C,$0C   ;85C8FA|        |      ;
   db $27                               ;85C902|        |      ;

org $85C903 : Tbl_Spell_IDs_Teefa:
   db $00,$20,$2D,$3E,$0D,$0E,$11,$24   ;85C903|        |      ;
   db $15,$21,$39,$16,$17               ;85C90B|        |      ;

org $85C910 : Tbl_Spell_IDs_Sarah:
   db $00,$20,$0F,$12,$3E,$35,$10,$21   ;85C910|        |      ;
   db $37,$33,$39,$23,$14,$13           ;85C918|        |      ;

org $85C91E : Tbl_Spell_IDs_Arwin:
   db $00,$20,$0E,$30,$32,$11,$35,$39   ;85C91E|        |      ;
   db $36,$13                           ;85C926|        |      ;

org $85C928 : Tbl_Spell_IDs_Axs:
   db $00,$32,$20,$3E,$30               ;85C928|        |      ;


; Battle only:2, out of battle:1, everywhere:3
org $85EA4C : Tbl_Spell_Use_flag:
   db $00,$02,$02,$02,$02,$02,$02,$02   ;85EA4C|        |      ; ---- Lit1 Lit2 Lit3 Sma1 Sma2 Sma3 Wtr1
   db $02,$02,$02,$02,$02,$02,$02,$02   ;85EA54|        |      ; Wtr2 Wtr3 Flm1 Flm2 Flm3 Atr1 Atr2 Atr3
   db $02,$02,$02,$02,$02,$02,$02,$02   ;85EA5C|        |      ; Atr4 Atr5 Atr6 Atr7 Atr8 Atr9 AtrA AtrB
   db $02,$02,$02,$02,$02,$02,$02,$02   ;85EA64|        |      ; CWnd CErt CWtr CFir Dran Psyc HPRA HPR 
   db $03,$03,$03,$03,$03,$02,$02,$02   ;85EA6C|        |      ; Hel1 Hel2 Hel3 HeA1 HeA2 Chao Ento Dest
   db $02,$02,$02,$02,$02,$02,$02,$02   ;85EA74|        |      ; ParA PtrA StpA SlpA CnfA Para Petr Stop
   db $02,$02,$02,$02,$02,$02,$02,$02   ;85EA7C|        |      ; Slep Conf AvD  AvDA DfD  DfDA AcD  AcDA
   db $02,$02,$02,$02,$02,$02,$02,$02   ;85EA84|        |      ; AtD  AtDA Req  Repo Hevn RMis Flee AvUA
   db $02,$02,$02,$02,$02,$02,$02,$02   ;85EA8C|        |      ; DfUA AcUA AtUA CAWi CAEa CAWa CAFi Repl
   db $02,$03,$03,$03,$03,$01,$01,$01   ;85EA94|        |      ; Mirr APur APar APet Rest Home WayP WaPW
   db $01,$01                           ;85EA9C|        |      ; Req2 FRp2
 
; AOE: 01, Single target: 00
org $85EA9E : Tbl_Spell_Targeting_flag:
   db $00,$01,$01,$01,$01,$01,$01,$01   ;85EA9E|        |      ; ---- Lit1 Lit2 Lit3 Sma1 Sma2 Sma3 Wtr1
   db $01,$01,$01,$01,$01,$00,$01,$01   ;85EAA6|        |      ; Wtr2 Wtr3 Flm1 Flm2 Flm3 Atr1 Atr2 Atr3
   db $00,$00,$01,$01,$00,$01,$00,$01   ;85EAAE|        |      ; Atr4 Atr5 Atr6 Atr7 Atr8 Atr9 AtrA AtrB
   db $01,$01,$01,$01,$00,$00,$01,$00   ;85EAB6|        |      ; CWnd CErt CWtr CFir Dran Psyc HPRA HPR 
   db $00,$00,$00,$01,$01,$01,$01,$01   ;85EABE|        |      ; Hel1 Hel2 Hel3 HeA1 HeA2 Chao Ento Dest
   db $01,$01,$01,$01,$01,$00,$00,$00   ;85EAC6|        |      ; ParA PtrA StpA SlpA CnfA Para Petr Stop
   db $00,$00,$00,$01,$00,$01,$00,$01   ;85EACE|        |      ; Slep Conf AvD  AvDA DfD  DfDA AcD  AcDA
   db $00,$01,$00,$01,$01,$01,$01,$01   ;85EAD6|        |      ; AtD  AtDA Req  Repo Hevn RMis Flee AvUA
   db $01,$01,$01,$01,$01,$01,$01,$00   ;85EADE|        |      ; DfUA AcUA AtUA CAWi CAEa CAWa CAFi Repl
   db $00,$01,$00,$00,$00,$01,$01,$01   ;85EAE6|        |      ; Mirr APur APar APet Rest Home WayP WaPW
   db $01,$01                           ;85EAEE|        |      ; Req2 FRp2

; Lit1-3 $CD -> CD, E6, FA
; Sma1-3 $FA -> CD, E6, FA
; Wtr1-3 $CD -> CD, E6, FA
; Flm1-3 $CD -> CD, E6, FA 
; ParaA $59->6F, SlepA $59->$79, CnfA $59->$80
org $85EAF0 : Tbl_Spell_Accuracy:
   db $00,$CD,$E6,$FA,$CD,$E6,$FA,$CD   ;85EAF0|        |      ; ---- Lit1 Lit2 Lit3 Sma1 Sma2 Sma3 Wtr1
   db $E6,$FA,$CD,$E6,$FA,$FA,$F8,$F8   ;85EAF8|        |      ; Wtr2 Wtr3 Flm1 Flm2 Flm3 Atr1 Atr2 Atr3
   db $FA,$FA,$F0,$F0,$FA,$EA,$FA,$DA   ;85EB00|        |      ; Atr4 Atr5 Atr6 Atr7 Atr8 Atr9 AtrA AtrB
   db $FD,$FD,$FD,$FD,$DA,$E6,$00,$00   ;85EB08|        |      ; CWnd CErt CWtr CFir Drai Psyc HPRA HPR 
   db $00,$00,$00,$00,$00,$59,$59,$59   ;85EB10|        |      ; Hel1 Hel2 Hel3 HeA1 HeA2 Chao Ento Deth
   db $6F,$59,$59,$79,$80,$A6,$80,$DA   ;85EB18|        |      ; ParA PtrA StpA SlpA CnfA Para Petr Stop
   db $B3,$B2,$DA,$DA,$DA,$DA,$DA,$DA   ;85EB20|        |      ; Slep Conf AvD  AvDA DfD  DfDA AcD  AcDA
   db $DA,$DA,$9A,$9A,$80,$00,$00,$00   ;85EB28|        |      ; AtD  AtDA Req  Repo Hevn RMis Flee AvUA
   db $00,$00,$00,$00,$00,$00,$00,$00   ;85EB30|        |      ; DfUA AcUA AtUA CAWi CAEa CAWa CAFi Rpel
   db $00,$00,$00,$00,$00,$00,$00,$00   ;85EB38|        |      ; Mirr APur APar APet Rest Home WayP WaPW
   db $00,$00,$00,$00,$00,$00,$00,$00   ;85EB40|        |      ; Req2 FRp2 ---- ---- ---- ---- ---- ----
   db $00,$F0,$F0                       ;85EB48|        |      ; ---- Fai1 Fai2
 
org $85EB4B : Tbl_Spell_Power:
   dw $0000,$000A,$0028,$005A           ;85EB4B|        |      ; ---- Lit1 Lit2 Lit3
   dw $000A,$0028,$005A,$000A           ;85EB53|        |      ; Sma1 Sma2 Sma3 Wtr1
   dw $0028,$005A,$000A,$0028           ;85EB5B|        |      ; Wtr2 Wtr3 Flm1 Flm2
   dw $005A,$001E,$0028,$003C           ;85EB63|        |      ; Flm3 Atr1 Atr2 Atr3
   dw $0041,$004B,$0046,$0073           ;85EB6B|        |      ; Atr4 Atr5 Atr6 Atr7
   dw $0064,$006E,$0078,$00C8           ;85EB73|        |      ; Atr8 Atr9 AtrA AtrB
   dw $00B4,$00B4,$00B4,$00B4           ;85EB7B|        |      ; CWnd CErt CWtr CFir
   dw $0000,$0000,$003C,$0064           ;85EB83|        |      ; Drai Psyc HPRA HPR 
   dw $0050,$00B4,$03E7,$0050           ;85EB8B|        |      ; Hel1 Hel2 Hel3 HeA1
   dw $0078,$0000,$0000,$0000           ;85EB93|        |      ; HeA2 Chao Ento Deth
   dw $0003,$0004,$0005,$0002           ;85EB9B|        |      ; ParA PtrA StpA SlpA
   dw $0001,$0003,$0004,$0005           ;85EBA3|        |      ; CnfA Para Petr Stop
   dw $0002,$0001,$12E7,$12E7           ;85EBAB|        |      ; Slep Conf AvD  AvDA
   dw $12EF,$12EF,$12E3,$12E3           ;85EBB3|        |      ; DfD  DfDA AcD  AcDA
   dw $12EB,$12EB,$0000,$0000           ;85EBBB|        |      ; AtD  AtDA Req  Repo
   dw $0000,$0000,$0000,$12E7           ;85EBC3|        |      ; Hevn RMis Flee AvUA
   dw $12EF,$12E3,$12EB,$1000           ;85EBCB|        |      ; DfUA AcUA AtUA CAWi
   dw $2000,$4000,$8000,$0000           ;85EBD3|        |      ; CAEa CAWa CAFi Rpel
   dw $0000,$0002,$0003,$0004           ;85EBDB|        |      ; Mirr APur APar APet
   dw $0000,$0000,$0000,$0000           ;85EBE3|        |      ; Rest Home WayP WaPW
   dw $0000,$0000,$0000,$0000           ;85EBEB|        |      ; Req2 FRp2 ---- ----
   dw $0000,$0000,$0000,$0000           ;85EBF3|        |      ; ---- ---- ---- ----
   dw $0000,$0028,$003C                 ;85EBFB|        |      ; ---- Fai1 Fai2
 
; Not entirely sure about this, but it includes the spell element.
org $85EC01 : Tbl_Spell_Affinity:
   dw $0000,$1010,$1010,$1010           ;85EC01|        |      ; ---- Lit1 Lit2 Lit3
   dw $2010,$2010,$2010,$4010           ;85EC09|        |      ; Sma1 Sma2 Sma3 Wtr1
   dw $4010,$4010,$8010,$8010           ;85EC11|        |      ; Wtr2 Wtr3 Flm1 Flm2
   dw $8010,$3010,$5010,$6010           ;85EC19|        |      ; Flm3 Atr1 Atr2 Atr3
   dw $9010,$A010,$C010,$7010           ;85EC21|        |      ; Atr4 Atr5 Atr6 Atr7
   dw $B010,$D010,$E010,$F010           ;85EC29|        |      ; Atr8 Atr9 AtrA AtrB
   dw $1010,$2010,$4010,$8010           ;85EC31|        |      ; CWnd CErt CWtr CFir
   dw $0010,$0010,$0000,$0000           ;85EC39|        |      ; Drai Psyc HPRA HPR 
   dw $0000,$0000,$0000,$0000           ;85EC41|        |      ; Hel1 Hel2 Hel3 HeA1
   dw $0000,$1000,$2000,$8000           ;85EC49|        |      ; HeA2 Chao Ento Deth
   dw $0000,$0000,$0000,$0000           ;85EC51|        |      ; ParA PtrA StpA SlpA
   dw $0000,$0000,$0000,$0000           ;85EC59|        |      ; CnfA Para Petr Stop
   dw $0000,$0000,$0010,$0010           ;85EC61|        |      ; Slep Conf AvD  AvDA
   dw $0010,$0010,$0010,$0010           ;85EC69|        |      ; DfD  DfDA AcD  AcDA
   dw $0010,$0010,$0001,$0001           ;85EC71|        |      ; AtD  AtDA Req  Repo
   dw $0000,$0000,$0000,$0000           ;85EC79|        |      ; Hevn RMis Flee AvUA
   dw $0000,$0000,$0000,$0000           ;85EC81|        |      ; DfUA AcUA AtUA CAWi
   dw $0000,$0000,$0000,$0000           ;85EC89|        |      ; CAEa CAWa CAFi Rpel
   dw $0000,$0000,$0000,$0000           ;85EC91|        |      ; Mirr APur APar APet
   dw $0000,$0000,$0000,$0000           ;85EC99|        |      ; Rest Home WayP WaPW
   dw $0000,$0000                       ;85ECA1|        |      ; Req2 FRp2

;Flee cost adjusted 32->10
org $85ECA5 : Tbl_Spell_MPCost:
   db $00,$08,$0E,$14,$08,$0E,$14,$08   ;85ECA5|        |      ; ---- Lit1 Lit2 Lit3 Sma1 Sma2 Sma3 Wtr1
   db $0E,$14,$08,$0E,$14,$0A,$0F,$14   ;85ECAD|        |      ; Wtr2 Wtr3 Flm1 Flm2 Flm3 Atr1 Atr2 Atr3
   db $0F,$14,$17,$18,$18,$1E,$1E,$28   ;85ECB5|        |      ; Atr4 Atr5 Atr6 Atr7 Atr8 Atr9 AtrA AtrB
   db $28,$28,$28,$28,$01,$00,$1E,$1E   ;85ECBD|        |      ; CWnd CErt CWtr CFir Drai Psyc HPRA HPR 
   db $10,$18,$2A,$14,$28,$19,$19,$19   ;85ECC5|        |      ; Hel1 Hel2 Hel3 HeA1 HeA2 Chao Ento Deth
   db $17,$17,$06,$14,$14,$0D,$0F,$06   ;85ECCD|        |      ; ParA PtrA StpA SlpA CnfA Para Petr Stop
   db $0A,$0A,$04,$07,$04,$07,$04,$07   ;85ECD5|        |      ; Slep Conf AvD  AvDA DfD  DfDA AcD  AcDA
   db $04,$07,$04,$08,$01,$32,$0A,$05   ;85ECDD|        |      ; AtD  AtDA Req  Repo Hevn RMis Flee AvUA
   db $05,$05,$05,$04,$04,$04,$04,$04   ;85ECE5|        |      ; DfUA AcUA AtUA CAWi CAEa CAWa CAFi Rpel
   db $06,$0A,$06,$04,$32,$08,$00,$08   ;85ECED|        |      ; Mirr APur APar APet Rest Home WayP WaPW
   db $04,$08                           ;85ECF5|        |      ; Req2 FRp2
 
; I don't mess with this because it can glitch the graphics
org $85ECF7 : Tbl_Spell_palette:
   db $00,$01,$02,$03,$01,$02,$03,$01   ;85ECF7|        |      ; ---- Lit1 Lit2 Lit3 Sma1 Sma2 Sma3 Wtr1
   db $02,$03,$01,$02,$03,$02,$02,$02   ;85ECFF|        |      ; Wtr2 Wtr3 Flm1 Flm2 Flm3 Atr1 Atr2 Atr3
   db $02,$02,$02,$03,$03,$03,$03,$03   ;85ED07|        |      ; Atr4 Atr5 Atr6 Atr7 Atr8 Atr9 AtrA AtrB
   db $03,$03,$03,$03,$00,$00,$05,$05   ;85ED0F|        |      ; CWnd CErt CWtr CFir Drai Psyc HPRA HPR 
   db $05,$05,$05,$05,$05,$06,$06,$06   ;85ED17|        |      ; Hel1 Hel2 Hel3 HeA1 HeA2 Chao Ento Deth
   db $06,$06,$06,$06,$06,$06,$06,$06   ;85ED1F|        |      ; ParA PtrA StpA SlpA CnfA Para Petr Stop
   db $06,$06,$06,$06,$06,$06,$06,$06   ;85ED27|        |      ; Slep Conf AvD  AvDA DfD  DfDA AcD  AcDA
   db $06,$06,$06,$06,$06,$06,$06,$05   ;85ED2F|        |      ; AtD  AtDA Req  Repo Hevn RMis Flee AvUA
   db $05,$05,$05,$05,$05,$05,$05,$05   ;85ED37|        |      ; DfUA AcUA AtUA CAWi CAEa CAWa CAFi Rpel
   db $05,$05,$05,$05,$05,$05,$05,$05   ;85ED3F|        |      ; Mirr APur APar APet Rest Home WayP WaPW
   db $05,$05,$07,$08,$09,$04,$05,$00   ;85ED47|        |      ; Req2 FRp2 ---- ---- ---- ---- ---- ----
   db $00,$0A,$0A,$0B,$0C,$00,$00       ;85ED4F|        |      ; ---- Fai1 Fai2

org $85ED56 : Tbl_Spell_SFX:
   db $00,$1E,$1E,$1E,$21,$21,$21,$20   ;85ED56|        |      ; ---- Lit1 Lit2 Lit3 Sma1 Sma2 Sma3 Wtr1
   db $20,$20,$1D,$1D,$1D,$22,$22,$22   ;85ED5E|        |      ; Wtr2 Wtr3 Flm1 Flm2 Flm3 Atr1 Atr2 Atr3
   db $22,$22,$22,$23,$23,$23,$23,$24   ;85ED66|        |      ; Atr4 Atr5 Atr6 Atr7 Atr8 Atr9 AtrA AtrB
   db $1E,$21,$20,$1D,$00,$00,$25,$25   ;85ED6E|        |      ; CWnd CErt CWtr CFir Drai Psyc HPRA HPR 
   db $25,$25,$25,$25,$25,$25,$25,$25   ;85ED76|        |      ; Hel1 Hel2 Hel3 HeA1 HeA2 Chao Ento Deth
   db $25,$25,$25,$25,$25,$25,$25,$25   ;85ED7E|        |      ; ParA PtrA StpA SlpA CnfA Para Petr Stop
   db $25,$25,$25,$25,$25,$25,$25,$25   ;85ED86|        |      ; Slep Conf AvD  AvDA DfD  DfDA AcD  AcDA
   db $25,$25,$00,$00,$00,$00,$00,$25   ;85ED8E|        |      ; AtD  AtDA Req  Repo Hevn RMis Flee AvUA
   db $25,$25,$25,$25,$25,$25,$25,$00   ;85ED96|        |      ; DfUA AcUA AtUA CAWi CAEa CAWa CAFi Rpel
   db $00,$25,$25,$25,$25,$00,$00,$00   ;85ED9E|        |      ; Mirr APur APar APet Rest Home WayP WaPW
   db $00,$00,$24,$24,$24,$24,$19,$00   ;85EDA6|        |      ; Req2 FRp2 ---- ---- ---- ---- ---- ----
   db $00,$1C,$1C,$1B,$1A,$00,$00       ;85EDAE|        |      ; ---- Fai1 Fai2

org $85EDB5 : Tbl_Spell_Category:
   db $FF,$00,$00,$00,$00,$00,$00,$00   ;85EDB5|        |      ; ---- Lit1 Lit2 Lit3 Sma1 Sma2 Sma3 Wtr1
   db $00,$00,$00,$00,$00,$00,$00,$00   ;85EDBD|        |      ; Wtr2 Wtr3 Flm1 Flm2 Flm3 Atr1 Atr2 Atr3
   db $00,$00,$00,$00,$00,$00,$00,$00   ;85EDC5|        |      ; Atr4 Atr5 Atr6 Atr7 Atr8 Atr9 AtrA AtrB
   db $00,$00,$00,$00,$01,$01,$02,$02   ;85EDCD|        |      ; CWnd CErt CWtr CFir Drai Psyc HPRA HPR 
   db $02,$02,$02,$02,$02,$03,$03,$03   ;85EDD5|        |      ; Hel1 Hel2 Hel3 HeA1 HeA2 Chao Ento Deth
   db $04,$04,$04,$04,$04,$04,$04,$04   ;85EDDD|        |      ; ParA PtrA StpA SlpA CnfA Para Petr Stop
   db $04,$04,$05,$05,$05,$05,$05,$05   ;85EDE5|        |      ; Slep Conf AvD  AvDA DfD  DfDA AcD  AcDA
   db $05,$05,$06,$06,$06,$07,$07,$08   ;85EDED|        |      ; AtD  AtDA Req  Repo Hevn RMis Flee AvUA
   db $08,$08,$08,$09,$09,$09,$09,$0A   ;85EDF5|        |      ; DfUA AcUA AtUA CAWi CAEa CAWa CAFi Rpel
   db $0A,$0B,$0B,$0B,$0C,$0D,$0D,$0D   ;85EDFD|        |      ; Mirr APur APar APet Rest Home WayP WaPW
   db $0D,$0D,$FF,$FF,$FF,$FF,$FF,$FF   ;85EE05|        |      ; Req2 FRp2 ---- ---- ---- ---- ---- ----
   db $FF,$00,$00                       ;85EE0D|        |      ; ---- Fai1 Fai2

;SFX per category
;00 = set elsewhere
;07 = Damage SFX
;13 = Confusion SFX
;1F = Healing SFX
;2B = Petrify SFX
;2C = Sleep SFX
org $87C8DC : Tbl_Spell_effect_SFX:
   db $00,$00,$1F,$00,$07,$07,$00,$00   ;87C8DC|        |      ; Damaging, Draining, Healing, Death, Status, Debuffs, Undeath, Last Resort
   db $1F,$1F,$1F,$1F,$1F,$1F           ;87C8E4|        |      ; Buffs, Barriers, Spirit Revival, ---, ---, ---

org $87C8EA : Tbl_Status_effect_SFX:
   db $2C,$2B,$2C,$2C,$13,$2C,$2B,$2C   ;87C8EA|        |      ; ParaA, PetrA, StopA, SlepA, ConfA, Para, Petr, Stop
   db $2C,$13                           ;87C8F2|        |      ; Sleep, Confu
