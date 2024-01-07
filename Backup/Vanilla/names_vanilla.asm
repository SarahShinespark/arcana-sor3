;Enemy names, spell names, item names, weapon names etc

; Battle names. Spirit names are also used for the Spirit healer to pick who to revive.
org $059F7B
  db "Rooks     ", $00
  db "Sylph     ", $00
  db "Dao       ", $00
  db "Marid     ", $00
  db "Efrite    ", $00
  db "Teefa     ", $00
  db "Salah     ", $00
  db "Darwin    ", $00
  db "Axs       ", $00
  db "          ", $00

;Enemy names
;These are 16 bytes each, but too close to the limit may not display correctly.
;Best to keep them 14 bytes or less.
org $059FE9
  db "Slime           ", $00
  db "Pilferer        ", $00
  db "Thief           ", $00
  db "Goblin          ", $00
  db "Ogre            ", $00
  db "Hound           ", $00
  db "Lupus           ", $00
  db "Saurian         ", $00
  db "Lizard          ", $00
  db "Gurgeon         ", $00
  db "Jell            ", $00
  db "Stone Guardian  ", $00
  db "Iron Guardian   ", $00
  db "Bee             ", $00
  db "Flytrap         ", $00
  db "Wolfsbane       ", $00
  db "Huetree         ", $00
  db "Trunkman        ", $00
  db "Sauropod        ", $00
  db "Assassin        ", $00
  db "Cyclops         ", $00
  db "Efrite          ", $00
  db "Zerel           ", $00
  db "Jeru            ", $00
  db "Hobgoblin       ", $00
  db "Fighter         ", $00
  db "Raiton          ", $00
  db "Mage            ", $00
  db "Undead          ", $00
  db "Skeleton        ", $00
  db "Witch           ", $00
  db "Bajis           ", $00
  db "Manteco         ", $00
  db "Bone            ", $00
  db "Ramia           ", $00
  db "Deep One        ", $00
  db "Warlock         ", $00
  db "Troll           ", $00
  db "Mimic           ", $00
  db "Hydra           ", $00
  db "Sauza           ", $00
  db "Jara            ", $00
  db "Bugbear         ", $00
  db "Knight          ", $00
  db "Vampire Bee     ", $00
  db "Ghost           ", $00
  db "Rilus           ", $00
  db "Dragonian       ", $00
  db "Fult            ", $00
  db "Reach           ", $00
  db "Nostrus         ", $00
  db "Merlini         ", $00
  db "Aurane          ", $00
  db "Giant           ", $00
  db "Blue Dragon     ", $00
  db "Green Dragon    ", $00
  db "Darah           ", $00
  db "Barah           ", $00
  db "Ariel           ", $00
  db "Teefa           ", $00
  db "Red Dragon      ", $00
  db "Cloud Dragon    ", $00
  db "Cyclops         ", $00
  db "Minotaurus      ", $00
  db "Sword Master    ", $00
  db "Wizard          ", $00
  db "Desurin         ", $00
  db "Shaman          ", $00
  db "Sphinx          ", $00
  db "Bali            ", $00
  db "Medusa          ", $00
  db "Raenon          ", $00
  db "Phantom         ", $00
  db "Giant Bee       ", $00
  db "Queen Bee       ", $00
  db "Karul           ", $00
  db "Galneon         ", $00
  db "Galneon         ", $00
  db "Rimsala         ", $00
  db "Rimsala         ", $00

; Enemy postfixes (Goblin A..H)
org $05A53C
  db " A", $00
  db " B", $00
  db " C", $00
  db " D", $00
  db " E", $00
  db " F", $00
  db " G", $00
  db " H", $00

;Character classes
org $05A554
  db "Card Master     ", $00  ;Rooks
  db "Spirit of Wind  ", $00  ;Sylph
  db "Spirit of Land  ", $00  ;Dao
  db "Spirit of Water ", $00  ;Marid
  db "Spirit of Fire  ", $00  ;Efrite
  db "Betrayer        ", $00  ;Teefa
  db "Princess        ", $00  ;Salah
  db "Vagabond        ", $00  ;Darwin
  db "Woodcutter      ", $00  ;Axs
  db "----------------", $00  ;Empty slot

