;Treasure chest contents

!Balnea1F = $0100   ;Floor names
!Balnea2F = $0101
!DravenPs = $0102
!CrimsonV = $0103
!ForestOD = $0104
!Ice_Mine = $0105
!IcicleDN = $0106
!Polar_DN = $0107
!Stavry01 = $0108
!Stavry02 = $0109
!Stavry03 = $010A
!Stavry04 = $010B
!Stavry05 = $010C
!Stavry06 = $010D
!Stavry07 = $010E
!Stavry08 = $010F
!Stavry09 = $0110
!Stavry10 = $0111
!Stavry11 = $0112
!Stavry12 = $0113
!BintelCS = $0114
!A_Tunnel = $0115
!ReStav01 = $0116
!ReStav02 = $0117
!ReStav03 = $0118
!ReStav04 = $0119
!ReStav05 = $011A
!ReStav06 = $011B
!ReStav07 = $011C
!ReStav08 = $011D
!ReStav09 = $011E
!ReStav10 = $011F
!ReStav11 = $0120
!ReStav12 = $0121

!North = 0  ;Direction to face for chest to appear
!East  = 2
!South = 4
!West  = 6

!Card  = 0  ;Treasure box contents
!Item  = 1
!Equip = 2
!Gold  = 3
!Mimic = 4

!WindCard  = 1  ;Cards
!EarthCard = 2
!WaterCard = 3
!FireCard  = 4
!NullCard  = 5
!FogCard   = 6
!CallAmu   = 7

!ReturnRG = 1  ;Items
!SleepBag = 3
!Tent     = 4
!StrHoney = 5
!IntHoney = 6
!DefHoney = 7
!SpdHoney = 8
!HP_Honey = 9
!MP_Honey = 10
!Herbs    = 11
!Medicine = 12
!SilverFL = 13
!GoldFL   = 14
!MaidTear = 15
!MoonOil  = 16

!Dagger   = 1  ;Equipment
!ShortSD  = 2
!LongSD   = 3
!BroadSD  = 4
!Scimitar = 5
!IceBL    = 6
!UndeadBL = 7
!FireBL   = 8
!DragonBL = 9
!MagicSD  = 10
!LitSD    = 11
!Desiree  = 12
!CrystlSD = 13
!SpiritSD = 14
!GiantSD  = 15
!GoldenSD = 16
!CursedSD = 17
!FlyingAX = 18
!BattleAX = 19
!GreatAX  = 20
!DemonAX  = 21
!Staff    = 22
!MageST   = 23
!MemoryWD = 24
!FireWD   = 25
!ElderSF  = 26
!WishWD   = 27
!WisdomSF = 28
!SpiritSF = 29
!Mace     = 30
!Flail    = 31
!BattleHR = 32
!MornStar = 33
!Whip     = 34
!ChainWP  = 35
!BlackWP  = 36
!SoftLR   = 41
!HardLR   = 42
!RingML   = 43
!ScaleML  = 44
!ChainML  = 45
!BreastML = 46
!BreastPL = 47
!SeamML   = 48
!PlateML  = 49
!MithrlCH = 50
!MithrlPL = 51
!MithrlML = 52
!DemonML  = 53
!DragonML = 54
!MagicPL  = 55
!MagicML  = 56
!EarthPL  = 57
!GrandAR  = 58
!RococoAR = 59
!Robe     = 60
!SilverRB = 61
!WhiteRB  = 62
!ShamanRB = 63
!MagicRB  = 64
!ValorRB  = 65
!SmallSH  = 81
!LargeSH  = 82
!SpikeSH  = 83
!IronSH   = 84
!MithrlSH = 85
!DragonSH = 86
!DemonSH  = 87
!MagicSH  = 88
!CaesarSH = 89
!GrandSH  = 90
!CursedSH = 91
!Talisman = 92
!RuneGT   = 93
!MithrlGT = 94
!MagicGT  = 95
!SpiritGT = 96
!MoonGT   = 97
!CursedGT = 98
!SecretRG = 101
!LifeRG   = 102
!EnhancRG = 103
!InpireRG = 104
!PeaceRG  = 105
!AncintRG = 106
!OfLifeRG = 107
!ValorRG  = 108
!HopeRG   = 109
!SparklRG = 110
!ShinyRG  = 111
!AmazeRG  = 112
!AstnshRG = 113
!CrookdRG = 114
!TwistdRG = 115
!GrandRG  = 116
!CharmRG  = 117

