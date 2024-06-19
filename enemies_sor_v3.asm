;Enemy stats

;Constants: Spells
!Lit1   = $01
!Lit2   = $02
!Lit3   = $03
!Smash1 = $04
!Smash2 = $05
!Smash3 = $06
!Water1 = $07
!Water2 = $08
!Water3 = $09
!Flame1 = $0A
!Flame2 = $0B
!Flame3 = $0C
!Attr1  = $0D
!Attr2  = $0E
!Attr3  = $0F
!Attr4  = $10
!Attr5  = $11
!Attr6  = $12
!Attr7  = $13
!Attr8  = $14
!Attr9  = $15
!Attr10 = $16
!Attr11 = $17
!CallWi = $18
!CallE  = $19
!CallWa = $1A
!CallF  = $1B
!Drain  = $1C
!Psych  = $1D
!HPResA = $1E
!HPRes  = $1F
!Heal1  = $20
!Heal2  = $21
!Heal3  = $22
!HealA1 = $23
!HealA2 = $24
!CWind  = $25
!Entomb = $26
!Death  = $27
!ParaA  = $28
!PetriA = $29
!StopA  = $2A
!SleepA = $2B
!ConfuA = $2C
!Para   = $2D
!Petri  = $2E
!Stop   = $2F
!Sleep  = $30
!Confu  = $31
!EvaDn  = $32
!EvaDnA = $33
!DefDn  = $34
!DefDnA = $35
!AccDn  = $36
!AccDnA = $37
!AttDn  = $38
!AttDnA = $39
!Flee   = $3E
!DodgeA = $3F
!WallA  = $40
!AccUpA = $41
!StompA = $42
!ChngWi = $43
!ChngEa = $44
!ChngWa = $45
!ChngFi = $46
!RestrA = $49
!Unpara = $4A
!Unpetr = $4B
!RSpirt = $4C

;Constants: Enemy Affinity
!None         = $0000
!None_Medusa  = $0004
!None_Giant   = $0008
!None_Boss    = $0010
!None_UndeadBoss = $0011
!Wind_None    = $0100
!Wind_Undead  = $0101
!Wind_Dragon  = $0102
!Wind_Medusa  = $0104
!Wind_Giant   = $0108
!Earth_None   = $0200
!Earth_Undead = $0201
!Earth_Dragon = $0202
!Earth_Medusa = $0204
!Earth_Giant  = $0208
!Earth_Boss   = $0210
!Water_None   = $0400
!Water_Dragon = $0402
!Water_Medusa = $0404
!Water_Giant  = $0408
!Water_Boss   = $0410
!Fire_None    = $0800
!Fire_Dragon  = $0802
!Fire_Medusa  = $0804
!Fire_Giant   = $0808
!Fire_Boss    = $0810
!Fire_GiantBoss = $0818
;Breakdown:
;The high byte is element/attribute: 00 Man, 01 Wind, 02 Earth, 04 Water, 08 Fire
;The low byte is race: 00 None, 01 Undead, 02 Dragon, 04 Medusa, 08 Giant, 10 Boss
;Weapons with a matching race do extra damage, and amulets with a matching race reduce damage.
;(i.e. the Dragon Blade does extra damage on dragons, and the Dragon Shield resists their physical attacks.)