;Location names
;These are 16 bytes each plus a trailing $00
;If less than 16 bytes are used, the rest has to be padded with $00
;For example:
;Galia00000000000 0
;Elf Village00000 0
;Bintel Castle000 0
;My Hero Academia 0
org $05A5FE
  db "Galia",         $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db "Doraf",         $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db "Doraf",         $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00, $00
  db "Elf Village",   $00, $00, $00, $00, $00, $00
  db "Bintel Castle", $00, $00, $00, $00

;Dungeon names
;These are 16 bytes each plus a trailing $00
;If less than 16 bytes are used, the rest has to be padded with $00. (This is easier to see in hexadecimal)
;For example:
;Balnia Temple 1F 0
;Draven Pass00000 0
;Crimson Valley00 0
;Ice Mine00000000 0
org $05A653
  db "Balnia Temple 1F", $00
  db "Balnia Temple 2F", $00
  db "Draven Pass",      $00, $00, $00, $00, $00, $00
  db "Crimson Valley",   $00, $00, $00
  db "Forest of Doubt",  $00, $00
  db "Ice Mine",         $00, $00, $00, $00, $00, $00, $00, $00, $00
  db "Icicle Dungeon",   $00, $00, $00
  db "Polar Dungeon",    $00, $00, $00, $00
  db "Stavery 1F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 2F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 3F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 4F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 5F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 6F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 7F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 8F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 9F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 10F",      $00, $00, $00, $00, $00, $00
  db "Stavery 11F",      $00, $00, $00, $00, $00, $00
  db "Stavery 12F",      $00, $00, $00, $00, $00, $00
  db "Bintel Castle",    $00, $00, $00, $00
  db "A Tunnel",         $00, $00, $00, $00, $00, $00, $00, $00, $00
  db "Stavery 1F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 2F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 3F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 4F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 5F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 6F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 7F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 8F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 9F",       $00, $00, $00, $00, $00, $00, $00
  db "Stavery 10F",      $00, $00, $00, $00, $00, $00
  db "Stavery 11F",      $00, $00, $00, $00, $00, $00
  db "Stavery 12F",      $00, $00, $00, $00, $00, $00

;Element names in the menu
org $05A895
  db "Man   ", $00
  db "Wind  ", $00
  db "Earth ", $00
  db "Water ", $00
  db "Fire  ", $00
  db "------", $00

;Status effect names (Condition in the menu)
org $05A8BF
  db "Satisfactory", $00
  db "Deceased    ", $00
  db "Not here    ", $00
  db "Paralyzed   ", $00
  db "Petrified   ", $00
  db "Confused    ", $00
  db "Sleeping    ", $00

;Character names; unsure where these are called
org $05D62D
  db "Rooks  ", $00
  db "       ", $00  ;Probably the 4 spirits
  db "       ", $00
  db "       ", $00
  db "       ", $00
  db "Teefa  ", $00
  db "Salah  ", $00
  db "Darwin ", $00
  db "Axs    ", $00
  db "       ", $00

