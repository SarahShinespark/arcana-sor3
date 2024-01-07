;Random encounters and boss fights
;***Formation Zone 6 has too many 000B 000C. Can some be repositioned for dragons?

org $18910B
Ch_Boss_Position:
;Pointer table to boss data (8 bytes per entry), see 1880F8

                       dw Stone_Guardian_Pos                ;189101|        |18910B; 
                       dw Cyclops_Pos                       ;189103|        |18911D;  
                       dw Hydra_Pos                         ;189105|        |18912F;  
                       dw Ch4_Bosses                        ;189107|        |189139;  
                       dw Ch5_Bosses                        ;189109|        |18913B;  

org $18910B
Stone_Guardian_Pos:
                       db $00                               ;18910B|        |      ; Current map (01 00 = Balnea 1F)
                       db $01                               ;18910C|        |      ;  
                       db $0F                               ;18910D|        |      ; X pos (0F)
                       db $00                               ;18910E|        |      ;  
                       db $06                               ;18910F|        |      ; Y pos (06)
                       db $00                               ;189110|        |      ;  
                       db $06                               ;189111|        |      ; ??
                       db $00                               ;189112|        |      ;  

Iron_Guardian_Pos:
                       db $01                               ;189113|        |      ; Current map (01 01 = Balnea 2F)
                       db $01                               ;189114|        |      ;  
                       db $0F                               ;189115|        |      ; X pos (0F)
                       db $00                               ;189116|        |      ;  
                       db $09                               ;189117|        |      ; Y pos (09)
                       db $00                               ;189118|        |      ;  
                       db $07                               ;189119|        |      ;  
                       db $00                               ;18911A|        |      ;  
                       db $FF                               ;18911B|        |      ; End of chapter 1 entries
                       db $FF                               ;18911C|        |      ;  

Cyclops_Pos:
                       db $04                               ;18911D|        |      ; Current map (04 01 = Forest of Doubt)
                       db $01                               ;18911E|        |      ;  
                       db $08                               ;18911F|        |      ; Position (08, 18)
                       db $00                               ;189120|        |      ;  
                       db $18                               ;189121|        |      ;  
                       db $00                               ;189122|        |      ;  
                       db $06                               ;189123|        |      ; ??
                       db $00                               ;189124|        |      ;  

Efrite_Pos:
                       db $03                               ;189125|        |      ; Map 03 01 = Crimson Valley
                       db $01                               ;189126|        |      ;  
                       db $1D                               ;189127|        |      ; Position (1D, 0C)
                       db $00                               ;189128|        |      ;  
                       db $0C                               ;189129|        |      ;  
                       db $00                               ;18912A|        |      ;  
                       db $07                               ;18912B|        |      ; ??
                       db $00                               ;18912C|        |      ;  
                       db $FF                               ;18912D|        |      ; End Ch2 entries
                       db $FF                               ;18912E|        |      ;  

Hydra_Pos:
                       db $06                               ;18912F|        |      ; Map 06 01 =  Icicle Dungeon
                       db $01                               ;189130|        |      ;  
                       db $0F                               ;189131|        |      ; Position (0F, 09)
                       db $00                               ;189132|        |      ;  
                       db $09                               ;189133|        |      ;  
                       db $00                               ;189134|        |      ;  
                       db $08                               ;189135|        |      ; ??
                       db $00                               ;189136|        |      ;  
                       db $FF                               ;189137|        |      ; End Ch3 entries
                       db $FF                               ;189138|        |      ;  

Ch4_Bosses:
                       db $FF                               ;189139|        |      ;  
                       db $FF                               ;18913A|        |      ;  

Ch5_Bosses:
                       db $FF                               ;18913B|        |      ;  
                       db $FF                               ;18913C|        |      ;  


;Enemy IDs
!Slime      = $00
!Pickpocket = $01
!Thief      = $02
!Goblin     = $03
!Orc        = $04
!Dog        = $05
!Wolf       = $06
!Saurian    = $07
!Lizardman  = $08
!Chimera    = $09
!Pudding    = $0A
!StoneGolem = $0B
!IronGolem  = $0C
!Bee        = $0D
!Flytrap    = $0E
!Wolfsbane  = $0F
!Treant     = $10
!Dryad      = $11
!DireLiz    = $12
!Assassin   = $13
!Cyclops    = $14
!Ifrit      = $15
!Zero       = $16
!Gel        = $17
!Hobgoblin  = $18
!Fighter    = $19
!Lizardkin  = $1A
!Mage       = $1B
!Zombie     = $1C
!Skeleton   = $1D
!Witch      = $1E
!Basilisk   = $1F
!Manticore  = $20
!Bones      = $21
!Lamia      = $22
!Crocodile  = $23
!Warlock    = $24
!Troll      = $25
!Mimic      = $26
!Hydra      = $27
!Sauza      = $28
!Ghoul      = $29
!Bugbear    = $2A
!Knight     = $2B
!VampBee    = $2C
!Ghost      = $2D
!Lilith     = $2E
!Dragonian  = $2F
!Wight      = $30
!Lich       = $31
!Priest     = $32
!Sorcerer   = $33
!Alraune    = $34
!Giant      = $35
!SeaDgn     = $36
!EarthDgn   = $37
!Darah      = $38
!Barah      = $39
!Alan       = $3A
!Teefa      = $3B
!FlameDgn   = $3C
!CloudDgn   = $3D
!Jotun      = $3E
!Minotaur   = $3F
!SwrdMaster = $40
!Wizard     = $41
!DeathLich  = $42
!Bishop     = $43
!Sphinx     = $44
!Baal       = $45
!Medusa     = $46
!Wraith     = $47
!Phantom    = $48
!GiantBee   = $49
!KillerBee  = $4A
!Karla      = $4B
!Galneon1   = $4C
!Galneon2   = $4D
!Rimsala1   = $4E
!Rimsala2   = $4F

org $18913D
;Encounter Sets
; The game loads different enemies depending on your location in the dungeon. It then looks up the formations and rolls 1/16 to pick which fight you got.
Tbl_Ch_Encounter_Sets: dw Encounters_Ch1_tile10             ;18913D|        |189147;
                       dw Encounters_Ch2_tile10             ;18913F|        |189177;  
                       dw Encounters_Ch3_tile10             ;189141|        |1891AA;  
                       dw Encounters_Ch4_tile10             ;189143|        |1891DD;  
                       dw Encounters_Ch5_tile10             ;189145|        |189229;  

Encounters_Ch1_tile10: db $05                               ;189147|        |      ; Tile 10 (5 entries)
                       db $0A                               ;189148|        |      ; Zone 0A
                       db !Slime                            ;189149|        |      ;
                       db !Goblin                           ;18914A|        |      ;
                       db !Dog                              ;18914B|        |      ;
                       db !Lizardman                        ;18914C|        |      ; 07 Saurian->Lizardman
                       db !Chimera                          ;18914D|        |      ;

