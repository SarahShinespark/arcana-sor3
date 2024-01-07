
org $85EA4C
Spell_use_flag:
; Battle only: 02 (Attack spells)
; Out-of-battle only: 01 (Home)
; Usable anywhere: 03 (Healing spells)
  db $00                               ;05EA4C|        |      ;  
  db $02                               ;05EA4D|        |      ; Lightning 1
  db $02                               ;05EA4E|        |      ; 
  db $02                               ;05EA4F|        |      ; 
  db $02                               ;05EA50|        |      ; Smash 1
  db $02                               ;05EA51|        |      ;  
  db $02                               ;05EA52|        |      ;  
  db $02                               ;05EA53|        |      ; Water 1
  db $02                               ;05EA54|        |      ;  
  db $02                               ;05EA55|        |      ;  
  db $02                               ;05EA56|        |      ; Flame 1 
  db $02                               ;05EA57|        |      ;  
  db $02                               ;05EA58|        |      ;  
  db $02                               ;05EA59|        |      ; Attribute 1
  db $02                               ;05EA5A|        |      ;  
  db $02                               ;05EA5B|        |      ;  
  db $02                               ;05EA5C|        |      ;  
  db $02                               ;05EA5D|        |      ;  
  db $02                               ;05EA5E|        |      ;  
  db $02                               ;05EA5F|        |      ;  
  db $02                               ;05EA60|        |      ;  
  db $02                               ;05EA61|        |      ;  
  db $02                               ;05EA62|        |      ;  
  db $02                               ;05EA63|        |      ; Attribute 11
  db $02                               ;05EA64|        |      ; Call Wind Spirit
  db $02                               ;05EA65|        |      ; Call Earth Spirit
  db $02                               ;05EA66|        |      ; Call Water Spirit
  db $02                               ;05EA67|        |      ; Call Fire Spirit
  db $02                               ;05EA68|        |      ; -
  db $02                               ;05EA69|        |      ; -
  db $02                               ;05EA6A|        |      ; HP Restore All (Battle only)
  db $02                               ;05EA6B|        |      ; HP Restore     (Battle only)
  db $03                               ;05EA6C|        |      ; Heal 1
  db $03                               ;05EA6D|        |      ; Heal 2
  db $03                               ;05EA6E|        |      ; Heal 3
  db $03                               ;05EA6F|        |      ; Heal All 1
  db $03                               ;05EA70|        |      ; Heal All 2
  db $02                               ;05EA71|        |      ; 
  db $02                               ;05EA72|        |      ;  
  db $02                               ;05EA73|        |      ;  
  db $02                               ;05EA74|        |      ;  
  db $02                               ;05EA75|        |      ;  
  db $02                               ;05EA76|        |      ;  
  db $02                               ;05EA77|        |      ;  
  db $02                               ;05EA78|        |      ;  
  db $02                               ;05EA79|        |      ;  
  db $02                               ;05EA7A|        |      ;  
  db $02                               ;05EA7B|        |      ;  
  db $02                               ;05EA7C|        |      ;  
  db $02                               ;05EA7D|        |      ;  
  db $02                               ;05EA7E|        |      ;  
  db $02                               ;05EA7F|        |      ;  
  db $02                               ;05EA80|        |      ;  
  db $02                               ;05EA81|        |      ;  
  db $02                               ;05EA82|        |      ;  
  db $02                               ;05EA83|        |      ;  
  db $02                               ;05EA84|        |      ;  
  db $02                               ;05EA85|        |      ;  
  db $02                               ;05EA86|        |      ;  
  db $02                               ;05EA87|        |      ;  
  db $02                               ;05EA88|        |      ;  
  db $02                               ;05EA89|        |      ;  
  db $02                               ;05EA8A|        |      ;  
  db $02                               ;05EA8B|        |      ;  
  db $02                               ;05EA8C|        |      ;  
  db $02                               ;05EA8D|        |      ;  
  db $02                               ;05EA8E|        |      ;  
  db $02                               ;05EA8F|        |      ;  Change Attr. to Wind
  db $02                               ;05EA90|        |      ;  Change Attr. to Earth
  db $02                               ;05EA91|        |      ;  Change Attr. to Water
  db $02                               ;05EA92|        |      ;  Change Attr. to Fire
  db $02                               ;05EA93|        |      ;  -
  db $02                               ;05EA94|        |      ;  -
  db $03                               ;05EA95|        |      ;  Restore All (02 -> 03)
  db $03                               ;05EA96|        |      ;  Revitalize
  db $03                               ;05EA97|        |      ;  Unpetrify
  db $03                               ;05EA98|        |      ;  Restoration of Spirit
  db $01                               ;05EA99|        |      ;  Home
  db $01                               ;05EA9A|        |      ;  -
  db $01                               ;05EA9B|        |      ;  -
  db $01                               ;05EA9C|        |      ;  -
  db $01                               ;05EA9D|        |      ;  -

