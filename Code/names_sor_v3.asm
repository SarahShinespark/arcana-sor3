;Enemy names, spell names, item names, weapon names etc

; Battle names. Spirit names are also used for the Spirit healer to pick who to revive.
org $859F7B
  db "Rooks     ", $00
  db "Sylph     ", $00
  db "Dao       ", $00
  db "Marid     ", $00
  db "Ifrit     ", $00
  db "Teefa     ", $00
  db "Sarah     ", $00
  db "Arwin     ", $00
  db "Axs       ", $00
  db "          ", $00

;Enemy names
;These are 16 bytes each, but too close to the limit may not display correctly.
;Best to keep them 14 bytes or less.
org $859FE9
  db "Barium          ", $00
  db "Pickpocket      ", $00
  db "Thief           ", $00
  db "Goblin          ", $00
  db "Orc             ", $00
  db "Dog             ", $00
  db "Wolf            ", $00
  db "Saurian         ", $00
  db "Lizardman       ", $00
  db "Chimera         ", $00
  db "Pudding         ", $00
  db "Stone Golem     ", $00
  db "Iron Golem      ", $00
  db "Bee             ", $00
  db "Flytrap         ", $00
  db "Wolfsbane       ", $00
  db "Treant          ", $00
  db "Dryad           ", $00
  db "Dire Lizard     ", $00
  db "Assassin        ", $00
  db "Cyclops         ", $00
  db "Ifrit           ", $00
  db "Zero            ", $00
  db "Gel             ", $00
  db "Hobgoblin       ", $00
  db "Fighter         ", $00
  db "Lizardkin       ", $00
  db "Mage            ", $00
  db "Zombie          ", $00
  db "Skeleton        ", $00
  db "Witch           ", $00
  db "Basilisk        ", $00
  db "Manticore       ", $00
  db "Bones           ", $00
  db "Lamia           ", $00
  db "Crocodile       ", $00
  db "Warlock         ", $00
  db "Troll           ", $00
  db "Mimic           ", $00
  db "Hydra           ", $00
  db "Sauza           ", $00
  db "Ghoul           ", $00
  db "Bugbear         ", $00
  db "Knight          ", $00
  db "Vampire Bee     ", $00
  db "Ghost           ", $00
  db "Lilith          ", $00
  db "Dragonnewt      ", $00
  db "Wight           ", $00
  db "Lich            ", $00
  db "Priest          ", $00
  db "Sorcerer        ", $00
  db "Alraune         ", $00
  db "Giant           ", $00
  db "Sea Dragon      ", $00
  db "Earth Dragon    ", $00
  db "Darah           ", $00
  db "Barah           ", $00
  db "Alan            ", $00
  db "Teefa           ", $00
  db "Flame Dragon    ", $00
  db "Cloud Dragon    ", $00
  db "Jotun           ", $00
  db "Minotaur        ", $00
  db "Sword Master    ", $00
  db "Wizard          ", $00
  db "Death Lich      ", $00
  db "Bishop          ", $00
  db "Sphinx          ", $00
  db "Ba'al           ", $00
  db "Medusa          ", $00
  db "Wraith          ", $00
  db "Phantom         ", $00
  db "Giant Bee       ", $00
  db "Killer Bee      ", $00
  db "Karul           ", $00
  db "Galneon         ", $00
  db "Zombeon         ", $00
  db "Rimsala         ", $00
  db "Rimsala         ", $00

; Enemy postfixes (Goblin A..H)
org $85A53C
  db " A", $00
  db " B", $00
  db " C", $00
  db " D", $00
  db " E", $00
  db " F", $00
  db " G", $00
  db " H", $00

;Character classes
org $85A554
  db "Card Master     ", $00  ;Rooks
  db "Wind Spirit     ", $00  ;Sylph
  db "Earth Spirit    ", $00  ;Dao
  db "Water Spirit    ", $00  ;Marid
  db "Fire Spirit     ", $00  ;Efrite
  db "Mage            ", $00  ;Teefa
  db "Cleric          ", $00  ;Salah
  db "Spellsword      ", $00  ;Arwin
  db "Knight          ", $00  ;Axs
  db "------------    ", $00  ;Empty slot

;Location names
;These are 16 bytes each plus a trailing $00
;If less than 16 bytes are used, the rest has to be padded with $00
;For example:
;Galia00000000000 0
;Elf Village00000 0
;Bintel Castle000 0
;My Hero Academia 0
org $85A5FE
  db "Town of Galia",   $00, $00, $00, $00
  db "Dwarven Town",    $00, $00, $00, $00, $00
  db "Dwarven Town",    $00, $00, $00, $00, $00
  db "Elf Village",     $00, $00, $00, $00, $00, $00
  db "City of Bizance", $00, $00