org $188A99
Tbl_Treasure_Lists:
  dw Ch1_Treasures
  dw Ch2_Treasures
  dw Ch3_Treasures
  dw Ch4_Treasures
  dw Ch5_Treasures

org $188AA3
Ch1_Treasures:
  ;   Location  X   Y    Dir     Type    Contents
  dw !Balnea1F, 07, 02, !North, !Gold,  300
  dw !Balnea1F, 09, 02, !North, !Gold,  500
  dw !Balnea1F, 17, 17, !West,  !Item,  !SleepBag
  dw !Balnea1F, 13, 22, !South, !Item,  !Herbs
  dw !Balnea1F, 13, 26, !North, !Item,  !SilverFL
  dw !Balnea2F, 19, 21, !North, !Item,  !ReturnRG
  dw !Balnea2F, 21, 22, !South, !Gold,  500
  dw !Balnea2F, 23, 21, !North, !Item,  !SleepBag
  dw !Balnea2F, 27, 21, !North, !Item,  !SilverFL
  dw !Balnea2F, 25, 22, !South, !Item,  !Herbs
  dw $FFFF

org $188B1D
Ch2_Treasures: 
  ;   Location  X   Y    Dir     Type    Contents
  dw !DravenPs, 01, 15, !West,  !Item,  !SleepBag
  dw !DravenPs, 10, 20, !South, !Item,  !MP_Honey
  dw !DravenPs, 12, 20, !South, !Gold,  400
  dw !DravenPs, 01, 23, !North, !Item,  !Herbs
  dw !DravenPs, 01, 28, !South, !Item,  !SilverFL
  dw !CrimsonV, 14, 01, !East,  !Gold,  100
  dw !CrimsonV, 21, 01, !East,  !Gold,  400
  dw !CrimsonV, 26, 01, !East,  !Item,  !StrHoney
  dw !CrimsonV, 28, 01, !North, !Gold,  300
  dw !CrimsonV, 21, 03, !East,  !Gold,  450
  dw !CrimsonV, 26, 03, !East,  !Item,  !IntHoney
  dw !CrimsonV, 14, 05, !East,  !Gold,  150
  dw !CrimsonV, 21, 05, !East,  !Gold,  500
  dw !CrimsonV, 26, 05, !East,  !Item,  !DefHoney
  dw !CrimsonV, 14, 07, !East,  !Gold,  200
  dw !CrimsonV, 21, 07, !East,  !Gold,  500
  dw !CrimsonV, 14, 09, !East,  !Gold,  250
  dw !CrimsonV, 26, 09, !East,  !Item,  !SpdHoney
  dw !CrimsonV, 14, 11, !East,  !Gold,  300
  dw !CrimsonV, 21, 11, !East,  !Card,  !FireCard
  dw !CrimsonV, 26, 11, !East,  !Item,  !HP_Honey
  dw !CrimsonV, 14, 13, !East,  !Gold,  350
  dw !CrimsonV, 21, 13, !East,  !Card,  !FogCard
  dw !CrimsonV, 26, 13, !East,  !Item,  !MP_Honey
  dw !ForestOD, 28, 17, !East,  !Item,  !Tent
  dw !ForestOD, 06, 24, !North, !Card,  !WaterCard
  dw !ForestOD, 10, 24, !North, !Card,  !WaterCard
  dw !ForestOD, 14, 24, !West,  !Item,  !ReturnRG
  dw !ForestOD, 17, 26, !West,  !Item,  !DefHoney
  dw !ForestOD, 21, 26, !East,  !Item,  !SpdHoney
  dw !ForestOD, 11, 28, !North, !Card,  !WaterCard
  dw !ForestOD, 13, 28, !South, !Card,  !NullCard
  dw !ForestOD, 17, 28, !North, !Item,  !StrHoney
  dw !ForestOD, 21, 28, !North, !Item,  !IntHoney
  dw $FFFF

