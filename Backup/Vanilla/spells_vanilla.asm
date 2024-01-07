
org $05ECF7
Spell_palette:
; Affects the colors used. Most of them are weird, so only a few are used.
  db $00       ;05ECF7|      ;
  db $01       ;05ECF8|      ;  Lightning 1
  db $02       ;05ECF9|      ;  Lightning 2
  db $03       ;05ECFA|      ;  Lightning 3
  db $01       ;05ECFB|      ;  Smash 1
  db $02       ;05ECFC|      ;  Smash 2
  db $03       ;05ECFD|      ;  Smash 3
  db $01       ;05ECFE|      ;  Water 1
  db $02       ;05ECFF|      ;  Water 2
  db $03       ;05ED00|      ;  Water 3
  db $01       ;05ED01|      ;  Flame 1
  db $02       ;05ED02|      ;  Flame 2
  db $03       ;05ED03|      ;  Flame 3
  db $01       ;05ED04|      ;  Attribute 1
  db $01       ;05ED05|      ;  Attribute 2
  db $01       ;05ED06|      ;  Attribute 3
  db $01       ;05ED07|      ;  Attribute 4
  db $01       ;05ED08|      ;  Attribute 5
  db $01       ;05ED09|      ;  Attribute 6
  db $02       ;05ED0A|      ;  Attribute 7
  db $02       ;05ED0B|      ;  Attribute 8
  db $02       ;05ED0C|      ;  Attribute 9
  db $02       ;05ED0D|      ;  Attribute 10
  db $03       ;05ED0E|      ;  Attribute 11
  db $03       ;05ED0F|      ;  Call Wind Spirit
  db $03       ;05ED10|      ;  Call Earth Spirit
  db $03       ;05ED11|      ;  Call Water Spirit
  db $03       ;05ED12|      ;  Call Fire Spirit
  db $00       ;05ED13|      ;  
  db $00       ;05ED14|      ;  
  db $05       ;05ED15|      ;  HP Restore All
  db $05       ;05ED16|      ;  HP Restore
  db $05       ;05ED17|      ;  Heal 1
  db $05       ;05ED18|      ;  Heal 2
  db $05       ;05ED19|      ;  Heal 3
  db $05       ;05ED1A|      ;  Heal All 1
  db $05       ;05ED1B|      ;  Heal All 2
  db $06       ;05ED1C|      ;  Chaos Wind
  db $06       ;05ED1D|      ;  Entomb
  db $06       ;05ED1E|      ;  Destroy
  db $06       ;05ED1F|      ;  Paralyze All
  db $06       ;05ED20|      ;  Petrify All
  db $06       ;05ED21|      ;  Stop All
  db $06       ;05ED22|      ;  Sleep All
  db $06       ;05ED23|      ;  Confused All
  db $06       ;05ED24|      ;  Paralyze
  db $06       ;05ED25|      ;  Petrify
  db $06       ;05ED26|      ;  Stop
  db $06       ;05ED27|      ;  Sleep
  db $06       ;05ED28|      ;  Confused
  db $06       ;05ED29|      ;  Offense Impair
  db $06       ;05ED2A|      ;  Offense Impair All
  db $06       ;05ED2B|      ;  Defense Impair
  db $06       ;05ED2C|      ;  Defense Impair All
  db $06       ;05ED2D|      ;  Accuracy Impair
  db $06       ;05ED2E|      ;  Accuracy Impair All
  db $06       ;05ED2F|      ;  Attack Impair
  db $06       ;05ED30|      ;  Attack Impair All
  db $06       ;05ED31|      ;  
  db $06       ;05ED32|      ;  
  db $06       ;05ED33|      ;  
  db $06       ;05ED34|      ;  Ruinous Mission
  db $06       ;05ED35|      ;  Flee
  db $05       ;05ED36|      ;  Dodge All
  db $05       ;05ED37|      ;  Wall All
  db $05       ;05ED38|      ;  Accuracy Increase All
  db $05       ;05ED39|      ;  Stomp All
  db $05       ;05ED3A|      ;  Change Attr. to Wind
  db $05       ;05ED3B|      ;  Change Attr. to Earth
  db $05       ;05ED3C|      ;  Change Attr. to Water
  db $05       ;05ED3D|      ;  Change Attr. to Fire
  db $05       ;05ED3E|      ;  
  db $05       ;05ED3F|      ;  
  db $05       ;05ED40|      ;  Restore All
  db $05       ;05ED41|      ;  Revitalize
  db $05       ;05ED42|      ;  Unpetrify
  db $05       ;05ED43|      ;  Restoration of Spirit
  db $05       ;05ED44|      ;  Home
  db $05       ;05ED45|      ;  
  db $05       ;05ED46|      ;  
  db $05       ;05ED47|      ;  
  db $05       ;05ED48|      ;  
  db $07       ;05ED49|      ;  52
  db $08       ;05ED4A|      ;  53
  db $09       ;05ED4B|      ;  54
  db $04       ;05ED4C|      ;  55
  db $05       ;05ED4D|      ;  56
  db $00       ;05ED4E|      ;  57
  db $00       ;05ED4F|      ;  58
  db $0A       ;05ED50|      ;  Call Amulet Fail1
  db $0A       ;05ED51|      ;  Call Amulet Fail2
  db $0B       ;05ED52|      ;  5B
  db $0C       ;05ED53|      ;  5C
  db $00       ;05ED54|      ;  5D
  db $00       ;05ED55|      ;  5E