Encounters_Ch1_tile11: db $05                               ;18914E|        |      ; Tile 11 (5 entries)
                       db $0A                               ;18914F|        |      ; Zone 0A
                       db !Slime                            ;189150|        |      ;
                       db !Pickpocket                       ;189151|        |      ;
                       db !Wolf                             ;189152|        |      ;
                       db !Saurian                          ;189153|        |      ;
                       db !Chimera                          ;189154|        |      ;

Encounters_Ch1_tile12: db $05                               ;189155|        |      ; Tile 12 (5 entries)
                       db $0A                               ;189156|        |      ; Zone 0A
                       db !Slime                            ;189157|        |      ;
                       db !Thief                            ;189158|        |      ;
                       db !Dog                              ;189159|        |      ;
                       db !Saurian                          ;18915A|        |      ;
                       db !Chimera                          ;18915B|        |      ;

Encounters_Ch1_tile13: db $05                               ;18915C|        |      ; Tile 13 (5 entries)
                       db $00                               ;18915D|        |      ; Zone 00
                       db !Slime                            ;18915E|        |      ;
                       db !Orc                              ;18915F|        |      ;
                       db !Wolf                             ;189160|        |      ;
                       db !Saurian                          ;189161|        |      ;
                       db !Chimera                          ;189162|        |      ;

Encounters_Ch1_tile14: db $05                               ;189163|        |      ; Tile 14 (5 entries)
                       db $00                               ;189164|        |      ; Zone 00
                       db !Pudding                          ;189165|        |      ;
                       db !Thief                            ;189166|        |      ;
                       db !Dog                              ;189167|        |      ;
                       db !Lizardman                        ;189168|        |      ;
                       db !Chimera                          ;189169|        |      ;

Encounters_Ch1_tile15: db $05                               ;18916A|        |      ; Tile 15 (5 entries)
                       db $00                               ;18916B|        |      ; Zone 00
                       db !Pudding                          ;18916C|        |      ;
                       db !Thief                            ;18916D|        |      ;
                       db !Wolf                             ;18916E|        |      ;
                       db !Lizardman                        ;18916F|        |      ;
                       db !Chimera                          ;189170|        |      ;

Encounters_Ch1_tile16: db $11                               ;189171|        |      ; Tile 16 (1 entry)
                       db $01                               ;189172|        |      ; Zone 01 (boss)
                       db !StoneGolem                       ;189173|        |      ;

Encounters_Ch1_tile17: db $11                               ;189174|        |      ; Tile 17 (1 entry)
                       db $01                               ;189175|        |      ; Zone 01 (boss)
                       db !IronGolem                        ;189176|        |      ;

Encounters_Ch2_tile10: db $05                               ;189177|        |      ;  
                       db $0B                               ;189178|        |      ; Zone 0B
                       db !Slime                            ;189179|        |      ;
                       db !Goblin                           ;18917A|        |      ;
                       db !Flytrap                          ;18917B|        |      ;
                       db !Bee                              ;18917C|        |      ;
                       db !Chimera                          ;18917D|        |      ;

Encounters_Ch2_tile11: db $05                               ;18917E|        |      ;  
                       db $02                               ;18917F|        |      ; Zone 02
                       db !Dryad                            ;189180|        |      ;
                       db !Thief                            ;189181|        |      ;
                       db !Flytrap                          ;189182|        |      ;
                       db !Bee                              ;189183|        |      ;
                       db !Chimera                          ;189184|        |      ;

Encounters_Ch2_tile12: db $05                               ;189185|        |      ;  
                       db $02                               ;189186|        |      ; Zone 02
                       db !Treant                           ;189187|        |      ;
                       db !Assassin                         ;189188|        |      ; 02 Thief -> Assassin
                       db !Wolfsbane                        ;189189|        |      ;
                       db !Bee                              ;18918A|        |      ;
                       db !Chimera                          ;18918B|        |      ;

Encounters_Ch2_tile13: db $05                               ;18918C|        |      ;  
                       db $0B                               ;18918D|        |      ; Zone 0B
                       db !Pudding                          ;18918E|        |      ;
                       db !Thief                            ;18918F|        |      ;
                       db !Wolfsbane                        ;189190|        |      ;
                       db !DireLiz                          ;189191|        |      ;
                       db !Chimera                          ;189192|        |      ;

Encounters_Ch2_tile14: db $05                               ;189193|        |      ;  
                       db $0B                               ;189194|        |      ; Zone 0B
                       db !Pudding                          ;189195|        |      ;
                       db !Orc                              ;189196|        |      ; 13 Assassin -> 04 Orc
                       db !Flytrap                          ;189197|        |      ;
                       db !DireLiz                          ;189198|        |      ;
                       db !Chimera                          ;189199|        |      ;

Encounters_Ch2_tile15: db $05                               ;18919A|        |      ;  
                       db $0B                               ;18919B|        |      ; Zone 0B
                       db !Pudding                          ;18919C|        |      ;
                       db !Assassin                         ;18919D|        |      ;
                       db !Wolfsbane                        ;18919E|        |      ; 0E Flytrap -> Wolfsbane
                       db !DireLiz                          ;18919F|        |      ;
                       db !Chimera                          ;1891A0|        |      ;

Encounters_Ch2_tile16: db $11                               ;1891A1|        |      ;  
                       db $01                               ;1891A2|        |      ; Zone 01
                       db !Cyclops                          ;1891A3|        |      ;

Encounters_Ch2_tile17: db $11                               ;1891A4|        |      ;  
                       db $04                               ;1891A5|        |      ; Zone 04 
                       db !Ifrit                            ;1891A6|        |      ;

Encounters_Ch2_tile18: db $11                               ;1891A7|        |      ;  
                       db $05                               ;1891A8|        |      ; Zone 05
                       db !Zero                             ;1891A9|        |      ; 

Encounters_Ch3_tile10: db $05                               ;1891AA|        |      ;  
                       db $03                               ;1891AB|        |      ;  
                       db !Gel                              ;1891AC|        |      ;  
                       db !Hobgoblin                        ;1891AD|        |      ;  
                       db !Fighter                          ;1891AE|        |      ;  
                       db !Lizardkin                        ;1891AF|        |      ;  
                       db !Mage                             ;1891B0|        |      ;  

Encounters_Ch3_tile11: db $05                               ;1891B1|        |      ;  
                       db $03                               ;1891B2|        |      ;  
                       db !Zombie                           ;1891B3|        |      ;  
                       db !Skeleton                         ;1891B4|        |      ;  
                       db !Witch                            ;1891B5|        |      ;  
                       db !Lizardkin                        ;1891B6|        |      ;  
                       db !Mage                             ;1891B7|        |      ;  

Encounters_Ch3_tile12: db $05                               ;1891B8|        |      ;  
                       db $03                               ;1891B9|        |      ;  
                       db !Gel                              ;1891BA|        |      ;  
                       db !Skeleton                         ;1891BB|        |      ;  
                       db !Fighter                          ;1891BC|        |      ;  
                       db !Basilisk                         ;1891BD|        |      ;  
                       db !Manticore                        ;1891BE|        |      ;  