org $188CB7
Ch3_Treasures: 
  ;   Location  X   Y    Dir     Type    Contents
  dw !Ice_Mine, 27, 04, !West,  !Item,  !ReturnRG
  dw !Ice_Mine, 08, 10, !North, !Item,  !Medicine
  dw !Ice_Mine, 11, 12, !North, !Item,  !ReturnRG
  dw !Ice_Mine, 19, 12, !North, !Item,  !ReturnRG
  dw !Ice_Mine, 15, 13, !South, !Item,  !GoldFL
  dw !Ice_Mine, 10, 18, !West,  !Gold,  1000
  dw !Ice_Mine, 14, 24, !North, !Card,  !FireCard
  dw !Ice_Mine, 16, 24, !North, !Card,  !EarthCard
  dw !Ice_Mine, 09, 26, !West,  !Item,  !IntHoney
  dw !Ice_Mine, 21, 26, !East,  !Card,  !FogCard
  dw !Ice_Mine, 03, 29, !South, !Item,  !HP_Honey
  dw !Ice_Mine, 27, 29, !South, !Item,  !MP_Honey
  dw !IcicleDN, 12, 06, !North, !Item,  !StrHoney
  dw !IcicleDN, 18, 06, !North, !Item,  !DefHoney
  dw !IcicleDN, 07, 27, !East,  !Item,  !HP_Honey
  dw !IcicleDN, 23, 27, !East,  !Item,  !MP_Honey
  dw !IcicleDN, 12, 14, !South, !Card,  !WindCard
  dw !IcicleDN, 18, 14, !South, !Card,  !WindCard
  dw !IcicleDN, 02, 28, !South, !Item,  !Tent
  dw !Polar_DN, 06, 02, !West,  !Item,  !ReturnRG
  dw !Polar_DN, 24, 02, !East,  !Item,  !ReturnRG
  dw !Polar_DN, 08, 04, !West,  !Gold,  100
  dw !Polar_DN, 22, 04, !East,  !Gold,  200
  dw !Polar_DN, 10, 06, !West,  !Gold,  300
  dw !Polar_DN, 20, 06, !East,  !Gold,  400
  dw !Polar_DN, 04, 08, !West,  !Item,  !StrHoney
  dw !Polar_DN, 06, 08, !East,  !Item,  !DefHoney
  dw !Polar_DN, 24, 08, !West,  !Card,  !EarthCard
  dw !Polar_DN, 26, 08, !East,  !Item,  !DefHoney
  dw !Polar_DN, 04, 10, !West,  !Item,  !IntHoney
  dw !Polar_DN, 06, 10, !East,  !Item,  !SpdHoney
  dw !Polar_DN, 24, 10, !West,  !Card,  !FireCard
  dw !Polar_DN, 26, 10, !East,  !Card,  !NullCard
  dw !Polar_DN, 04, 12, !West,  !Item,  !StrHoney
  dw !Polar_DN, 06, 12, !East,  !Item,  !DefHoney
  dw !Polar_DN, 24, 12, !West,  !Card,  !WindCard
  dw !Polar_DN, 26, 12, !East,  !Item,  !DefHoney
  dw !Polar_DN, 04, 14, !West,  !Item,  !IntHoney
  dw !Polar_DN, 06, 14, !East,  !Item,  !SpdHoney
  dw !Polar_DN, 24, 14, !West,  !Item,  !IntHoney
  dw !Polar_DN, 26, 14, !East,  !Card,  !CallAmu
  dw !Polar_DN, 05, 15, !South, !Item,  !ReturnRG
  dw !Polar_DN, 25, 15, !South, !Item,  !ReturnRG
  dw $FFFF