org $05ED56
Spell_SFX:
; This uses SFX ID's, for instance 1E is Lightning.
  db $00       ;05ED56|      ;  
  db $1E       ;05ED57|      ;  Lightning
  db $1E       ;05ED58|      ;  Lightning
  db $1E       ;05ED59|      ;  Lightning
  db $21       ;05ED5A|      ;  Smash
  db $21       ;05ED5B|      ;  Smash
  db $21       ;05ED5C|      ;  Smash
  db $20       ;05ED5D|      ;  Water
  db $20       ;05ED5E|      ;  Water
  db $20       ;05ED5F|      ;  Water
  db $1D       ;05ED60|      ;  Flame
  db $1D       ;05ED61|      ;  Flame
  db $1D       ;05ED62|      ;  Flame
  db $22       ;05ED63|      ;  Attribute 1
  db $22       ;05ED64|      ;  Attribute 2
  db $22       ;05ED65|      ;  Attribute 3
  db $22       ;05ED66|      ;  Attribute 4
  db $22       ;05ED67|      ;  Attribute 5
  db $22       ;05ED68|      ;  Attribute 6
  db $23       ;05ED69|      ;  Attribute 7
  db $23       ;05ED6A|      ;  Attribute 8
  db $23       ;05ED6B|      ;  Attribute 9
  db $23       ;05ED6C|      ;  Attribute 10
  db $24       ;05ED6D|      ;  Attribute 11
  db $1E       ;05ED6E|      ;  Call Wind Spirit
  db $21       ;05ED6F|      ;  Call Earth Spirit
  db $20       ;05ED70|      ;  Call Water Spirit
  db $1D       ;05ED71|      ;  Call Fire Spirit
  db $00       ;05ED72|      ;  
  db $00       ;05ED73|      ;  
  db $25       ;05ED74|      ;  HP Restore All
  db $25       ;05ED75|      ;  HP Restore
  db $25       ;05ED76|      ;  Heal 1
  db $25       ;05ED77|      ;  Heal 2
  db $25       ;05ED78|      ;  Heal 3
  db $25       ;05ED79|      ;  Heal All 1
  db $25       ;05ED7A|      ;  Heal All 2
  db $25       ;05ED7B|      ;  Chaos Wind
  db $25       ;05ED7C|      ;  Entomb
  db $25       ;05ED7D|      ;  Destroy
  db $25       ;05ED7E|      ;  Paralyze All
  db $25       ;05ED7F|      ;  
  db $25       ;05ED80|      ;  
  db $25       ;05ED81|      ;  
  db $25       ;05ED82|      ;  
  db $25       ;05ED83|      ;  Paralyze
  db $25       ;05ED84|      ;  
  db $25       ;05ED85|      ;  
  db $25       ;05ED86|      ;  
  db $25       ;05ED87|      ;  
  db $25       ;05ED88|      ;  Offense Impair
  db $25       ;05ED89|      ;  
  db $25       ;05ED8A|      ;  Defense Impair
  db $25       ;05ED8B|      ;  
  db $25       ;05ED8C|      ;  Accuracy Impair
  db $25       ;05ED8D|      ;  
  db $25       ;05ED8E|      ;  Attack Impair
  db $25       ;05ED8F|      ;  
  db $00       ;05ED90|      ;  
  db $00       ;05ED91|      ;  
  db $00       ;05ED92|      ;  
  db $00       ;05ED93|      ;  
  db $00       ;05ED94|      ;  
  db $25       ;05ED95|      ;  Dodge All
  db $25       ;05ED96|      ;  Wall All
  db $25       ;05ED97|      ;  Acc Increase All
  db $25       ;05ED98|      ;  Stomp All
  db $25       ;05ED99|      ;  Change Attr. to Wind
  db $25       ;05ED9A|      ;  Change Attr. to Earth
  db $25       ;05ED9B|      ;  Change Attr. to Water
  db $25       ;05ED9C|      ;  Change Attr. to Fire
  db $00       ;05ED9D|      ;  
  db $00       ;05ED9E|      ;  
  db $25       ;05ED9F|      ;  Restore All
  db $25       ;05EDA0|      ;  Revitalize
  db $25       ;05EDA1|      ;  Unpetrify
  db $25       ;05EDA2|      ;  Restoration of Spirit
  db $00       ;05EDA3|      ;  
  db $00       ;05EDA4|      ;  
  db $00       ;05EDA5|      ;  
  db $00       ;05EDA6|      ;  
  db $00       ;05EDA7|      ;  
  db $24       ;05EDA8|      ;  
  db $24       ;05EDA9|      ;  
  db $24       ;05EDAA|      ;  
  db $24       ;05EDAB|      ;  
  db $19       ;05EDAC|      ;  
  db $00       ;05EDAD|      ;  
  db $00       ;05EDAE|      ;  
  db $1C       ;05EDAF|      ;  Call Amulet Fail1
  db $1C       ;05EDB0|      ;  Call Amulet Fail2
  db $1B       ;05EDB1|      ;  
  db $1A       ;05EDB2|      ;  
  db $00       ;05EDB3|      ;  
  db $00       ;05EDB4|      ;  