Encounters_Ch3_tile13: db $05                               ;1891BF|        |      ;  
                       db $03                               ;1891C0|        |      ;  
                       db !Gel                              ;1891C1|        |      ;  
                       db !Hobgoblin                        ;1891C2|        |      ;  
                       db !Witch                            ;1891C3|        |      ;  
                       db !Basilisk                         ;1891C4|        |      ;  
                       db !Manticore                        ;1891C5|        |      ;  

Encounters_Ch3_tile14: db $05                               ;1891C6|        |      ;  
                       db $03                               ;1891C7|        |      ;  
                       db !Zombie                           ;1891C8|        |      ;  
                       db !Bones                            ;1891C9|        |      ;  
                       db !Lamia                            ;1891CA|        |      ;  
                       db !Crocodile                        ;1891CB|        |      ;  
                       db !Warlock                          ;1891CC|        |      ;  

Encounters_Ch3_tile15: db $05                               ;1891CD|        |      ;  
                       db $06                               ;1891CE|        |      ;  
                       db !Troll                            ;1891CF|        |      ;  
                       db !Troll                            ;1891D0|        |      ;  
                       db !Fighter                          ;1891D1|        |      ;  
                       db !Crocodile                        ;1891D2|        |      ;  
                       db !Warlock                          ;1891D3|        |      ;  

Encounters_Ch3_tile16: db $01                               ;1891D4|        |      ;  
                       db $04                               ;1891D5|        |      ;  
                       db !Mimic                            ;1891D6|        |      ; Mimic!

Encounters_Ch3_tile17: db $11                               ;1891D7|        |      ;  
                       db $07                               ;1891D8|        |      ;  
                       db !Sauza                            ;1891D9|        |      ;  

Encounters_Ch3_tile18: db $11                               ;1891DA|        |      ;  
                       db $01                               ;1891DB|        |      ;  
                       db !Hydra                            ;1891DC|        |      ;  

Encounters_Ch4_tile10: db $05                               ;1891DD|        |      ;  
                       db $03                               ;1891DE|        |      ;  
                       db !Ghoul                            ;1891DF|        |      ;  
                       db !Bugbear                          ;1891E0|        |      ;  
                       db !Knight                           ;1891E1|        |      ;  
                       db !VampBee                          ;1891E2|        |      ;
                       db !Mage                             ;1891E3|        |      ;24 Warlock -> Mage  

Encounters_Ch4_tile11: db $05                               ;1891E4|        |      ;  
                       db $03                               ;1891E5|        |      ;  
                       db !Ghoul                            ;1891E6|        |      ;  
                       db !Bugbear                          ;1891E7|        |      ;  
                       db !Knight                           ;1891E8|        |      ;  
                       db !VampBee                          ;1891E9|        |      ;  
                       db !Warlock                          ;1891EA|        |      ;  

Encounters_Ch4_tile12: db $05                               ;1891EB|        |      ;  
                       db $03                               ;1891EC|        |      ;  
                       db !Ghost                            ;1891ED|        |      ;  
                       db !Bugbear                          ;1891EE|        |      ;  
                       db !Lilith                           ;1891EF|        |      ;  
                       db !Dragonian                        ;1891F0|        |      ;  
                       db !Warlock                          ;1891F1|        |      ;  

Encounters_Ch4_tile13: db $05                               ;1891F2|        |      ;  
                       db $03                               ;1891F3|        |      ;  
                       db !Wight                            ;1891F4|        |      ;  
                       db !Lich                             ;1891F5|        |      ;  
                       db !Lilith                           ;1891F6|        |      ;  
                       db !Priest                           ;1891F7|        |      ;  
                       db !Sorcerer                         ;1891F8|        |      ;  

Encounters_Ch4_tile14: db $05                               ;1891F9|        |      ;  
                       db $03                               ;1891FA|        |      ;  
                       db !Ghost                            ;1891FB|        |      ;  
                       db !Lich                             ;1891FC|        |      ;  
                       db !Alraune                          ;1891FD|        |      ;  
                       db !Dragonian                        ;1891FE|        |      ;  
                       db !Sorcerer                         ;1891FF|        |      ;  

Encounters_Ch4_tile15: db $05                               ;189200|        |      ;  
                       db $03                               ;189201|        |      ;  
                       db !Wight                            ;189202|        |      ;  
                       db !Lich                             ;189203|        |      ;  
                       db !Alraune                          ;189204|        |      ;  
                       db !Priest                           ;189205|        |      ;  
                       db !Sorcerer                         ;189206|        |      ;  

Encounters_Ch4_tile16: db $05                               ;189207|        |      ;  
                       db $06                               ;189208|        |      ;  
                       db !Giant                            ;189209|        |      ;  
                       db !Giant                            ;18920A|        |      ;  
                       db !Lilith                           ;18920B|        |      ;  
                       db !Dragonian                        ;18920C|        |      ;  
                       db !Warlock                          ;18920D|        |      ;  

Encounters_Ch4_tile17: db $05                               ;18920E|        |      ;  
                       db $06                               ;18920F|        |      ;  
                       db !SeaDgn                           ;189210|        |      ;  
                       db !SeaDgn                           ;189211|        |      ;  
                       db !Knight                           ;189212|        |      ;  
                       db !Priest                           ;189213|        |      ;  
                       db !Sorcerer                         ;189214|        |      ;  

Encounters_Ch4_tile18: db $05                               ;189215|        |      ;  
                       db $06                               ;189216|        |      ;  
                       db !EarthDgn                         ;189217|        |      ;  
                       db !EarthDgn                         ;189218|        |      ;  
                       db !Knight                           ;189219|        |      ;  
                       db !Priest                           ;18921A|        |      ;  
                       db !Sorcerer                         ;18921B|        |      ;  

Encounters_Ch4_tile19: db $11                               ;18921C|        |      ;  
                       db $01                               ;18921D|        |      ;  
                       db !Darah                            ;18921E|        |      ;  

Encounters_Ch4_tile1A: db $02                               ;18921F|        |      ;  
                       db $08                               ;189220|        |      ;  
                       db !Darah                            ;189221|        |      ;  
                       db !Barah                            ;189222|        |      ;  

Encounters_Ch4_tile1B: db $01                               ;189223|        |      ;  
                       db $01                               ;189224|        |      ;  
                       db !Alan                             ;189225|        |      ;  

Encounters_Ch4_tile1C: db $01                               ;189226|        |      ;  
                       db $01                               ;189227|        |      ;  
                       db !Teefa                            ;189228|        |      ;  

Encounters_Ch5_tile10: db $05                               ;189229|        |      ;  
                       db $06                               ;18922A|        |      ;  
                       db !SeaDgn                           ;18922B|        |      ;  
                       db !SeaDgn                           ;18922C|        |      ;  
                       db !SwrdMaster                       ;18922D|        |      ;  
                       db !Bishop                           ;18922E|        |      ;  
                       db !Wizard                           ;18922F|        |      ;  