org $05C92D
Enemy_Affinity:
  dw !Earth_None                       ;05C92D|        |      ;  Slime
  dw !None                             ;05C92F|        |      ;  Pickpocket
  dw !None                             ;05C931|        |      ;  Thief
  dw !Earth_None                       ;05C933|        |      ;  Goblin
  dw !Earth_None                       ;05C935|        |      ;  Orc 
  dw !Earth_None                       ;05C937|        |      ;  Doggo
  dw !Earth_None                       ;05C939|        |      ;  Green Doggo
  dw !Fire_None                        ;05C93B|        |      ;  Saurian
  dw !Fire_None                        ;05C93D|        |      ;  Lizardman
  dw !Wind_None                        ;05C93F|        |      ;  Chimera
  dw !Fire_None                        ;05C941|        |      ;  Pudding
  dw !Earth_Boss                       ;05C943|        |      ;  Stone Golem
  dw !Earth_Boss                       ;05C945|        |      ;  Iron Golem
  dw !Wind_None                        ;05C947|        |      ;  Bee
  dw !Earth_None                       ;05C949|        |      ;  Flytrap
  dw !Water_None                       ;05C94B|        |      ;  Wolfsbane
  dw !Earth_None                       ;05C94D|        |      ;  Treant
  dw !Water_None                       ;05C94F|        |      ;  Dryad
  dw !Fire_None                        ;05C951|        |      ;  Dire Lizard
  dw !Water_None                       ;05C953|        |      ;  Assassin
  dw !Fire_GiantBoss                   ;05C955|        |      ;  Cyclops
  dw !Fire_Boss                        ;05C957|        |      ;  Ifrit
  dw !None_Boss                        ;05C959|        |      ;  Zero
  dw !Water_None                       ;05C95B|        |      ;  Gel
  dw !None                             ;05C95D|        |      ;  Hobgoblin
  dw !None                             ;05C95F|        |      ;  Fighter
  dw !Wind_None                        ;05C961|        |      ;  Lizardkin
  dw !None                             ;05C963|        |      ;  Mage
  dw !Earth_Undead                     ;05C965|        |      ;  Zombie
  dw !Earth_Undead                     ;05C967|        |      ;  Skeleton
  dw !None                             ;05C969|        |      ;  Witch
  dw !Earth_None                       ;05C96B|        |      ;  Basilisk
  dw !Wind_None                        ;05C96D|        |      ;  Manticore
  dw !Earth_Undead                     ;05C96F|        |      ;  Bones
  dw !None_Medusa                      ;05C971|        |      ;  Lamia
  dw !Water_None                       ;05C973|        |      ;  Crocodile
  dw !None                             ;05C975|        |      ;  Warlock
  dw !None_Giant                       ;05C977|        |      ;  Troll
  dw !None                             ;05C979|        |      ;  Mimic
  dw !Fire_Boss                        ;05C97B|        |      ;  Hydra
  dw !None_Boss                        ;05C97D|        |      ;  Sauza
  dw !Earth_Undead                     ;05C97F|        |      ;  Ghoul
  dw !None                             ;05C981|        |      ;  Bugbear
  dw !None                             ;05C983|        |      ;  Knight
  dw !Wind_None                        ;05C985|        |      ;  Vampire Bee
  dw !Wind_Undead                      ;05C987|        |      ;  Ghost
  dw !None_Medusa                      ;05C989|        |      ;  Lilith
  dw !None                             ;05C98B|        |      ;  Dragonnewt
  dw !Earth_Undead                     ;05C98D|        |      ;  Wight
  dw !Wind_Undead                      ;05C98F|        |      ;  Lich
  dw !None                             ;05C991|        |      ;  Priest
  dw !None                             ;05C993|        |      ;  Sorcerer
  dw !Water_Medusa                     ;05C995|        |      ;  Alraune
  dw !None_Giant                       ;05C997|        |      ;  Giant
  dw !Water_Dragon                     ;05C999|        |      ;  Sea Dragon
  dw !Earth_Dragon                     ;05C99B|        |      ;  Earth Dragon
  dw !Water_Boss                       ;05C99D|        |      ;  Darah
  dw !Fire_Boss                        ;05C99F|        |      ;  Barah
  dw !None_Boss                        ;05C9A1|        |      ;  Alan
  dw !None_Boss                        ;05C9A3|        |      ;  Teefa
  dw !Fire_Dragon                      ;05C9A5|        |      ;  Flame Dragon
  dw !Wind_Dragon                      ;05C9A7|        |      ;  Cloud Dragon
  dw !None_Giant                       ;05C9A9|        |      ;  Jotun
  dw !None_Giant                       ;05C9AB|        |      ;  Minotaur
  dw !None                             ;05C9AD|        |      ;  Sword Master
  dw !None                             ;05C9AF|        |      ;  Wizard
  dw !Earth_Undead                     ;05C9B1|        |      ;  Death Lich
  dw !None                             ;05C9B3|        |      ;  Bishop
  dw !Earth_None                       ;05C9B5|        |      ;  Sphinx
  dw !Fire_None                        ;05C9B7|        |      ;  Ba'al
  dw !Earth_Medusa                     ;05C9B9|        |      ;  Medusa
  dw !Wind_Undead                      ;05C9BB|        |      ;  Wraith
  dw !Earth_Undead                     ;05C9BD|        |      ;  Phantom
  dw !Wind_None                        ;05C9BF|        |      ;  Giant Bee
  dw !Wind_None                        ;05C9C1|        |      ;  Killer Bee
  dw !None_Boss                        ;05C9C3|        |      ;  Karla
  dw !None_Boss                        ;05C9C5|        |      ;  Galneon
  dw !None_UndeadBoss                  ;05C9C7|        |      ;  Zombeon
  dw !None_Boss                        ;05C9C9|        |      ;  Rimsala
  dw !None_Boss                        ;05C9CB|        |      ;  True Rimsala