;Dungeon names
;These are 16 bytes each plus a trailing $00
;If less than 16 bytes are used, the rest has to be padded with $00. (This is easier to see in hexadecimal)
;For example:
;Balnia Temple 1F 0
;Draven Pass00000 0
;Crimson Valley00 0
;Ice Mine00000000 0
org $85A653
  db "Balnia Temple 1F", $00
  db "Balnia Temple 2F", $00
  db "Dwarven Pass",     $00, $00, $00, $00, $00
  db "Crimson Valley",   $00, $00, $00
  db "Lost Woods",       $00, $00, $00, $00, $00, $00, $00
  db "Ice Mine 1F",      $00, $00, $00, $00, $00, $00
  db "Ice Mine B1F",     $00, $00, $00, $00, $00
  db "Ice Mine B2F",     $00, $00, $00, $00, $00
  db "Endless Tower1F",  $00, $00
  db "Endless Tower2F",  $00, $00
  db "Endless Tower3F",  $00, $00
  db "Endless Tower4F",  $00, $00
  db "Endless Tower5F",  $00, $00
  db "Endless Tower6F",  $00, $00
  db "Endless Tower7F",  $00, $00
  db "Endless Tower8F",  $00, $00
  db "Endless 9F",       $00, $00, $00, $00, $00, $00, $00
  db "Endless 10F",      $00, $00, $00, $00, $00, $00
  db "Endless 11F",      $00, $00, $00, $00, $00, $00
  db "Endless 12F",      $00, $00, $00, $00, $00, $00
  db "Bizance Castle",   $00, $00, $00
  db "Secret Tunnel",    $00, $00, $00, $00
  db "Endless Tower1F",  $00, $00
  db "Endless Tower2F",  $00, $00
  db "Endless Tower3F",  $00, $00
  db "Endless Tower4F",  $00, $00
  db "Endless Tower5F",  $00, $00
  db "Endless Tower6F",  $00, $00
  db "Endless Tower7F",  $00, $00
  db "Endless Tower8F",  $00, $00
  db "Endless 9F",       $00, $00, $00, $00, $00, $00, $00
  db "Endless 10F",      $00, $00, $00, $00, $00, $00
  db "Endless 11F",      $00, $00, $00, $00, $00, $00
  db "Endless 12F",      $00, $00, $00, $00, $00, $00
  
;Element names in the menu
org $85A895
  db "None  ", $00
  db "Wind  ", $00
  db "Earth ", $00
  db "Water ", $00
  db "Fire  ", $00
  db "------", $00

;Status effect names (Condition in the menu)
org $85A8BF
  db "OK          ", $00
  db "Dead        ", $00
  db "Missing     ", $00
  db "Paralyzed   ", $00
  db "Petrified   ", $00
  db "Confused    ", $00
  db "Sleeping    ", $00

;Character names; unsure where these are called
org $85D62D
  db "Rooks  ", $00
  db "       ", $00  ;Probably the 4 spirits
  db "       ", $00
  db "       ", $00
  db "       ", $00
  db "Teefa  ", $00
  db "Sarah  ", $00
  db "Arwin  ", $00
  db "Axs    ", $00
  db "       ", $00