Encounters_Ch5_tile11: db $05                               ;189230|        |      ;  
                       db $06                               ;189231|        |      ;  
                       db !EarthDgn                         ;189232|        |      ;  
                       db !EarthDgn                         ;189233|        |      ;  
                       db !SwrdMaster                       ;189234|        |      ;  
                       db !Bishop                           ;189235|        |      ;  
                       db !Wizard                           ;189236|        |      ;  

Encounters_Ch5_tile12: db $05                               ;189237|        |      ;  
                       db $06                               ;189238|        |      ;  
                       db !FlameDgn                         ;189239|        |      ;  
                       db !FlameDgn                         ;18923A|        |      ;  
                       db !SwrdMaster                       ;18923B|        |      ;  
                       db !Bishop                           ;18923C|        |      ;  
                       db !Wizard                           ;18923D|        |      ;  

Encounters_Ch5_tile13: db $05                               ;18923E|        |      ;  
                       db $06                               ;18923F|        |      ;  
                       db !CloudDgn                         ;189240|        |      ;  
                       db !CloudDgn                         ;189241|        |      ;  
                       db !SwrdMaster                       ;189242|        |      ;  
                       db !Bishop                           ;189243|        |      ;  
                       db !Wizard                           ;189244|        |      ;  

Encounters_Ch5_tile14: db $05                               ;189245|        |      ;  
                       db $06                               ;189246|        |      ;  
                       db !Jotun                            ;189247|        |      ;  
                       db !Jotun                            ;189248|        |      ;  
                       db !Medusa                           ;189249|        |      ;  
                       db !GiantBee                         ;18924A|        |      ;  
                       db !Sphinx                           ;18924B|        |      ;  

Encounters_Ch5_tile15: db $05                               ;18924C|        |      ;  
                       db $06                               ;18924D|        |      ;  
                       db !Minotaur                         ;18924E|        |      ;  
                       db !Minotaur                         ;18924F|        |      ;  
                       db !Medusa                           ;189250|        |      ;  
                       db !KillerBee                        ;189251|        |      ;  
                       db !Baal                            ;189252|        |      ;  

Encounters_Ch5_tile16: db $05                               ;189253|        |      ;  
                       db $03                               ;189254|        |      ;  
                       db !Wraith                           ;189255|        |      ;  
                       db !DeathLich                        ;189256|        |      ;  
                       db !SwrdMaster                       ;189257|        |      ;  
                       db !Bishop                           ;189258|        |      ;  
                       db !Wizard                           ;189259|        |      ;  

Encounters_Ch5_tile17: db $05                               ;18925A|        |      ;  
                       db $03                               ;18925B|        |      ;  
                       db !Phantom                          ;18925C|        |      ;  
                       db !DeathLich                        ;18925D|        |      ;  
                       db !Medusa                           ;18925E|        |      ;  
                       db !Bishop                           ;18925F|        |      ;  
                       db !Baal                            ;189260|        |      ;  

Encounters_Ch5_tile18: db $11                               ;189261|        |      ;  
                       db $01                               ;189262|        |      ;  
                       db !Karla                            ;189263|        |      ;  

Encounters_Ch5_tile19: db $01                               ;189264|        |      ;  
                       db $01                               ;189265|        |      ;  
                       db !Galneon1                         ;189266|        |      ;  

Encounters_Ch5_tile1A: db $11                               ;189267|        |      ;  
                       db $01                               ;189268|        |      ;  
                       db !Galneon2                         ;189269|        |      ;  

Encounters_Ch5_tile1B: db $21                               ;18926A|        |      ;  
                       db $09                               ;18926B|        |      ;  
                       db !Rimsala1                         ;18926C|        |      ;  

Encounters_Ch5_tile1C: db $31                               ;18926D|        |      ;  
                       db $09                               ;18926E|        |      ;  
                       db !Rimsala2                         ;18926F|        |      ;  


; Zone Formations
; These contain the sixteen possible encounters for a map tile. Each enemy has a screen position then an encounter slot ID. Slot IDs are placeholders 00-04 and pull the encounters for that map position.
org $189270
  Tbl_Zone_Formations: dw Formation_Zone_00_Num_Entries     ;189270|        |189288;
                       dw Formation_Zone_01_Num_Entries     ;189272|        |189305;  
                       dw Formation_Zone_02_Num_Entries     ;189274|        |189309;  
                       dw Formation_Zone_03_Num_Entries     ;189276|        |18937C;  
                       dw Formation_Zone_04_Num_Entries     ;189278|        |1893FF;  
                       dw Formation_Zone_05_Num_Entries     ;18927A|        |189403;  
                       dw Formation_Zone_06_Num_Entries     ;18927C|        |189407;  
                       dw Formation_Zone_07_Num_Entries     ;18927E|        |18946E;  
                       dw Formation_Zone_08_Num_Entries     ;189280|        |189472;  
                       dw Formation_Zone_09_Num_Entries     ;189282|        |189478;  
                       dw Formation_Zone_0A_Num_Entries     ;189284|        |18947C;  
                       dw Formation_Zone_0B_Num_Entries     ;189286|        |1894D9;  


;Zone 00: Used in Ch1 for tiles 13-15 
;***2.1: Replacing 8 slimes->5 slimes: FF x6 10 05 0025 0026 0044 0047 0048
org $189288
Formation_Zone_00_Num_Entries:
                       db $10                               ;189288|        |      ; 10=Sixteen entries

Formation_Zone_00_Layout_00:
                       db $08                               ;189289|        |      ; 08: 8 enemies. (Encounter 00: slot 00 x8)
                       dw $0004                             ;18928A|        |      ; 04: Place at bottom center
                       dw $0007                             ;18928C|        |      ; 07: Place at bottom left
                       dw $0008                             ;18928E|        |      ; 08: Place at bottom right
                       dw $0025                             ;189290|        |      ; #4: Center Left
                       dw $0026                             ;189292|        |      ; #5: Center right
                       dw $0044                             ;189294|        |      ; #6: Back center
                       dw $0047                             ;189296|        |      ; #7: Back left
                       dw $0048                             ;189298|        |      ; #8: Back right

Formation_Zone_00_Layout_01: 
                       db $01                               ;18929A|        |      ; Encounter 01: (slot 03 x1)
                       dw $0304                             ;18929B|        |      ; Place at bottom center

Formation_Zone_00_Layout_02:
                       db $01                               ;18929D|        |      ; Encounter 02: (slot 04 x1)
                       dw $0404                             ;18929E|        |      ; Place at bottom center

Formation_Zone_00_Layout_03: 
                       db $03                               ;1892A0|        |      ; Encounter 03: (slot 02 x2, slot 03 x1)
                       dw $0204                             ;1892A1|        |      ;  
                       dw $0307                             ;1892A3|        |      ;  
                       dw $0208                             ;1892A5|        |      ;  

Formation_Zone_00_Layout_04:
                       db $03                               ;1892A7|        |      ; Encounter 04: (slot 02 x2, slot 04 x1)
                       dw $0205                             ;1892A8|        |      ;  
                       dw $0206                             ;1892AA|        |      ;  
                       dw $0424                             ;1892AC|        |      ;  