org $05C9CD : Enemy_STR:            ;Enemy Strength: raises their damage + bonus for physical attacks.
org $05CA6D : Tbl_Not_EnemyAtk:     ;These 20 ($14) words are beyond the $4F enemies, no idea what it's for.
org $05CA95 : Enemy_INT:            ;Enemy Intelligence; affects magic damage given and taken, and probably magic accuracy/evasion too.
org $05CB35 : Enemy_ENDUR:          ;Enemy Endurance. Should reduce physical damage.
org $05CBD5 : Enemy_ALERT:          ;Enemy Alertness. Affects turn order, accuracy, evasion, and critical hit rate
org $05CC75 : Enemy_Atk_Animation:  ;Equipped "weapon". The high nybble determines the animation. (0:Swords, 2:Bitey, 4:Sploosh, 6:Slash, 8:Stinger, A:Punch)
org $05CD15 : Enemy_EqArmor:        ;Equipped "armor". I guess affects physical defense.
org $05CDB5 : Enemy_EqAmulet:       ;Equipped "amulet": Affects magic defense.
org $05CE55 : Enemy_mHP:            ;
org $05CEF5 : Enemy_EXP:            ;
org $05CF95 : Enemy_GP:             ;
org $05D035 : Enemy_LVL:            ;
org $05D235 : Enemy_Spellcast:      ;Enemy spell; if nonzero, 50% chance to cast their spell for free. (75% chance under 1/2 HP)


macro enemy(idno, armor, amulet, hp, exp, gp, lvl, spell)
;  org   Enemy_STR+(2*<idno>)           : dw <str>
;  org   Enemy_INT+(2*<idno>)           : dw <int>
;  org   Enemy_ENDUR+(2*<idno>)         : dw <endurance>
;  org   Enemy_ALERT+(2*<idno>)         : dw <alertness>
;  org   Enemy_Atk_Animation+(2*<idno>) : dw <animation>
  org   Enemy_EqArmor+(2*<idno>)       : dw <armor>
  org   Enemy_EqAmulet+(2*<idno>)      : dw <amulet>
  org   Enemy_mHP+(2*<idno>)           : dw <hp>
  org   Enemy_EXP+(2*<idno>)           : dw <exp>
  org   Enemy_GP+(2*<idno>)            : dw <gp>
  org   Enemy_LVL+(2*<idno>)           : dw <lvl>
  org   Enemy_Spellcast+(1*<idno>)     : db <spell>
endmacro