;Equipment names
;These can be 16 bytes long, with a null terminator $00
org $05D67D
  db "                ", $00
  db "Dagger          ", $00
  db "Short Sword     ", $00
  db "Long Sword      ", $00
  db "Broad Sword     ", $00
  db "Scimitar        ", $00
  db "Ice Blade       ", $00
  db "Undead Blade    ", $00
  db "Fire Blade      ", $00
  db "Dragon Blade    ", $00
  db "Magic Sword     ", $00
  db "Lightning Sword ", $00
  db "Desiree         ", $00
  db "Crystal Sword   ", $00
  db "Spirit Sword    ", $00
  db "Giant Sword     ", $00
  db "Golden Sword    ", $00
  db "Cursed Sword    ", $00
  db "Flying Axe      ", $00
  db "Battle Axe      ", $00
  db "Great Axe       ", $00
  db "Demon Axe       ", $00
  db "Staff           ", $00
  db "Mage Staff      ", $00
  db "Memory Wand     ", $00
  db "Firebrand       ", $00
  db "Elder's Staff   ", $00
  db "Wish Wand       ", $00
  db "Staff of Wisdom ", $00
  db "Spirit Staff    ", $00
  db "Mace            ", $00
  db "Flail           ", $00
  db "Battle Hammer   ", $00
  db "Morning Star    ", $00
  db "Whip            ", $00
  db "Chain Whip      ", $00
  db "Blackthorne Whip", $00
  db "Sword 1         ", $00
  db "Sword 2         ", $00
  db "Sword 3         ", $00
  db "Sword 4         ", $00
  db "Soft Leather    ", $00
  db "Hard Leather    ", $00
  db "Ring Mail       ", $00
  db "Scale Mail      ", $00
  db "Chain Mail      ", $00
  db "Breast Mail     ", $00
  db "Breast Plate    ", $00
  db "Seam Mail       ", $00
  db "Plate Mail      ", $00
  db "Mithril Chain   ", $00
  db "Mithril Plate   ", $00
  db "Mithril Mail    ", $00
  db "Demon Mail      ", $00
  db "Dragon Mail     ", $00
  db "Magic Plate     ", $00
  db "Magic Mail      ", $00
  db "Earth Plate     ", $00
  db "Grand armor     ", $00
  db "Rococo Armor    ", $00
  db "Robe            ", $00
  db "Silver Robe     ", $00
  db "White Robe      ", $00
  db "Shaman Robe     ", $00
  db "Magic Robe      ", $00
  db "Robe of Valor   ", $00
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
  db "Spike Shield    ", $00
  db "Iron Shield     ", $00
  db "Mithril Shield  ", $00
  db "Dragon Shield   ", $00
  db "Demon Shield    ", $00
  db "Magic Shield    ", $00
  db "Caesar Shield   ", $00
  db "Grand Shield    ", $00
  db "Cursed Shield   ", $00
  db "Talisman        ", $00
  db "Rune Gauntlet   ", $00
  db "Mithril Gauntlet", $00
  db "Magic Gauntlet  ", $00
  db "Spirit Gauntlet ", $00
  db "Moon Gauntlet   ", $00
  db "Cursed Gauntlet ", $00
  db "Amulet 1        ", $00
  db "Amulet 2        ", $00
  db "Secret Ring     ", $00
  db "Life Ring       ", $00
  db "Euhancer Ring   ", $00
  db "Ring Inspiration", $00
  db "Peace Ring      ", $00
  db "Ancient Ring    ", $00
  db "Ring of Life    ", $00
  db "Ring of Valor   ", $00
  db "Ring of Hope    ", $00
  db "Sparkling Ring  ", $00
  db "Shining Ring    ", $00
  db "Ring Amazement  ", $00
  db "RingAstonishment", $00
  db "Crooked Ring    ", $00
  db "Twisted Ring    ", $00
  db "Grand Ring      ", $00
  db "Charm Ring      ", $00
  db "Ring 1          ", $00
  db "Ring 2          ", $00
  db "Ring 3          ", $00