;Equipment names
;These can be 16 bytes long, with a null terminator $00
org $85D67D
  db "                ", $00
  db "Dagger          ", $00
  db "Short Sword     ", $00
  db "Long Sword      ", $00
  db "Broad Sword     ", $00
  db "Bastard Sword   ", $00
  db "Ice Blade       ", $00
  db "Wightslayer     ", $00
  db "Fire Blade      ", $00
  db "Dragon Blade    ", $00
  db "Mythril Sword   ", $00
  db "Thunder Blade   ", $00
  db "Ragnarok        ", $00
  db "Crystal Sword   ", $00
  db "Spirit Sword    ", $00
  db "Armageddon II   ", $00
  db "Golden Sword    ", $00
  db "Cursed Sword    ", $00
  db "Francisca       ", $00
  db "Battle Axe      ", $00
  db "Great Axe       ", $00
  db "Devil Axe       ", $00
  db "Staff           ", $00
  db "Mage Staff      ", $00
  db "Wand            ", $00
  db "Flare Wand      ", $00
  db "Sage's Staff    ", $00
  db "Wand of Lords   ", $00
  db "Wisdom Staff    ", $00
  db "Spirit Staff    ", $00
  db "Mace            ", $00
  db "Flail           ", $00
  db "War Hammer      ", $00
  db "Morning Star    ", $00
  db "Whip            ", $00
  db "Chain Whip      ", $00
  db "Thorn Whip      ", $00
  db "No-Horny Bat    ", $00
  db "Sword 2         ", $00
  db "Sword 3         ", $00
  db "Sword 4         ", $00
  db "Soft Leather    ", $00
  db "Hard Leather    ", $00
  db "Ring Mail       ", $00
  db "Scale Mail      ", $00
  db "Chain Mail      ", $00
  db "Breast Mail     ", $00
  db "Breastplate     ", $00
  db "Splint Mail     ", $00
  db "Plate Mail      ", $00
  db "Mythril Chain   ", $00
  db "Mythril Plate   ", $00
  db "Mythril Mail    ", $00
  db "Devil Mail      ", $00
  db "Dragon Mail     ", $00
  db "Magic Plate     ", $00
  db "Magic Mail      ", $00
  db "Earth Plate     ", $00
  db "Fanas' Armor    ", $00
  db "Gorgeous Mail   ", $00
  db "Robe            ", $00
  db "Mythril Robe    ", $00
  db "White Robe      ", $00
  db "Priest Robe     ", $00
  db "Magic Robe      ", $00
  db "Garb of Mages   ", $00
  db "Armor 1         ", $00
  db "Armor 2         ", $00
  db "Armor 3         ", $00
  db "Armor 4         ", $00
  db "Armor 5         ", $00
  db "Armor 6         ", $00
  db "Armor 7         ", $00
  db "Armor 8         ", $00
  db "Armor 9         ", $00
  db "Armor 10        ", $00
  db "Armor 11        ", $00
  db "Armor 12        ", $00
  db "Armor 13        ", $00
  db "Armor 14        ", $00
  db "Armor 15        ", $00
  db "Small Shield    ", $00
  db "Large Shield    ", $00
  db "Buckler         ", $00
  db "Iron Shield     ", $00
  db "Mythril Shield  ", $00
  db "Dragon Shield   ", $00
  db "Devil Shield    ", $00
  db "Magic Shield    ", $00
  db "Kaiser Shield   ", $00
  db "Fanas' Shield   ", $00
  db "Cursed Shield   ", $00
  db "Metal Bracelet  ", $00
  db "Rune Bracelet   ", $00
  db "Mythril Bracelet", $00
  db "Magic Bracelet  ", $00
  db "Spirit Bangle   ", $00
  db "Dusk Bracelet   ", $00
  db "Cursed Bangle   ", $00
  db "Amulet 1        ", $00
  db "Amulet 2        ", $00
  db "Secret Ring     ", $00
  db "Lifeforce Ring  ", $00
  db "Hearsay Ring    ", $00
  db "Inspiring Ring  ", $00
  db "Tranquil Ring   ", $00
  db "Ancient Ring    ", $00
  db "Sacred Ring     ", $00
  db "Bravery Ring    ", $00
  db "Hope Ring       ", $00
  db "Glittery Ring   ", $00
  db "Radiant Ring    ", $00
  db "Wondrous Ring   ", $00
  db "Marvelous Ring  ", $00
  db "Curved Ring     ", $00
  db "Twisted Ring    ", $00
  db "Ultimate Ring   ", $00
  db "Fascination Ring", $00
  db "Tiamat Repellent", $00
  db "Ring 2          ", $00
  db "Ring 3          ", $00