;ID  ARMOR  AMULET  HP   EXP  GP  LVL  SPELL
%enemy(00, 00, 00, 0003, 001, 004, 01, 0)             ;  Slime
%enemy(01, 00, 00, 0005, 003, 002, 01, 0)             ;  Pickpocket
%enemy(02, 00, 00, 0008, 003, 005, 02, 0)             ;  Thief
%enemy(03, 01, 00, 0004, 004, 006, 02, 0)             ;  Goblin
%enemy(04, 01, 00, 0008, 005, 012, 03, 0)             ;  Orc
%enemy(05, 00, 00, 0010, 004, 005, 03, 0)             ;  Doggo
%enemy(06, 01, 00, 0020, 005, 030, 04, 0)             ;  Green Doggo
%enemy(07, 00, 00, 0015, 006, 015, 04, 0)             ;  Saurian
%enemy(08, 01, 00, 0020, 005, 005, 05, 0)             ;  Lizardman
%enemy(09, 02, 00, 0016, 007, 006, 08, !Attr1)        ;  Chimera
%enemy(10, 00, 00, 0006, 002, 007, 03, 0)             ;  Pudding
%enemy(11, 03, 08, 0150, 030, 100, 10, 0)             ;  Stone Golem
%enemy(12, 04, 08, 0300, 060, 100, 15, 0)             ;  Iron Golem
%enemy(13, 00, 00, 0022, 005, 001, 07, 0)             ;  Bee
%enemy(14, 00, 00, 0020, 009, 005, 05, 0)             ;  Flytrap
%enemy(15, 00, 00, 0030, 012, 006, 08, 0)             ;  Wolfsbane
%enemy(16, 00, 00, 0025, 010, 022, 04, 0)             ;  Treant
%enemy(17, 00, 00, 0030, 020, 030, 06, 0)             ;  Dryad
%enemy(18, 00, 00, 0035, 010, 021, 10, 0)             ;  Dire Lizard
%enemy(19, 00, 00, 0025, 030, 045, 12, !Water1)       ;  Assassin
%enemy(20, 05, 08, 0200, 100, 300, 20, 0)             ;  Cyclops
%enemy(21, 00, 08, 0300, 140, 002, 25, !Flame2)       ;  Ifrit
%enemy(22, 04, 08, 0450, 200, 400, 30, 0)             ;  Zero
%enemy(23, 02, 02, 0030, 007, 017, 06, !Sleep)        ;  Gel
%enemy(24, 03, 03, 0037, 010, 025, 06, 0)             ;  Hobgoblin
%enemy(25, 04, 04, 0034, 035, 030, 07, 0)             ;  Fighter
%enemy(26, 06, 06, 0040, 015, 052, 06, 0)             ;  Lizardkin
%enemy(27, 03, 10, 0053, 020, 040, 08, !EvaDn)        ;  Mage
%enemy(28, 02, 02, 0067, 018, 013, 05, 0)             ;  Zombie
%enemy(29, 04, 11, 0040, 015, 034, 06, 0)             ;  Skeleton
%enemy(30, 02, 09, 0028, 015, 045, 04, !Water1)       ;  Witch
%enemy(31, 05, 03, 0045, 015, 030, 08, 0)             ;  Basilisk
%enemy(32, 08, 08, 0024, 015, 030, 12, !Lit2)         ;  Manticore
%enemy(33, 06, 11, 0032, 010, 019, 08, 0)             ;  Bones
%enemy(34, 07, 08, 0036, 015, 055, 14, 0)             ;  Lamia
%enemy(35, 08, 06, 0056, 013, 025, 09, 0)             ;  Crocodile
%enemy(36, 09, 09, 0040, 025, 042, 12, !DefDn)        ;  Warlock
%enemy(37, 02, 02, 0060, 100, 220, 15, 0)             ;  Troll
%enemy(38, 07, 02, 0080, 040, 050, 12, 0)             ;  Mimic
%enemy(39, 11, 15, 0600, 600, 500, 20, !Flame3)       ;  Hydra
%enemy(40, 09, 15, 0750,1000, 600, 25, 0)             ;  Sauza
%enemy(41, 08, 06, 0050, 015, 050, 16, 0)             ;  Ghoul
%enemy(42, 07, 05, 0060, 050, 100, 18, 0)             ;  Bugbear
%enemy(43, 11, 06, 0080, 025, 280, 20, 0)             ;  Knight
%enemy(44, 09, 07, 0070, 050, 070, 18, 0)             ;  Vampire Bee
%enemy(45, 08, 12, 0100, 060, 080, 22, !SleepA)       ;  Ghost
%enemy(46, 06, 12, 0110, 032, 120, 15, 0)             ;  Lilith
%enemy(47, 10, 08, 0120, 060, 100, 24, 0)             ;  Dragonnewt
%enemy(48, 05, 12, 0072, 070, 070, 20, 0)             ;  Wight
%enemy(49, 07, 12, 0084, 040, 120, 18, !Sleep)        ;  Lich
%enemy(50, 06, 06, 0056, 040, 100, 23, !Lit2)         ;  Priest
%enemy(51, 05, 07, 0095, 030, 090, 24, !Flame2)       ;  Sorcerer
%enemy(52, 07, 12, 0100, 060, 120, 18, !Water3)       ;  Alraune
%enemy(53, 11, 06, 0180, 100, 200, 16, 0)             ;  Giant
%enemy(54, 11, 11, 0250, 400, 300, 30, !Water3)       ;  Sea Dragon
%enemy(55, 11, 11, 0250, 400, 300, 35, !Smash3)       ;  Earth Dragon
%enemy(56, 13, 15, 0450,1400, 550, 20, !Smash1)       ;  Darah
%enemy(57, 13, 15, 0800,1600, 600, 21, !Smash2)       ;  Barah
%enemy(58, 14, 15, 0750, 800, 001, 30, 0)             ;  Alan
%enemy(59, 10, 15, 0400, 800, 001, 30, !Para)         ;  Teefa
%enemy(60, 11, 11, 0250, 400, 300, 32, !Flame3)       ;  Flame Dragon
%enemy(61, 11, 11, 0250, 400, 300, 36, !Lit3)         ;  Cloud Dragon
%enemy(62, 10, 08, 0200, 090, 100, 30, 0)             ;  Jotun
%enemy(63, 10, 08, 0210, 100, 100, 25, 0)             ;  Minotaur
%enemy(64, 09, 06, 0180, 060, 200, 20, 0)             ;  Sword Master
%enemy(65, 06, 14, 0110, 200, 250, 40, !Attr10)       ;  Wizard
%enemy(66, 03, 03, 0160, 050, 100, 20, 0)             ;  Death Lich
%enemy(67, 07, 07, 0180, 095, 200, 30, 0)             ;  Bishop
%enemy(68, 08, 08, 0200, 050, 210, 24, !Smash3)       ;  Sphinx
%enemy(69, 09, 09, 0195, 150, 120, 22, !Lit3)         ;  Ba'al
%enemy(70, 10, 10, 0120, 230, 059, 25, !Attr7)        ;  Medusa
%enemy(71, 14, 14, 0160, 100, 110, 28, !Attr1)        ;  Wraith
%enemy(72, 14, 14, 0180, 095, 050, 36, !Attr8)        ;  Phantom
%enemy(73, 08, 08, 0090, 090, 095, 25, 0)             ;  Giant Bee
%enemy(74, 10, 10, 0150, 230, 035, 30, !SleepA)       ;  Killer Bee
%enemy(75, 14, 15, 0750,1980, 872, 38, 0)             ;  Karla
%enemy(76, 08, 15, 0600,1500, 933, 30, !Confu)        ;  Galneon
%enemy(77, 13, 15, 0900,1900, 001, 40, !Attr9)        ;  Zombeon
%enemy(78, 12, 15, 1500, 001, 001, 40, 0)             ;  Rimsala
%enemy(79, 15, 15, 3500, 001, 621, 50, !Attr11)       ;  True Rimsala

;ID  ARMOR  AMULET  HP   EXP  GP  LVL  SPELL