org $85ECF7
Spell_palette:
; Affects the colors used. Most of them are weird, so only a few are used.
  db $00       ;85ECF7|      ;
  db $01       ;85ECF8|      ;  Lightning 1
  db $02       ;85ECF9|      ;  Lightning 2
  db $03       ;85ECFA|      ;  Lightning 3
  db $01       ;85ECFB|      ;  Smash 1
  db $02       ;85ECFC|      ;  Smash 2
  db $03       ;85ECFD|      ;  Smash 3
  db $01       ;85ECFE|      ;  Water 1
  db $02       ;85ECFF|      ;  Water 2
  db $03       ;85ED00|      ;  Water 3
  db $01       ;85ED01|      ;  Flame 1
  db $02       ;85ED02|      ;  Flame 2
  db $03       ;85ED03|      ;  Flame 3
  db $02       ;85ED04|      01;  Attribute 1
  db $02       ;85ED05|      0A;  Attribute 2
  db $02       ;85ED06|      0A;  Attribute 3
  db $02       ;85ED07|      0A;  Attribute 4
  db $02       ;85ED08|      0A;  Attribute 5
  db $02       ;85ED09|      0A;  Attribute 6
  db $03       ;85ED0A|      03;  Attribute 7
  db $03       ;85ED0B|      03;  Attribute 8
  db $03       ;85ED0C|      03;  Attribute 9
  db $03       ;85ED0D|      03;  Attribute 10
  db $03       ;85ED0E|      03;  Attribute 11
  db $03       ;85ED0F|      ;  Call Wind Spirit
  db $03       ;85ED10|      ;  Call Earth Spirit
  db $03       ;85ED11|      ;  Call Water Spirit
  db $03       ;85ED12|      ;  Call Fire Spirit
  db $00       ;85ED13|      ;  
  db $00       ;85ED14|      ;  
  db $05       ;85ED15|      ;  HP Restore All
  db $05       ;85ED16|      ;  HP Restore
  db $05       ;85ED17|      ;  Heal 1
  db $05       ;85ED18|      ;  Heal 2
  db $05       ;85ED19|      ;  Heal 3
  db $05       ;85ED1A|      ;  Heal All 1
  db $05       ;85ED1B|      ;  Heal All 2
  db $06       ;85ED1C|      2B;  Chaos Wind
  db $06       ;85ED1D|      08;  Entomb
  db $06       ;85ED1E|      09;  Destroy
  db $06       ;85ED1F|      41;  Paralyze All
  db $06       ;85ED20|      08;  Petrify All
  db $06       ;85ED21|      2B;  Stop All
  db $06       ;85ED22|      41;  Sleep All
  db $06       ;85ED23|      70;  Confused All
  db $06       ;85ED24|      41;  Paralyze
  db $06       ;85ED25|      08;  Petrify
  db $06       ;85ED26|      2B;  Stop
  db $06       ;85ED27|      41;  Sleep
  db $06       ;85ED28|      70;  Confused
  db $06       ;85ED29|      61;  Offense Impair
  db $06       ;85ED2A|      61;  Offense Impair All
  db $06       ;85ED2B|      61;  Defense Impair
  db $06       ;85ED2C|      61;  Defense Impair All
  db $06       ;85ED2D|      61;  Accuracy Impair
  db $06       ;85ED2E|      61;  Accuracy Impair All
  db $06       ;85ED2F|      61;  Attack Impair
  db $06       ;85ED30|      61;  Attack Impair All
  db $06       ;85ED31|      ;  
  db $06       ;85ED32|      ;  
  db $06       ;85ED33|      ;  
  db $06       ;85ED34|      ;  Ruinous Mission
  db $06       ;85ED35|      05;  Flee
  db $05       ;85ED36|      2B;  Dodge All
  db $05       ;85ED37|      5F;  Wall All
  db $05       ;85ED38|      41;  Accuracy Increase All
  db $05       ;85ED39|      4F;  Stomp All
  db $05       ;85ED3A|      6A;  Change Attr. to Wind
  db $05       ;85ED3B|      2C;  Change Attr. to Earth
  db $05       ;85ED3C|      41;  Change Attr. to Water
  db $05       ;85ED3D|      04;  Change Attr. to Fire
  db $05       ;85ED3E|      ;  
  db $05       ;85ED3F|      ;  
  db $05       ;85ED40|      ;  Restore All
  db $05       ;85ED41|      ;  Revitalize
  db $05       ;85ED42|      ;  Unpetrify
  db $05       ;85ED43|      ;  Restoration of Spirit
  db $05       ;85ED44|      ;  Home
  db $05       ;85ED45|      ;  
  db $05       ;85ED46|      ;  
  db $05       ;85ED47|      ;  
  db $05       ;85ED48|      ;  
  db $07       ;85ED49|      ;  52
  db $08       ;85ED4A|      ;  53
  db $09       ;85ED4B|      ;  54
  db $04       ;85ED4C|      ;  55
  db $05       ;85ED4D|      ;  56
  db $00       ;85ED4E|      ;  57
  db $00       ;85ED4F|      ;  58
  db $0A       ;85ED50|      ;  Call Amulet Fail1
  db $0A       ;85ED51|      ;  Call Amulet Fail2
  db $0B       ;85ED52|      ;  5B
  db $0C       ;85ED53|      ;  5C
  db $00       ;85ED54|      ;  5D
  db $00       ;85ED55|      ;  5E