Formation_Zone_00_Layout_05:
                       db $03                               ;1892AE|        |      ;  
                       dw $0305                             ;1892AF|        |      ; Encounter 05: (slot 03 x2, slot 04 x1)
                       dw $0306                             ;1892B1|        |      ;  
                       dw $0424                             ;1892B3|        |      ;  

Formation_Zone_00_Layout_06:
                       db $05                               ;1892B5|        |      ; Encounter 06: (slot 00 x2, slot 03 x2, slot 04 x1)
                       dw $0007                             ;1892B6|        |      ;  
                       dw $0008                             ;1892B8|        |      ;  
                       dw $0325                             ;1892BA|        |      ;  
                       dw $0326                             ;1892BC|        |      ;  
                       dw $0444                             ;1892BE|        |      ;  

Formation_Zone_00_Layout_07:
                       db $05                               ;1892C0|        |      ; Encounter 07: (slot 03 x1, slot 01 x2, slot 00 x2)
                       dw $0304                             ;1892C1|        |      ;  
                       dw $0125                             ;1892C3|        |      ;  
                       dw $0126                             ;1892C5|        |      ;  
                       dw $0047                             ;1892C7|        |      ;  
                       dw $0048                             ;1892C9|        |      ;  

Formation_Zone_00_Layout_08:
                       db $02                               ;1892CB|        |      ; Encounter 08: (slot 03 x2)
                       dw $0305                             ;1892CC|        |      ;  
                       dw $0306                             ;1892CE|        |      ;  

Formation_Zone_00_Layout_09:
                       db $02                               ;1892D0|        |      ; Encounter 09: (slot 04 x2)
                       dw $0405                             ;1892D1|        |      ;  
                       dw $0406                             ;1892D3|        |      ;  

Formation_Zone_00_Layout_0A:
                       db $02                               ;1892D5|        |      ; Encounter 0A: (slot 03 x1, slot 04 x1)
                       dw $0305                             ;1892D6|        |      ;  
                       dw $0406                             ;1892D8|        |      ;  

Formation_Zone_00_Layout_0B:
                       db $05                               ;1892DA|        |      ; Encounter 0B: (slot 00 x4, slot 01 x1)
                       dw $0005                             ;1892DB|        |      ;  
                       dw $0006                             ;1892DD|        |      ;  
                       dw $0124                             ;1892DF|        |      ;  
                       dw $0027                             ;1892E1|        |      ;  
                       dw $0028                             ;1892E3|        |      ;  

Formation_Zone_00_Layout_0C:
                       db $03                               ;1892E5|        |      ; Encounter 0C: (slot 02 x3)
                       dw $0204                             ;1892E6|        |      ;  
                       dw $0207                             ;1892E8|        |      ;  
                       dw $0208                             ;1892EA|        |      ;  

Formation_Zone_00_Layout_0D:
                       db $03                               ;1892EC|        |      ; Encounter 0D: (slot 02 x1, slot 00 x1, slot 03 x1)
                       dw $0207                             ;1892ED|        |      ;  
                       dw $0024                             ;1892EF|        |      ;  
                       dw $0348                             ;1892F1|        |      ;  

Formation_Zone_00_Layout_0E:
                       db $05                               ;1892F3|        |      ; Encounter 0E: (slot 02 x2, slot 00 x1, slot 04 x2)
                       dw $0205                             ;1892F4|        |      ;  
                       dw $0206                             ;1892F6|        |      ;  
                       dw $0024                             ;1892F8|        |      ;  
                       dw $0447                             ;1892FA|        |      ;  
                       dw $0448                             ;1892FC|        |      ;  

Formation_Zone_00_Layout_0F:
                       db $03                               ;1892FE|        |      ; Encounter 0F: (slot 03 x2, slot 04 x1)
                       dw $0307                             ;1892FF|        |      ;  
                       dw $0308                             ;189301|        |      ;  
                       dw $0424                             ;189303|        |      ;  


;Zone 01: Used by some solo bosses
org $189305
Formation_Zone_01_Num_Entries:
                       db $01                               ;189305|        |      ;  

Formation_Zone_01_Boss:
                       db $01                               ;189306|        |      ; 
                       dw $0009                             ;189307|        |      ;  


;Zone 02: Used by Ch2 tiles 11,12 (Forest of Doubt)
org $189309
Formation_Zone_02_Num_Entries:
                       db $10                               ;189309|        |      

Formation_Zone_02_Layout_00:
                       db $02                               ;18930A|        |      ;  
                       dw $0005                             ;18930B|        |      ;  
                       dw $0006                             ;18930D|        |      ;  

Formation_Zone_02_Layout_01:
                       db $02                               ;18930F|        |      ;  
                       dw $0205                             ;189310|        |      ;  
                       dw $0206                             ;189312|        |      ;  

Formation_Zone_02_Layout_02:
                       db $03                               ;189314|        |      ;  
                       dw $0005                             ;189315|        |      ;  
                       dw $0006                             ;189317|        |      ;  
                       dw $0224                             ;189319|        |      ;  

Formation_Zone_02_Layout_03:
                       db $05                               ;18931B|        |      ;  
                       dw $0207                             ;18931C|        |      ;  
                       dw $0208                             ;18931E|        |      ;  
                       dw $0024                             ;189320|        |      ;  
                       dw $0345                             ;189322|        |      ;  
                       dw $0346                             ;189324|        |      ;  

Formation_Zone_02_Layout_04:
                       db $01                               ;189326|        |      ;  
                       dw $0344                             ;189327|        |      ;  

Formation_Zone_02_Layout_05:
                       db $03                               ;189329|        |      ;  
                       dw $0204                             ;18932A|        |      ;  
                       dw $0207                             ;18932C|        |      ;  
                       dw $0208                             ;18932E|        |      ;  

Formation_Zone_02_Layout_06:
                       db $03                               ;189330|        |      ;  
                       dw $0005                             ;189331|        |      ;  
                       dw $0006                             ;189333|        |      ;  
                       dw $0024                             ;189335|        |      ;  

Formation_Zone_02_Layout_07:
                       db $01                               ;189337|        |      ;  
                       dw $0004                             ;189338|        |      ;  

Formation_Zone_02_Layout_08:
                       db $01                               ;18933A|        |      ;  
                       dw $0204                             ;18933B|        |      ;  

Formation_Zone_02_Layout_09:
                       db $01                               ;18933D|        |      ;  
                       dw $0404                             ;18933E|        |      ;  

Formation_Zone_02_Layout_0A:
                       db $05                               ;189340|        |      ;  
                       dw $0104                             ;189341|        |      ;  $0004 -> $0104 (Thief is 0/16 here otherwise)
                       dw $0007                             ;189343|        |      ;  
                       dw $0008                             ;189345|        |      ;  
                       dw $0225                             ;189347|        |      ;  
                       dw $0226                             ;189349|        |      ;  