org $07C8DC
Spell_effect_SFX:
; SFX after animation finishes
  db $00       ;07C8DC|      ; Damaging (00 is probably default or set later)
  db $00       ;07C8DD|      ; Draining
  db $1F       ;07C8DE|      ; Healing (1F Healing sfx)
  db $00       ;07C8DF|      ; Death
  db $07       ;07C8E0|      ; Status (07 Damage sfx)
  db $07       ;07C8E1|      ; Debuffs
  db $00       ;07C8E2|      ; Undeath
  db $00       ;07C8E3|      ; Ruinous Mission
  db $1F       ;07C8E4|      ; Buffs
  db $1F       ;07C8E5|      ; Change Attr
  db $1F       ;07C8E6|      ; Restoration
  db $1F       ;07C8E7|      ; Home
  db $1F       ;07C8E8|      ; Unused?
  db $1F       ;07C8E9|      ;  

org $07C8EA
Status_effect_SFX:
; SFX after being afflicted
  db $2C       ;07C8EA|      ; Paralyze All (Sleep SFX)
  db $2B       ;07C8EB|      ; Petrify All (Petrify SFX)
  db $2C       ;07C8EC|      ; Stop All
  db $2C       ;07C8ED|      ; Sleep All
  db $13       ;07C8EE|      ; Confused All (Confused SFX)
  db $2C       ;07C8EF|      ; Paralyze
  db $2B       ;07C8F0|      ; Petrify
  db $2C       ;07C8F1|      ; Stop
  db $2C       ;07C8F2|      ; Sleep
  db $13       ;07C8F3|      ; Confused