;Spell names : Spells can be 21 bytes
;But there's a minor display bug if a spell is 20 letters long (Change Attr. to Wind) due to the way trailing spaces are handled
org $05E340
  db "                     ", $00
  db "Lightning 1          ", $00
  db "Lightning 2          ", $00
  db "Lightning 3          ", $00
  db "Smash 1              ", $00
  db "Smash 2              ", $00
  db "Smash 3              ", $00
  db "Water 1              ", $00
  db "Water 2              ", $00
  db "Water 3              ", $00
  db "Flame 1              ", $00
  db "Flame 2              ", $00
  db "Flame 3              ", $00
  db "Attribute 1          ", $00
  db "Attribute 2          ", $00
  db "Attribute 3          ", $00
  db "Attribute 4          ", $00
  db "Attribute 5          ", $00
  db "Attribute 6          ", $00
  db "Attribute 7          ", $00
  db "Attribute 8          ", $00
  db "Attribute 9          ", $00
  db "Attribute 10         ", $00
  db "Attribute 11         ", $00
  db "Call Wind Spirit     ", $00
  db "Call Earth Spirit    ", $00
  db "Call Water Spirit    ", $00
  db "Call Fire Spirit     ", $00
  db "Drain Spell          ", $00
  db "Psych Spell          ", $00
  db "HP Restore All       ", $00
  db "HP Restore           ", $00
  db "Heal 1               ", $00
  db "Heal 2               ", $00
  db "Heal 3               ", $00
  db "Heal All 1           ", $00
  db "Heal All 2           ", $00
  db "Chaos Wind           ", $00
  db "Entomb               ", $00
  db "Destroy              ", $00
  db "Paralyze All         ", $00
  db "Petrify All          ", $00
  db "Stop All             ", $00
  db "Sleep All            ", $00
  db "Confused All         ", $00
  db "Paralyze             ", $00
  db "Petrify              ", $00
  db "Stop                 ", $00
  db "Sleep                ", $00
  db "Confused             ", $00
  db "Offense Impair       ", $00
  db "Offense Impair All   ", $00
  db "Defense Impair       ", $00
  db "Defense Impair All   ", $00
  db "Accuracy Impair      ", $00
  db "Accuracy Impair All  ", $00
  db "Attack Impair        ", $00
  db "Attack Impair All    ", $00
  db "Requiem              ", $00
  db "Emancipation         ", $00
  db "Final Liberation     ", $00
  db "Ruinous Mission      ", $00
  db "Flee                 ", $00
  db "Dodge All            ", $00
  db "Wall All             ", $00
  db "Accuracy Increase All", $00
  db "Stomp All            ", $00
  db "Change Attr. to Wind ", $00
  db "Change Attr. to Earth", $00
  db "Change Attr. to Water", $00
  db "Change Attr. to Fire ", $00
  db "Repel                ", $00
  db "Mirror               ", $00
  db "Restore All          ", $00
  db "Revitalize           ", $00
  db "Unpetrify            ", $00
  db "Restoration of Spirit", $00
  db "Home                 ", $00
  db "Way Point            ", $00
  db "Way Point Warp       ", $00
  db "diminish Encounters  ", $00
  db "diminish Encounters 2", $00

;Item text
;"Agility" used for Agility Honey, "HP" for Restore Honey
org $05EE10
  db "Strength    ", $00
  db "Intelligence", $00
  db "Endurance   ", $00
  db "Agility     ", $00
  db "HP          ", $00
  db "MP          ", $00
  db "Dead     ", $00
  db "Condition", $00
  db "Paralyzed", $00
  db "Petrified", $00
  db "Confused ", $00
  db "Sleeping ", $00

;Item names
org $05EE9A
  db "                   ", $00
  db "Return Ring        ", $00
  db "Water of Life      ", $00
  db "Sleeping Bag       ", $00
  db "Tent               ", $00
  db "Strength Honey     ", $00
  db "Intelligence Honey ", $00
  db "Endurance Honey    ", $00
  db "Agility Honey      ", $00
  db "Restore Honey      ", $00
  db "MP Honey           ", $00
  db "Herbs              ", $00
  db "Medicine           ", $00
  db "Silver Flask       ", $00
  db "Gold Flask         ", $00
  db "Maiden's Tears     ", $00
  db "Moon Oil           ", $00
  db "Enchanted Jewel    ", $00,$00

;Card names
org $05F038
  db "          ",  $00
  db "Wind Card ",  $00
  db "Earth Card",  $00
  db "Water Card",  $00
  db "Fire Card ",  $00
  db "Null Card ",  $00
  db "Fog Card  ",  $00
  db "Call Amulet", $00

;Used with Death spells
org $07C423
  db "been swept away by Wind", $00   ;Chaos Wind
  db "been covered with Earth", $00   ;Entomb
  db "succumbed to shock     ", $00   ;Destroy

;Used with status effect spells
org $07C4F1
  db "become confused  ", $00   ;Confuse
  db "slept            ", $00   ;Sleep
  db "been paralyzed   ", $00   ;Paralyze
  db "been petrified   ", $00   ;Petrify
  db "been sllenced    ", $00   ;Stop

;Used with buff/debuff spells
org $07C631
  db "Avoidance      ", $00
  db "Defensive Power", $00
  db "Accuracy       ", $00
  db "Attack Power   ", $00

;Used with Change Attribute spells
org $07C6B4
  db "Wind ", $00
  db "Earth", $00
  db "Water", $00
  db "Fire ", $00

;Used with status heal spells ("Recovered from Sleeping")
org $07C6FF
  db "Paralyzed", $00
  db "Petrified", $00
  db "Confused ", $00
  db "Sleeping ", $00