Formation_Zone_02_Layout_0B:
                       db $06                               ;18934B|        |      ;  
                       dw $0204                             ;18934C|        |      ;  
                       dw $0207                             ;18934E|        |      ;  
                       dw $0208                             ;189350|        |      ;  
                       dw $0025                             ;189352|        |      ;  
                       dw $0026                             ;189354|        |      ;  
                       dw $0344                             ;189356|        |      ;  

Formation_Zone_02_Layout_0C:
                       db $06                               ;189358|        |      ;  
                       dw $0105                             ;189359|        |      ;  $0005 -> $0105 (Thief 0/16 -> 2/16)
                       dw $0106                             ;18935B|        |      ;  $0006 -> $0106
                       dw $0027                             ;18935D|        |      ;  
                       dw $0028                             ;18935F|        |      ;  
                       dw $0045                             ;189361|        |      ;  
                       dw $0046                             ;189363|        |      ;  

Formation_Zone_02_Layout_0D:
                       db $03                               ;189365|        |      ;  
                       dw $0224                             ;189366|        |      ;  <-Adjusted awkward position
                       dw $0045                             ;189368|        |      ;  < (Vertical line of enemies)
                       dw $0346                             ;18936A|        |      ;  <

Formation_Zone_02_Layout_0E:
                       db $03                               ;18936C|        |      ;  
                       dw $0005                             ;18936D|        |      ;  
                       dw $0206                             ;18936F|        |      ;  
                       dw $0424                             ;189371|        |      ;  

Formation_Zone_02_Layout_0F:
                       db $04                               ;189373|        |      ;  
                       dw $0207                             ;189374|        |      ;  
                       dw $0208                             ;189376|        |      ;  
                       dw $0225                             ;189378|        |      ;  
                       dw $0226                             ;18937A|        |      ;  


; Zone 03: Used by Ch 3 (tiles 10-14), Ch 4 (tiles 10-15), Ch 5 (tiles 16-17)
;***2.1: Replacing 7 encounter: FF FF FF FF; Layout 6 removed back row $0445, $0446
org $18937C
Formation_Zone_03_Num_Entries:
                       db $10                               ;18937C|        |      

Formation_Zone_03_Layout_00:
                       db $01                               ;18937D|        |      ;  
                       dw $0204                             ;18937E|        |      ;  

Formation_Zone_03_Layout_01:
                       db $01                               ;189380|        |      ;  
                       dw $0304                             ;189381|        |      ;  

Formation_Zone_03_Layout_02:
                       db $01                               ;189383|        |      ;  
                       dw $0404                             ;189384|        |      ;  

Formation_Zone_03_Layout_03:
                       db $01                               ;189386|        |      ;  
                       dw $0104                             ;189387|        |      ;  

Formation_Zone_03_Layout_04:
                       db $03                               ;189389|        |      ;  
                       dw $0105                             ;18938A|        |      ;  
                       dw $0106                             ;18938C|        |      ;  
                       dw $0124                             ;18938E|        |      ;  

Formation_Zone_03_Layout_05:
                       db $03                               ;189390|        |      ;  
                       dw $0205                             ;189391|        |      ;  
                       dw $0206                             ;189393|        |      ;  
                       dw $0424                             ;189395|        |      ;  

Formation_Zone_03_Layout_06:
                       db $07                               ;189397|        |      ;  
                       dw $0405                             ;189398|        |      ;  
                       dw $0406                             ;18939A|        |      ;  
                       dw $0224                             ;18939C|        |      ;  
                       dw $0427                             ;18939E|        |      ;  
                       dw $0428                             ;1893A0|        |      ;  
                       dw $0445                             ;1893A2|        |      ;  
                       dw $0446                             ;1893A4|        |      ;  

Formation_Zone_03_Layout_07:
                       db $05                               ;1893A6|        |      ;  
                       dw $0005                             ;1893A7|        |      ;  
                       dw $0006                             ;1893A9|        |      ;  
                       dw $0324                             ;1893AB|        |      ;  
                       dw $0247                             ;1893AD|        |      ;  
                       dw $0248                             ;1893AF|        |      ;  

Formation_Zone_03_Layout_08:
                       db $05                               ;1893B1|        |      ;  
                       dw $0107                             ;1893B2|        |      ;  
                       dw $0108                             ;1893B4|        |      ;  
                       dw $0324                             ;1893B6|        |      ;  
                       dw $0245                             ;1893B8|        |      ;  
                       dw $0246                             ;1893BA|        |      ;  

Formation_Zone_03_Layout_09:
                       db $05                               ;1893BC|        |      ;  
                       dw $0404                             ;1893BD|        |      ;  
                       dw $0127                             ;1893BF|        |      ;  
                       dw $0228                             ;1893C1|        |      ;  
                       dw $0345                             ;1893C3|        |      ;  
                       dw $0346                             ;1893C5|        |      ;  

Formation_Zone_03_Layout_0A:
                       db $05                               ;1893C7|        |      ;  
                       dw $0004                             ;1893C8|        |      ;  
                       dw $0107                             ;1893CA|        |      ;  
                       dw $0208                             ;1893CC|        |      ;  
                       dw $0325                             ;1893CE|        |      ;  
                       dw $0426                             ;1893D0|        |      ;  

Formation_Zone_03_Layout_0B:
                       db $05                               ;1893D2|        |      ;  
                       dw $0106                             ;1893D3|        |      ;  
                       dw $0107                             ;1893D5|        |      ;  
                       dw $0125                             ;1893D7|        |      ;  
                       dw $0028                             ;1893D9|        |      ;  
                       dw $0044                             ;1893DB|        |      ;  

Formation_Zone_03_Layout_0C:
                       db $03                               ;1893DD|        |      ;  
                       dw $0104                             ;1893DE|        |      ;  
                       dw $0207                             ;1893E0|        |      ;  
                       dw $0208                             ;1893E2|        |      ;  

Formation_Zone_03_Layout_0D:
                       db $05                               ;1893E4|        |      ;  
                       dw $0007                             ;1893E5|        |      ;  
                       dw $0008                             ;1893E7|        |      ;  
                       dw $0125                             ;1893E9|        |      ;  
                       dw $0126                             ;1893EB|        |      ;  
                       dw $0244                             ;1893ED|        |      ;  

Formation_Zone_03_Layout_0E:
                       db $02                               ;1893EF|        |      ;  
                       dw $0405                             ;1893F0|        |      ;  
                       dw $0206                             ;1893F2|        |      ;  

Formation_Zone_03_Layout_0F:
                       db $05                               ;1893F4|        |      ;  
                       dw $0007                             ;1893F5|        |      ;  Enemy 04 -> Enemy 00
                       dw $0008                             ;1893F7|        |      ;  Enemy 04 -> Enemy 00
                       dw $0224                             ;1893F9|        |      ;  
                       dw $0447                             ;1893FB|        |      ;  
                       dw $0448                             ;1893FD|        |      ;  


; Zone 04: Used by Ch 2 Efrite (tile 17), Ch 3 Mimic (tile 16, unused)
org $1893FF
Formation_Zone_04_Num_Entries:
                       db $01                               ;1893FF|        |      