org $188EBD
Ch4_Treasures: 
  ;   Location  X   Y    Dir     Type    Contents
  dw !Stavry01, 07, 05, !South, !Item,  !Tent
  dw !Stavry01, 13, 07, !South, !Item,  !Tent
  dw !Stavry02, 23, 01, !North, !Equip, !ShamanRB
  dw !Stavry02, 17, 14, !South, !Item,  !Medicine
  dw !Stavry02, 21, 14, !South, !Item,  !GoldFL
  dw !Stavry03, 07, 17, !North, !Equip, !DemonAX
  dw !Stavry03, 03, 21, !South, !Gold,  1000
  dw !Stavry03, 11, 26, !North, !Gold,  500
  dw !Stavry03, 07, 30, !South, !Equip, !WishWD
  dw !Stavry05, 07, 01, !North, !Gold,  500
  dw !Stavry05, 11, 05, !South, !Equip, !DemonSH
  dw !Stavry05, 03, 10, !North, !Equip, !DemonML
  dw !Stavry05, 07, 14, !South, !Gold,  1000
  dw !Stavry10, 17, 01, !North, !Item,  !StrHoney
  dw !Stavry10, 19, 01, !North, !Equip, !RococoAR
  dw !Stavry10, 21, 01, !North, !Card,  !NullCard
  dw !Stavry10, 25, 01, !North, !Card,  !CallAmu
  dw !Stavry10, 27, 01, !North, !Item,  !HP_Honey
  dw !Stavry10, 29, 01, !North, !Item,  !MP_Honey
  dw !Stavry10, 17, 14, !South, !Item,  !StrHoney
  dw !Stavry10, 19, 14, !South, !Equip, !GoldenSD
  dw !Stavry10, 21, 14, !South, !Item,  !DefHoney
  dw !Stavry10, 25, 14, !South, !Item,  !SpdHoney
  dw !Stavry10, 27, 14, !South, !Item,  !ReturnRG
  dw !Stavry10, 29, 14, !South, !Item,  !MP_Honey
  dw $FFFF

org $188FEB
Ch5_Treasures: 
  ;   Location  X   Y    Dir     Type    Contents
  dw !BintelCS, 01, 21, !West,  !Equip, !SpiritSF
  dw !BintelCS, 29, 21, !East,  !Equip, !ValorRB
  dw !BintelCS, 01, 24, !West,  !Item,  !GoldFL
  dw !BintelCS, 29, 24, !East,  !Item,  !SilverFL
  dw !BintelCS, 22, 28, !West,  !Equip, !Desiree
  dw !A_Tunnel, 14, 01, !East,  !Equip, !MoonGT
  dw !A_Tunnel, 14, 10, !South, !Item,  !Herbs
  dw !A_Tunnel, 05, 13, !East,  !Item,  !ReturnRG
  dw !A_Tunnel, 10, 14, !North, !Item,  !GoldFL
  dw !A_Tunnel, 08, 17, !West,  !Item,  !SleepBag
  dw !A_Tunnel, 13, 22, !West,  !Item,  !Medicine
  dw !A_Tunnel, 03, 28, !South, !Equip, !GrandSH
  dw !A_Tunnel, 14, 30, !South, !Equip, !EarthPL
  dw !ReStav01, 03, 01, !East,  !Item,  !StrHoney
  dw !ReStav01, 01, 10, !North, !Item,  !HP_Honey
  dw !ReStav02, 08, 05, !North, !Item,  !ReturnRG
  dw !ReStav02, 08, 11, !South, !Item,  !Tent
  dw !ReStav03, 11, 01, !West,  !Equip, !SpiritGT
  dw !ReStav03, 13, 10, !South, !Item,  !DefHoney
  dw !ReStav04, 16, 05, !North, !Item,  !MP_Honey
  dw !ReStav04, 18, 11, !South, !Equip, !GrandAR
  dw !ReStav05, 21, 08, !North, !Item,  !GoldFL
  dw !ReStav07, 03, 24, !North, !Item,  !Tent
  dw $FFFF


;Shop contents
org $03D2D1
Tbl_Wpn_Shop_Size:
  dw $000C
  dw $0010
  dw $0010
  dw $0014
  dw $0010

Tbl_Weapon_Shops:
  dw Wpn_Shop_Ch1
  dw Wpn_Shop_Ch2
  dw Wpn_Shop_Ch3
  dw Wpn_Shop_Ch4
  dw Wpn_Shop_Ch5

org $03D2E5
Wpn_Shop_Ch1:
  dw !Dagger
  dw !ShortSD
  dw !LongSD
  dw !BroadSD
  dw !Staff
  dw !Whip
  dw !SoftLR
  dw !HardLR
  dw !RingML
  dw !Robe
  dw !SmallSH
  dw !Talisman

Wpn_Shop_Ch2:
  dw !ShortSD
  dw !LongSD
  dw !BroadSD
  dw !MemoryWD
  dw !MageST
  dw !FlyingAX
  dw !ChainWP
  dw !Mace
  dw !RingML
  dw !ScaleML
  dw !ChainML
  dw !BreastML
  dw !SmallSH
  dw !LargeSH
  dw !Talisman
  dw !RuneGT