;Spell names : Spells can be 21 bytes
;But there's a minor display bug if a spell is 20 letters long (Change Attr. to Wind) due to the way trailing spaces are handled
org $85E340
  db "                     ", $00
  db "Lightning Shot       ", $00
  db "Lightning Volley     ", $00
  db "Lightning Barrage    ", $00
  db "Rubble Shot          ", $00
  db "Rubble Volley        ", $00
  db "Rubble Barrage       ", $00
  db "Water Shot           ", $00
  db "Water Volley         ", $00
  db "Water Barrage        ", $00
  db "Flame Shot           ", $00
  db "Flame Volley         ", $00
  db "Flame Barrage        ", $00
  db "Skyblade Blast       ", $00
  db "Frozen Voidslash     ", $00
  db "Land Sea Dragon      ", $00
  db "Blazing Cyclone      ", $00
  db "Magma Inferno        ", $00
  db "Icefire Slash        ", $00
  db "Coldstone Tempest    ", $00
  db "Volcanic Eruption    ", $00
  db "Frozen Firenado      ", $00
  db "Atomic Blast         ", $00
  db "Armageddon           ", $00
  db "Summon Wind Spirit   ", $00
  db "Summon Earth Spirit  ", $00
  db "Summon Water Spirit  ", $00
  db "Summon Fire Spirit   ", $00
  db "Drain Life           ", $00
  db "Drain Mana           ", $00
  db "Healing Water All    ", $00   ;HP Restore All (60)
  db "Healing Light        ", $00   ;HP Restore (100)
  db "Heal 1               ", $00   ;Heal 1 (80)
  db "Heal 2               ", $00   ;Heal 2 (180)
  db "Heal Max             ", $00   ;Heal 3 (999)
  db "Heal All 1           ", $00   ;Heal All 1 (80)
  db "Heal All 2           ", $00   ;Heal All 2 (120)
  db "Disrupting Gale      ", $00
  db "Earth Chasm          ", $00
  db "Death                ", $00
  db "Paralyze Spark All   ", $00
  db "Petrify All          ", $00
  db "Silence Mirror All   ", $00
  db "Sleep Mist All       ", $00
  db "Confuse Flame All    ", $00
  db "Paralyze Spark       ", $00
  db "Petrify              ", $00
  db "Silence Mirror       ", $00
  db "Sleep Mist           ", $00
  db "Confuse Flame        ", $00
  db "Evasion Down         ", $00
  db "Evasion Down All     ", $00
  db "Defense Down         ", $00
  db "Defense Down All     ", $00
  db "Accuracy Down        ", $00
  db "Accuracy Down All    ", $00
  db "Attack Down          ", $00
  db "Attack Down All      ", $00
  db "Requiem              ", $00
  db "Final Repose         ", $00
  db "Heavenly Strike      ", $00
  db "Last Resort          ", $00
  db "Escape               ", $00
  db "Evasion Up All       ", $00
  db "Defense Up All       ", $00
  db "Accuracy Up All      ", $00
  db "Attack Up All        ", $00
  db "Barrier of Wind      ", $00
  db "Barrier of Earth     ", $00
  db "Barrier of Water     ", $00
  db "Barrier of Fire      ", $00
  db "Reflect Pain         ", $00
  db "Reflect Magic        ", $00
  db "Purify All           ", $00
  db "Unparalyze           ", $00
  db "Unpetrify            ", $00
  db "Revive Spirit        ", $00
  db "Gate                 ", $00
  db "Set Magic Mark       ", $00
  db "Activate Magic Mark  ", $00
  db "Requiem 2            ", $00
  db "Final Repose 2       ", $00

;Item use text
;"Alertness" used for Quick Honey, "HP" for Life Honey
org $85EE10
  db "Strength    ", $00
  db "Intelligence", $00
  db "Endurance   ", $00
  db "Alertness   ", $00
  db "HP          ", $00
  db "MP          ", $00
  db "Dead     ", $00
  db "Condition", $00
  db "paralyzed", $00
  db "petrified", $00
  db "confused ", $00
  db "sleeping ", $00

;Item names
org $85EE9A
  db "                   ", $00
  db "Return Ring        ", $00
  db "Water of Life      ", $00
  db "Sleeping Bag       ", $00
  db "Tent               ", $00
  db "Strong Honey       ", $00
  db "Wise Honey         ", $00
  db "Tough Honey        ", $00
  db "Quick Honey        ", $00
  db "Life Honey         ", $00
  db "Mana Honey         ", $00
  db "Herbs              ", $00
  db "Medicine           ", $00
  db "Silver Flask       ", $00
  db "Gold Flask         ", $00
  db "Maiden's Tears     ", $00
  db "Lunar Balm         ", $00
  db "Enchanted Jewel    ", $00,$00


;Card names
org $85F038
  db "          ",  $00
  db "Wind Card",   $00,$00
  db "Earth Card",  $00
  db "Water Card",  $00
  db "Fire Card",   $00,$00
  db "Blood Card",  $00
  db "Fog Card  ",  $00
  db "Call Amulet", $00

;Used with Death spells
org $87C423
  db "been swept away by Wind", $00   ;Chaos Wind
  db "been swallowed by Earth", $00   ;Entomb
  db "been cremated by Fire  ", $00   ;Destroy

;Used with status effect spells
org $87C4F1
  db "become confused  ", $00   ;Confuse
  db "slept            ", $00   ;Sleep
  db "been paralyzed   ", $00   ;Paralyze
  db "been petrified   ", $00   ;Petrify
  db "been silenced    ", $00   ;Stop

;Used with buff/debuff spells
org $87C631
  db "Evasion        ", $00
  db "Defense        ", $00
  db "Accuracy       ", $00
  db "Attack         ", $00

;Used with Change Attribute spells
org $87C6B4
  db "Wind",  $00,$00
  db "Earth", $00
  db "Water", $00
  db "Fire",  $00,$00

;Used with status heal spells ("Recovered from Sleeping")
org $87C6FF
  db "Paralyzed", $00
  db "Petrified", $00
  db "Confused",  $00,$00
  db "Sleeping",  $00,$00