Formation_Zone_04_Boss:
                       db $01                               ;189400|        |      ;  
                       dw $0009                             ;189401|        |      ;  


; Zone 05: Used by Zerel
Formation_Zone_05_Num_Entries:
                       db $01                               ;189403|        |      

Formation_Zone_05_Boss:
                       db $01                               ;189404|        |      ;  
                       dw $000A                             ;189405|        |      ;  


; Zone 06: Used by Ch 3 tile 15 (part of bottom floor), Ch 4 tile 16-18/26-28, Ch 5 tile 10-15
org $189407
Formation_Zone_06_Num_Entries:
                       db $10                               ;189407|        |      

Formation_Zone_06_Layout_00:
                       db $02                               ;189408|        |      ;  
                       dw $000B                             ;189409|        |      ;  
                       dw $000C                             ;18940B|        |      ;  

Formation_Zone_06_Layout_01:
                       db $01                               ;18940D|        |      ;  
                       dw $0009                             ;18940E|        |      ;  

Formation_Zone_06_Layout_02:
                       db $03                               ;189410|        |      ;  
                       dw $0205                             ;189411|        |      ;  
                       dw $0206                             ;189413|        |      ;  
                       dw $0029                             ;189415|        |      ;  

Formation_Zone_06_Layout_03:
                       db $03                               ;189417|        |      ;  
                       dw $0305                             ;189418|        |      ;  
                       dw $0306                             ;18941A|        |      ;  
                       dw $0029                             ;18941C|        |      ;  

Formation_Zone_06_Layout_04:
                       db $03                               ;18941E|        |      ;  
                       dw $0405                             ;18941F|        |      ;  
                       dw $0406                             ;189421|        |      ;  
                       dw $0029                             ;189423|        |      ;  

Formation_Zone_06_Layout_05:
                       db $03                               ;189425|        |      ;  
                       dw $0305                             ;189426|        |      ;  
                       dw $0406                             ;189428|        |      ;  
                       dw $0029                             ;18942A|        |      ;  

Formation_Zone_06_Layout_06:
                       db $02                               ;18942C|        |      ;  
                       dw $000B                             ;18942D|        |      ;  
                       dw $000C                             ;18942F|        |      ;  

Formation_Zone_06_Layout_07:
                       db $02                               ;189431|        |      ;  
                       dw $000B                             ;189432|        |      ;  
                       dw $000C                             ;189434|        |      ;  

Formation_Zone_06_Layout_08:
                       db $02                               ;189436|        |      ;  
                       dw $000B                             ;189437|        |      ;  
                       dw $000C                             ;189439|        |      ;  

Formation_Zone_06_Layout_09:
                       db $04                               ;18943B|        |      ;  
                       dw $0204                             ;18943C|        |      ;  
                       dw $0207                             ;18943E|        |      ;  
                       dw $0208                             ;189440|        |      ;  
                       dw $0029                             ;189442|        |      ;  

Formation_Zone_06_Layout_0A:
                       db $04                               ;189444|        |      ;  
                       dw $0304                             ;189445|        |      ;  
                       dw $0307                             ;189447|        |      ;  
                       dw $0308                             ;189449|        |      ;  
                       dw $0029                             ;18944B|        |      ;  

Formation_Zone_06_Layout_0B:
                       db $04                               ;18944D|        |      ;  
                       dw $0404                             ;18944E|        |      ;  
                       dw $0407                             ;189450|        |      ;  
                       dw $0408                             ;189452|        |      ;  
                       dw $0029                             ;189454|        |      ;  

Formation_Zone_06_Layout_0C:
                       db $04                               ;189456|        |      ;  
                       dw $0304                             ;189457|        |      ;  
                       dw $0207                             ;189459|        |      ;  
                       dw $0408                             ;18945B|        |      ;  
                       dw $0029                             ;18945D|        |      ;  

Formation_Zone_06_Layout_0D:
                       db $02                               ;18945F|        |      ;  
                       dw $000B                             ;189460|        |      ;  
                       dw $000C                             ;189462|        |      ;  

Formation_Zone_06_Layout_0E:
                       db $02                               ;189464|        |      ;  
                       dw $000B                             ;189465|        |      ;  
                       dw $000C                             ;189467|        |      ;  

Formation_Zone_06_Layout_0F:
                       db $02                               ;189469|        |      ;  
                       dw $000B                             ;18946A|        |      ;  
                       dw $000C                             ;18946C|        |      ;  


; Zone 07: Used by Hydra
org $18946E
Formation_Zone_07_Num_Entries:
                       db $01                               ;18946E|        |      ; 

Formation_Zone_07_Boss:
                       db $01                               ;18946F|        |      ;  
                       dw $000C                             ;189470|        |      ;  


; Zone 08: Used by Darah/Barah
org $189472
Formation_Zone_08_Num_Entries:
                       db $01                               ;189472|        |      ; 

Formation_Zone_08_Boss:
                       db $02                               ;189473|        |      ;  
                       dw $000B                             ;189474|        |      ;  
                       dw $010C                             ;189476|        |      ;  


; Zone 09: Used by Rimsala 1+2
org $189478
Formation_Zone_09_Num_Entries:
                       db $01                               ;189478|        |      ; 

Formation_Zone_09_Boss:
                       db $01                               ;189479|        |      ;  
                       dw $000E                             ;18947A|        |      ;  


; Zone 0A: Used by Ch1, tiles 10-12 (Balnea 1F)
org $18947C
Formation_Zone_0A_Num_Entries:
                       db $10                               ;18947C|        |      ; 

Formation_Zone_0A_Layout_00:
                       db $01                               ;18947D|        |      ;  
                       dw $0004                             ;18947E|        |      ;  

Formation_Zone_0A_Layout_01:
                       db $01                               ;189480|        |      ;  
                       dw $0104                             ;189481|        |      ;  

Formation_Zone_0A_Layout_02:
                       db $01                               ;189483|        |      ;  
                       dw $0204                             ;189484|        |      ;  

Formation_Zone_0A_Layout_03:
                       db $02                               ;189486|        |      ;  
                       dw $0005                             ;189487|        |      ;  
                       dw $0006                             ;189489|        |      ;  

Formation_Zone_0A_Layout_04:
                       db $02                               ;18948B|        |      ;  
                       dw $0105                             ;18948C|        |      ;  
                       dw $0106                             ;18948E|        |      ;  

Formation_Zone_0A_Layout_05:
                       db $02                               ;189490|        |      ;  
                       dw $0205                             ;189491|        |      ;  
                       dw $0206                             ;189493|        |      ;  

Formation_Zone_0A_Layout_06:
                       db $03                               ;189495|        |      ;  
                       dw $0005                             ;189496|        |      ;  
                       dw $0006                             ;189498|        |      ;  
                       dw $0224                             ;18949A|        |      ;  

Formation_Zone_0A_Layout_07:
                       db $03                               ;18949C|        |      ;  
                       dw $0105                             ;18949D|        |      ;  
                       dw $0406                             ;18949F|        |      ;  $0106 -> $0406 (Thiefs 7/16 -> Chimera 1/16)
                       dw $0224                             ;1894A1|        |      ;  

