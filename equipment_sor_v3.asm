


;Equipment stats (weapons, armor, amulets, rings)

!AWind  = $10   ;Elements
!AEarth = $20
!AWater = $40
!AFire  = $80
!A_All  = $F0
!Undead = $01   ;Races
!Dragon = $02
!Medusa = $04
!Giant  = $08
!R_All  = $0F
!Rooks  = $01   ;Equip flags
!Teefa  = $02
!Sarah  = $04
!Darwn  = $08
!Axs    = $10

!Lit1   = $01   ;Spells
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

org $85D67D : EquipNames:     ;Equipment names (16b + /00)
org $85DE86 : EquipPrices:    ;Equipment prices (2b)
org $85DF78 : EquipFlags:     ;Equip flags (1b): xxxADSTR  (Binary xxx00001 = Rooks only, xxxx01000 = Sarah only etc)
org $85DFF1 : EquipPower:     ;Equip power/defense (2b)
org $85E0E3 : EquipAffinity:  ;Equip race/element (2b): (Binary FAEWxxxx xxxxGMDU, Element FAEW Fire/Water/Earth/Wind, Race GMDU Giant/Medusa/Dragon/Undead)
org $85E1D5 : EquipSpecial:   ;Equip special (1b) (crit%/magic defense)
org $85E24E : EquipPenalty:   ;Equip penalty (1b) (higher = reduced attack)
org $85E2C7 : EquipSpellcast: ;Equip spellcast (1b)

macro equipment(idno, price, flags, power, race, element, special, penalty, spell)
  org    EquipPrices+(2*<idno>)   : dw <price>
  org     EquipFlags+(1*<idno>)   : db <flags>
  org     EquipPower+(2*<idno>)   : dw <power>
  org  EquipAffinity+(2*<idno>)   : db <race>
  org  EquipAffinity+(2*<idno>)+1 : db <element>
  org   EquipSpecial+(1*<idno>)   : db <special>
  org   EquipPenalty+(1*<idno>)   : db <penalty>
  org EquipSpellcast+(1*<idno>)   : db <spell>
endmacro