Wpn_Shop_Ch3:
  dw !LongSD
  dw !BroadSD
  dw !Scimitar
  dw !IceBL
  dw !FireWD
  dw !Flail
  dw !BattleHR
  dw !BattleAX
  dw !BreastML
  dw !BreastPL
  dw !SeamML
  dw !PlateML
  dw !SilverRB
  dw !LargeSH
  dw !SpikeSH
  dw !IronSH

Wpn_Shop_Ch4: 
  dw !UndeadBL
  dw !FireBL
  dw !DragonBL
  dw !ElderSF
  dw !WishWD
  dw !BlackWP
  dw !BattleAX
  dw !GreatAX
  dw !MornStar
  dw !PlateML
  dw !MithrlCH
  dw !MithrlPL
  dw !MithrlML
  dw !SilverRB
  dw !WhiteRB
  dw !MithrlGT
  dw !IronSH
  dw !MithrlSH
  dw !DragonSH
  dw !MagicSH

Wpn_Shop_Ch5: 
  dw !DragonBL
  dw !MagicSD
  dw !LitSD
  dw !BlackWP
  dw !ElderSF
  dw !WisdomSF
  dw !MithrlML
  dw !DragonML
  dw !MagicPL
  dw !MagicML
  dw !WhiteRB
  dw !MagicRB
  dw !DragonSH
  dw !CaesarSH
  dw !MithrlGT
  dw !MagicGT

;Item shop contents
org $03D461
Tbl_Item_Shop_Size:
  dw $0005                
  dw $0008                
  dw $000B                
  dw $000D                
  dw $000D                

org $03D46B
Tbl_Item_Shops:
  dw Item_Shop_1          ;Chapter 1
  dw Item_Shop_1          ;Chapter 2
  dw Item_Shop_2          ;Chapter 3
  dw Item_Shop_2          ;Chapter 4
  dw Item_Shop_2          ;Chapter 5

Item_Shop_1:
  dw !Herbs                
  dw !Medicine                
  dw !SleepBag                
  dw !ReturnRG                
  dw !SilverFL                
  dw !GoldFL                
  dw !HP_Honey                
  dw !MP_Honey                

Item_Shop_2:
  dw !Herbs                
  dw !Medicine                
  dw !SleepBag                
  dw !Tent                
  dw !ReturnRG                
  dw !SilverFL                
  dw !GoldFL                
  dw !HP_Honey                
  dw !MP_Honey                
  dw !StrHoney                
  dw !IntHoney                
  dw !DefHoney                
  dw !SpdHoney                

org $03D49F
Tbl_Item_Prices:
  dw Galia_Item_Prices    
  dw Doraf_Item_Prices    
  dw Doraf_Item_Prices    
  dw Elf_Village_Prices   

Galia_Item_Prices:
  dw Bintel_Item_Prices   ;"Discard an item" price (unused)
  dw $0064                ;Return Ring
  dw $0002                ;Water of Life (unused)
  dw $01F4                ;Sleeping Bag
  dw $03E8                ;Tent
  dw $0BB8                ;Strength Honey
  dw $0BB8                ;Intelligence Honey
  dw $0BB8                ;Endurance Honey
  dw $0BB8                ;Agility Honey
  dw $0BB8                ;Restore Honey
  dw $0C80                ;MP Honey
  dw $000F                ;Herbs
  dw $0046                ;Medicine
  dw $0064                ;Silver Flask
  dw $00C8                ;Gold Flask
  dw $0002                ;Maiden's Tears (unused petrify cure)
  dw $0002                ;Moon Oil (unused paralyze cure)

Doraf_Item_Prices:
  dw $0002                
  dw $0064                
  dw $0002                
  dw $01F4                
  dw $03E8                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0C80                
  dw $000F                
  dw $004B                
  dw $0064                
  dw $00C8                
  dw $0002                
  dw $0002                

Elf_Village_Prices:
  dw $0002                
  dw $0064                
  dw $0002                
  dw $01F4                
  dw $05DC                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0C80                
  dw $000F                
  dw $004B                
  dw $0064                
  dw $00FA                
  dw $0002                
  dw $0002                

Bintel_Item_Prices:
  dw $0002                
  dw $0064                
  dw $0002                
  dw $01F4                
  dw $07D0                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0BB8                
  dw $0C80                
  dw $000F                
  dw $004B                
  dw $0064                
  dw $00FA                
  dw $0002                
  dw $0002                
  dw $0002                