Formation_Zone_0A_Layout_08:
                       db $03                               ;1894A3|        |      ;  
                       dw $0205                             ;1894A4|        |      ;  
                       dw $0206                             ;1894A6|        |      ;  
                       dw $0324                             ;1894A8|        |      ;  

Formation_Zone_0A_Layout_09:
                       db $03                               ;1894AA|        |      ;  
                       dw $0005                             ;1894AB|        |      ;  
                       dw $0006                             ;1894AD|        |      ;  
                       dw $0024                             ;1894AF|        |      ;  

Formation_Zone_0A_Layout_0A:
                       db $03                               ;1894B1|        |      ;  
                       dw $0107                             ;1894B2|        |      ;  
                       dw $0208                             ;1894B4|        |      ;  
                       dw $0024                             ;1894B6|        |      ;  

Formation_Zone_0A_Layout_0B:
                       db $03                               ;1894B8|        |      ;  
                       dw $0204                             ;1894B9|        |      ;  
                       dw $0025                             ;1894BB|        |      ;  
                       dw $0026                             ;1894BD|        |      ;  

Formation_Zone_0A_Layout_0C:
                       db $02                               ;1894BF|        |      ;  
                       dw $0005                             ;1894C0|        |      ;  
                       dw $0106                             ;1894C2|        |      ;  

Formation_Zone_0A_Layout_0D:
                       db $02                               ;1894C4|        |      ;  
                       dw $0105                             ;1894C5|        |      ;  
                       dw $0206                             ;1894C7|        |      ;  

Formation_Zone_0A_Layout_0E:
                       db $02                               ;1894C9|        |      ;  
                       dw $0205                             ;1894CA|        |      ;  
                       dw $0006                             ;1894CC|        |      ;  

Formation_Zone_0A_Layout_0F:
                       db $05                               ;1894CE|        |      ;  
                       dw $0004                             ;1894CF|        |      ;  
                       dw $0007                             ;1894D1|        |      ;  
                       dw $0008                             ;1894D3|        |      ;  
                       dw $0125                             ;1894D5|        |      ;  
                       dw $0126                             ;1894D7|        |      ;  


; Zone 0B: Used by Ch 2 (Draven Pass/Crimson Valley)
; ***2.1: Layout 0A reduced 6 to 5 entries ($0344 back center removed)
org $1894D9
Formation_Zone_0B_Num_Entries:
                       db $10                               ;1894D9|        |      ; 

Formation_Zone_0B_Layout_00:
                       db $01                               ;1894DA|        |      ;  
                       dw $0104                             ;1894DB|        |      ;  

Formation_Zone_0B_Layout_01:
                       db $02                               ;1894DD|        |      ;  
                       dw $0005                             ;1894DE|        |      ;  
                       dw $0006                             ;1894E0|        |      ;  

Formation_Zone_0B_Layout_02:
                       db $03                               ;1894E2|        |      ;  
                       dw $0105                             ;1894E3|        |      ;  
                       dw $0106                             ;1894E5|        |      ;  
                       dw $0324                             ;1894E7|        |      ;  

Formation_Zone_0B_Layout_03:
                       db $03                               ;1894E9|        |      ;  
                       dw $0404                             ;1894EA|        |      ;  
                       dw $0307                             ;1894EC|        |      ;  
                       dw $0308                             ;1894EE|        |      ;  

Formation_Zone_0B_Layout_04:
                       db $01                               ;1894F0|        |      ;  
                       dw $0304                             ;1894F1|        |      ;  

Formation_Zone_0B_Layout_05:
                       db $03                               ;1894F3|        |      ;  
                       dw $0105                             ;1894F4|        |      ;  
                       dw $0106                             ;1894F6|        |      ;  
                       dw $0424                             ;1894F8|        |      ;  

Formation_Zone_0B_Layout_06:
                       db $03                               ;1894FA|        |      ;  
                       dw $0004                             ;1894FB|        |      ;  
                       dw $0007                             ;1894FD|        |      ;  
                       dw $0008                             ;1894FF|        |      ;  

Formation_Zone_0B_Layout_07:
                       db $05                               ;189501|        |      ;  
                       dw $0404                             ;189502|        |      ;  
                       dw $0407                             ;189504|        |      ;  
                       dw $0408                             ;189506|        |      ;  
                       dw $0325                             ;189508|        |      ;  
                       dw $0326                             ;18950A|        |      ;  

Formation_Zone_0B_Layout_08:
                       db $03                               ;18950C|        |      ;  
                       dw $0404                             ;18950D|        |      ;  
                       dw $0107                             ;18950F|        |      ;  
                       dw $0108                             ;189511|        |      ;  

Formation_Zone_0B_Layout_09:
                       db $05                               ;189513|        |      ;  
                       dw $0107                             ;189514|        |      ;  
                       dw $0108                             ;189516|        |      ;  
                       dw $0325                             ;189518|        |      ;  
                       dw $0326                             ;18951A|        |      ;  
                       dw $0344                             ;18951C|        |      ;  

Formation_Zone_0B_Layout_0A:
                       db $06                               ;18951E|        |      ;  
                       dw $0404                             ;18951F|        |      ;  
                       dw $0125                             ;189521|        |      ;  
                       dw $0126                             ;189523|        |      ;  
                       dw $0344                             ;189525|        |      ;  
                       dw $0347                             ;189527|        |      ;  
                       dw $0348                             ;189529|        |      ;  

Formation_Zone_0B_Layout_0B:
                       db $03                               ;18952B|        |      ;  
                       dw $0204                             ;18952C|        |      ;  $0304 -> $0204 (Bee/Lizard 9/16 -> Flytrap series 2/16)
                       dw $0325                             ;18952E|        |      ;  
                       dw $0326                             ;189530|        |      ;  

Formation_Zone_0B_Layout_0C:
                       db $02                               ;189532|        |      ;  
                       dw $0405                             ;189533|        |      ;  
                       dw $0406                             ;189535|        |      ;  

Formation_Zone_0B_Layout_0D:
                       db $02                               ;189537|        |      ;  
                       dw $0305                             ;189538|        |      ;  
                       dw $0306                             ;18953A|        |      ;  

Formation_Zone_0B_Layout_0E:
                       db $05                               ;18953C|        |      ;  
                       dw $0005                             ;18953D|        |      ;  
                       dw $0006                             ;18953F|        |      ;  
                       dw $0224                             ;189541|        |      ;  $0024 -> $0224 (Slime/Pudding 3/16 -> Flytrap series 2/16)
                       dw $0045                             ;189543|        |      ;  
                       dw $0046                             ;189545|        |      ;  

Formation_Zone_0B_Layout_0F:
                       db $03                               ;189547|        |      ;  
                       dw $0405                             ;189548|        |      ;  
                       dw $0406                             ;18954A|        |      ;  
                       dw $0324                             ;18954C|        |      ;  