org $85ED56
Spell_SFX:
; Animation SFX. This uses SFX ID's, for instance 1E is Lightning.
  db $00       ;85ED56|      ;  
  db $1E       ;85ED57|      ;  Lightning
  db $1E       ;85ED58|      ;  Lightning
  db $1E       ;85ED59|      ;  Lightning
  db $21       ;85ED5A|      ;  Smash
  db $21       ;85ED5B|      ;  Smash
  db $21       ;85ED5C|      ;  Smash
  db $20       ;85ED5D|      ;  Water
  db $20       ;85ED5E|      ;  Water
  db $20       ;85ED5F|      ;  Water
  db $1D       ;85ED60|      ;  Flame
  db $1D       ;85ED61|      ;  Flame
  db $1D       ;85ED62|      ;  Flame
  db $22       ;85ED63|      ;  Attribute 1
  db $22       ;85ED64|      ;  Attribute 2
  db $22       ;85ED65|      ;  Attribute 3
  db $22       ;85ED66|      ;  Attribute 4
  db $22       ;85ED67|      ;  Attribute 5
  db $22       ;85ED68|      ;  Attribute 6
  db $23       ;85ED69|      ;  Attribute 7
  db $23       ;85ED6A|      ;  Attribute 8
  db $23       ;85ED6B|      ;  Attribute 9
  db $23       ;85ED6C|      ;  Attribute 10
  db $24       ;85ED6D|      ;  Attribute 11
  db $1E       ;85ED6E|      ;  Call Wind Spirit
  db $21       ;85ED6F|      ;  Call Earth Spirit
  db $20       ;85ED70|      ;  Call Water Spirit
  db $1D       ;85ED71|      ;  Call Fire Spirit
  db $00       ;85ED72|      ;  
  db $00       ;85ED73|      ;  
  db $25       ;85ED74|      ;  HP Restore All
  db $25       ;85ED75|      ;  HP Restore
  db $25       ;85ED76|      ;  Heal 1
  db $25       ;85ED77|      ;  Heal 2
  db $25       ;85ED78|      ;  Heal 3
  db $25       ;85ED79|      ;  Heal All 1
  db $25       ;85ED7A|      ;  Heal All 2
  db $25       ;85ED7B|      ;  Chaos Wind
  db $25       ;85ED7C|      ;  Entomb
  db $25       ;85ED7D|      ;  Destroy
  db $25       ;85ED7E|      ;  Paralyze All
  db $25       ;85ED7F|      ;  
  db $25       ;85ED80|      ;  
  db $25       ;85ED81|      ;  
  db $25       ;85ED82|      ;  
  db $25       ;85ED83|      ;  Paralyze
  db $25       ;85ED84|      ;  
  db $25       ;85ED85|      ;  
  db $25       ;85ED86|      ;  
  db $25       ;85ED87|      ;  
  db $25       ;85ED88|      ;  Offense Impair
  db $25       ;85ED89|      ;  
  db $25       ;85ED8A|      ;  Defense Impair
  db $25       ;85ED8B|      ;  
  db $25       ;85ED8C|      ;  Accuracy Impair
  db $25       ;85ED8D|      ;  
  db $25       ;85ED8E|      ;  Attack Impair
  db $25       ;85ED8F|      ;  
  db $00       ;85ED90|      ;  
  db $00       ;85ED91|      ;  
  db $00       ;85ED92|      ;  
  db $00       ;85ED93|      ;  
  db $00       ;85ED94|      ;  
  db $25       ;85ED95|      ;  Dodge All
  db $25       ;85ED96|      ;  Wall All
  db $25       ;85ED97|      ;  Acc Increase All
  db $25       ;85ED98|      ;  Stomp All
  db $25       ;85ED99|      ;  Change Attr. to Wind
  db $25       ;85ED9A|      ;  Change Attr. to Earth
  db $25       ;85ED9B|      ;  Change Attr. to Water
  db $25       ;85ED9C|      ;  Change Attr. to Fire
  db $00       ;85ED9D|      ;  
  db $00       ;85ED9E|      ;  
  db $25       ;85ED9F|      ;  Restore All
  db $25       ;85EDA0|      ;  Revitalize
  db $25       ;85EDA1|      ;  Unpetrify
  db $25       ;85EDA2|      ;  Restoration of Spirit
  db $00       ;85EDA3|      ;  
  db $00       ;85EDA4|      ;  
  db $00       ;85EDA5|      ;  
  db $00       ;85EDA6|      ;  
  db $00       ;85EDA7|      ;  
  db $24       ;85EDA8|      ;  
  db $24       ;85EDA9|      ;  
  db $24       ;85EDAA|      ;  
  db $24       ;85EDAB|      ;  
  db $19       ;85EDAC|      ;  
  db $00       ;85EDAD|      ;  
  db $00       ;85EDAE|      ;  
  db $1C       ;85EDAF|      ;  Call Amulet Fail1
  db $1C       ;85EDB0|      ;  Call Amulet Fail2
  db $1B       ;85EDB1|      ;  
  db $1A       ;85EDB2|      ;  
  db $00       ;85EDB3|      ;  
  db $00       ;85EDB4|      ;  