;ID  PRICE  [ADSTR]  PWR  RACE  ELEMENT  CRIT/MDEF  NERF  SPELL
%equipment(0, 0, 0, 0, 0, 0, 0, 205, 0)                         ;unarmed
%equipment(1, 100, %11111, 20, 0, 0, 5, 128, 0)                 ;Dagger
%equipment(2, 200, %11111, 40, 0, 0, 10, 128, 0)                ;Short Sword
%equipment(3, 500, %01001, 60, 0, 0, 10, 128, 0)                ;Long Sword
%equipment(4, 1000, %01001, 80, 0, 0, 15, 118, 0)               ;Broad Sword
%equipment(5, 1500, %11001, 100, 0, 0, 20, 113, 0)              ;Scimitar
%equipment(6, 2000, %01001, 120, 0, !AWater, 15, 113, 0)        ;Ice Blade
%equipment(7, 3000, !Rooks, 140, !Undead, 0, 10, 108, 0)        ;Undead Blade
%equipment(8, 5000, !Rooks, 160, 0, !AFire, 10, 102, 0)         ;Fire Blade
%equipment(9, 7500, %01001, 180, !Dragon, 0, 10, 108, 0)        ;Dragon Blade
%equipment(10, 10000, %01001, 200, 0, 0, 10, 92, !Sleep)        ;Magic Sword
%equipment(11, 13500, %01001, 220, 0, !AWind, 10, 92, 0)        ;Lightning Sword
%equipment(12, 20000, !Darwn, 240, %1010, 0, 10, 77, !Confu)    ;Desiree
%equipment(13, 2, !Rooks, 230, !R_All, 0, 15, 82, !HPRes)       ;Crystal Sword
%equipment(14, 2, !Rooks, 260, 0, !A_All, 10, 77, !HealA1)      ;Spirit Sword
%equipment(15, 2, !Rooks, 280, 0, !A_All, 20, 77, !HPResA)      ;Giant Sword
%equipment(16, 30000, %11111, 10, 0, 0, 0, 102, 0)              ;Golden Sword
%equipment(17, 0, %11111, 100, 0, 0, 5, 97, 0)                  ;Cursed Sword
%equipment(18, 450, %11001, 50, 0, 0, 20, 92, 0)                ;Flying Axe
%equipment(19, 1700, %10001, 70, 0, 0, 30, 87, 0)               ;Battle Axe
%equipment(20, 4800, !Axs, 100, 0, 0, 30, 82, 0)                ;Great Axe
%equipment(21, 0, !Axs, 160, !Medusa, !AEarth, 40, 77, !Smash3) ;Demon Axe
%equipment(22, 150, %00110, 30, 0, 0, 10, 108, 0)               ;Staff
%equipment(23, 400, %00110, 50, 0, 0, 10, 108, 0)               ;Mage Staff
%equipment(24, 700, !Sarah, 60, 0, 0, 10, 108, 0)               ;Memory Wand
%equipment(25, 1000, !Sarah, 100, 0, !AFire, 10, 72, !Flame1)   ;Firebrand
%equipment(26, 4500, %00110, 110, 0, 0, 10, 67, !SleepA)        ;Elder's Staff
%equipment(27, 10000, !Sarah, 120, 0, 0, 10, 62, !Water2)       ;Wish Wand
%equipment(28, 7500, !Teefa, 140, 0, 0, 10, 67, !ConfuA)        ;Staff of Wisdom
%equipment(29, 5000, !Teefa, 160, 0, !A_All, 10, 51, !Lit2)     ;Spirit Staff
%equipment(30, 1000, %10100, 65, 0, 0, 15, 51, 0)               ;Mace
%equipment(31, 1300, %10100, 90, 0, 0, 20, 51, 0)               ;Flail
%equipment(32, 1200, !Axs, 90, 0, 0, 25, 41, 0)                 ;Battle Hammer
%equipment(33, 6000, !Axs, 120, !Giant, 0, 30, 72, 0)           ;Morning Star
%equipment(34, 170, %00110, 35, 0, 0, 5, 77, 0)                 ;Whip
%equipment(35, 850, %00110, 55, 0, 0, 5, 77, 0)                 ;Chain Whip
%equipment(36, 1500, %00110, 60, 0, 0, 10, 77, 0)               ;Blackthorne Whip
%equipment(37, 2, %00110, 280, !R_All, 0, 20, 77, !Flame3)      ;No-Horny Bat (Sword 1)
%equipment(38, 2, 0, 0, 0, 0, 0, 128, 0)                        ;Sword 2
%equipment(39, 2, 0, 0, 0, 0, 0, 128, 0)                        ;Sword 3
%equipment(40, 2, 0, 0, 0, 0, 0, 128, 0)                        ;Sword 4
;ID  PRICE  [ADSTR]  PWR  RACE  ELEMENT  CRIT/MDEF  NERF  SPELL
%equipment(41, 100, %11111, 20, 0, 0, 0, 0, 0)                  ;Soft Leather
%equipment(42, 300, %11111, 30, 0, 0, 0, 0, 0)                  ;Hard Leather
%equipment(43, 500, %10101, 40, 0, 0, 0, 0, 0)                  ;Ring Mail
%equipment(44, 700, %11101, 60, 0, 0, 0, 0, 0)                  ;Scale Mail
%equipment(45, 1000, %10101, 80, 0, 0, 0, 0, 0)                 ;Chain Mail
%equipment(46, 1500, !Darwn, 85, 0, 0, 0, 0, 0)                 ;Breast Mail
%equipment(47, 2000, %01101, 100, 0, 0, 0, 0, 0)                ;Breast Plate
%equipment(48, 3000, %10101, 120, 0, 0, 0, 0, 0)                ;Seam Mail
%equipment(49, 4500, %10001, 145, 0, 0, 0, 0, 0)                ;Plate Mail
%equipment(50, 5000, %10001, 150, 0, 0, 0, 0, 0)                ;Mithril Chain
%equipment(51, 7500, %01001, 160, 0, 0, 0, 0, 0)                ;Mithril Plate
%equipment(52, 10000, %10001, 180, 0, !AWind, 0, 0, 0)          ;Mithril Mail
%equipment(53, 20000, !Axs, 205, 0, !AEarth, 0, 0, 0)           ;Demon Mail
%equipment(54, 20000, !Rooks, 190, 0, 0, 0, 0, 0)               ;Dragon Mail
%equipment(55, 25000, %01001, 200, 0, 0, 0, 0, 0)               ;Magic Plate
%equipment(56, 30000, %01001, 215, 0, 0, 0, 0, 0)               ;Magic Mail
%equipment(57, 20000, !Darwn, 230, 0, !AEarth, 0, 0, 0)         ;Earth Plate
%equipment(58, 30000, !Rooks, 240, 0, 0, 0, 0, 0)               ;Grand Armor
%equipment(59, 50000, %11111, 35, 0, 0, 0, 0, 0)                ;Rococo Armor
%equipment(60, 150, %00110, 25, 0, 0, 0, 0, 0)                  ;Robe
%equipment(61, 750, %00110, 100, 0, 0, 0, 0, 0)                 ;Silver Robe
%equipment(62, 1000, !Sarah, 145, 0, 0, 0, 0, 0)                ;White Robe
%equipment(63, 20, !Sarah, 160, 0, 0, 0, 0, 0)                  ;Shaman Robe
%equipment(64, 15000, !Teefa, 180, 0, 0, 0, 0, 0)               ;Magic Robe
%equipment(65, 30, !Teefa, 200, 0, 0, 0, 0, 0)                  ;Robe of Valor
%equipment(66, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 1
%equipment(67, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 2
%equipment(68, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 3
%equipment(69, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 4
%equipment(70, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 5
%equipment(71, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 6
%equipment(72, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 7
%equipment(73, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 8
%equipment(74, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 9
%equipment(75, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 10
%equipment(76, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 11
%equipment(77, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 12
%equipment(78, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 13
%equipment(79, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 14
%equipment(80, 0, 0, 0, 0, 0, 0, 0, 0)                          ;Armor 15
;ID  PRICE  [ADSTR]  PWR  RACE  ELEMENT  CRIT/MDEF  NERF  SPELL
%equipment(81, 180, %10101, 20, 0, 0, 0, 0, 0)                  ;Small Shield
%equipment(82, 300, %10101, 40, 0, 0, 5, 0, 0)                  ;Large Shield
%equipment(83, 750, %10101, 80, 0, 0, 10, 0, 0)                 ;Spike Shield
%equipment(84, 1000, %10101, 120, 0, 0, 15, 0, 0)               ;Iron Shield
%equipment(85, 1500, %10101, 140, !Undead, 0, 20, 0, 0)         ;Mithril Shield
%equipment(86, 2500, !Rooks, 170, !Dragon, 0, 25, 0, 0)         ;Dragon Shield
%equipment(87, 2480, !Axs, 180, !Medusa, 0, 30, 0, !Attr1)      ;Demon Shield
%equipment(88, 4000, !Sarah, 160, 0, 0, 35, 0, !Sleep)          ;Magic Shield
%equipment(89, 45000, !Rooks, 200, 0, 0, 90, 0, !DefDnA)        ;Caesar Shield
%equipment(90, 24800, !Rooks, 220, 0, 0, 100, 0, !Attr8)        ;Grand Shield
%equipment(91, 2, %10101, 10, 0, 0, 0, 0, 0)                    ;Cursed Shield
%equipment(92, 300, %01010, 20, 0, 0, 10, 0, 0)                 ;Talisman
%equipment(93, 500, %01010, 40, 0, 0, 20, 0, 0)                 ;Rune Gauntlet
%equipment(94, 3000, %01010, 160, !Undead, 0, 30, 0, 0)         ;Mithril Gauntlet
%equipment(95, 10000, %01010, 180, 0, 0, 40, 0, !WallA)         ;Magic Gauntlet
%equipment(96, 2, %01010, 200, 0, 0, 50, 0, !AccUpA)            ;Spirit Gauntlet
%equipment(97, 4000, !Darwn, 220, !Giant, 0, 60, 0, !StompA)    ;Moon Gauntlet
%equipment(98, 2, %01010, 10, 0, 0, 0, 0, 0)                    ;Cursed Gauntlet
%equipment(99, 2, 0, 0, 0, 0, 0, 0, 0)                          ;Amulet 1
%equipment(100, 2, 0, 0, 0, 0, 0, 0, 0)                         ;Amulet 2
;ID  PRICE  [ADSTR]  PWR  RACE  ELEMENT  CRIT/MDEF  NERF  SPELL
%equipment(101, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Secret Ring
%equipment(102, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Life Ring
%equipment(103, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Enhance Ring
%equipment(104, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Inspiration Ring
%equipment(105, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Peace Ring
%equipment(106, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Ancient Ring
%equipment(107, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Ring of Life
%equipment(108, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Ring of Valor
%equipment(109, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Ring of Hope
%equipment(110, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Sparkling Ring
%equipment(111, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Shining Ring
%equipment(112, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Ring of Amazement
%equipment(113, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Ring of Astonishment
%equipment(114, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Crooked Ring
%equipment(115, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Twisted Ring
%equipment(116, 0, %11110, 0, 0, 0, 0, 0, 0)                    ;Grand Ring
%equipment(117, 0, %11111, 0, 0, 0, 0, 0, 0)                    ;Charm Ring
%equipment(118, 0, 0, 0, 0, 0, 0, 0, 0)                         ;Ring 1
%equipment(119, 0, 0, 0, 0, 0, 0, 0, 0)                         ;Ring 2
%equipment(120, 0, 0, 0, 0, 0, 0, 0, 0)                         ;Ring 3

;org $85E340 : SpellNames:     ;Spell names

    