org $87C8DC
Spell_effect_SFX:
; SFX after animation finishes
  db $00       ;87C8DC|      ; Damaging (00 is probably default or set later)
  db $00       ;87C8DD|      ; Draining
  db $1F       ;87C8DE|      ; Healing (1F Healing sfx)
  db $00       ;87C8DF|      ; Death
  db $07       ;87C8E0|      ; Status (07 Damage sfx)
  db $07       ;87C8E1|      ; Debuffs
  db $00       ;87C8E2|      ; Undeath
  db $00       ;87C8E3|      ; Ruinous Mission
  db $1F       ;87C8E4|      ; Buffs
  db $1F       ;87C8E5|      ; Change Attr
  db $1F       ;87C8E6|      ; Restoration
  db $1F       ;87C8E7|      ; Home
  db $1F       ;87C8E8|      ; Unused?
  db $1F       ;87C8E9|      ;  

org $87C8EA
Status_effect_SFX:
; SFX after being afflicted
  db $2C       ;87C8EA|      ; Paralyze All (Sleep SFX)
  db $2B       ;87C8EB|      ; Petrify All (Petrify SFX)
  db $2C       ;87C8EC|      ; Stop All
  db $2C       ;87C8ED|      ; Sleep All
  db $13       ;87C8EE|      ; Confused All (Confused SFX)
  db $2C       ;87C8EF|      ; Paralyze
  db $2B       ;87C8F0|      ; Petrify
  db $2C       ;87C8F1|      ; Stop
  db $2C       ;87C8F2|      ; Sleep
  db $13       ;87C8F3|      ; Confused
