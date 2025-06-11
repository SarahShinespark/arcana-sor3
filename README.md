# arcana-sor3
Project page for `Arcana - Seal of Rimsala v3`, a Super Nintendo game mod.\
The files in the Code folder can be assembled using [Asar](https://github.com/RPGHacker/asar) on the command line, to create a patch for version 3.0 and up.\
The modular nature of these ASM files makes it much easier to edit and troubleshoot one section at a time.\
The code language is 65c816 ASM, based on 6502 (NES).

## Patching instructions
#### To play the official release ####
* [Patch](https://www.romhacking.net/patch/) `sor_v3.ips` to an unheadered Arcana ROM. That's it!

#### To play the latest beta ####
* Patch `sor_v3.1_b7.ips` to an unheadered Arcana ROM.

#### To compile the game yourself (For total badasses) ####
* Use an [IPS patcher](https://www.romhacking.net/patch/) to patch an unheadered Arcana ROM with `fastrom_kando_a16.ips`.
* Name the file `sor_v3.1`.sfc or something easy to find.
* Make sure the extension is `.sfc`. (Asar expects .SFC for Super Nintendo ROMs.)
* Place your patched ROM in the `Code` folder and open the command line (`cmd` on the Address Bar in Windows.)
* Then use [Asar](https://github.com/RPGHacker/asar): `asar main_sor_v3.asm sor_v3.1.sfc` to patch all of the files at once. That's it!


## References
`Maps/ChX_XX_map.png`     - Online reference for SOR's unique maps and treasure chests.\
`Maps/ChX_XX_monsters.png`- Online reference for every enemy location and encounter rate, for achievement hunters.\
`Enemy stats`             - Lists every enemy's stats, element and race, and their random spellcast.\
`Equipment`               - Lists all equipment stats, including some hidden stats and dummied equipment.\
`Run chances`             - Shows how likely you are to escape from battle from each enemy, based on your respective LVLs.\
`Spells`                  - Lists every spell in the game, including base accuracy and dummied spells.\

## Patches
(Applied with an [IPS patcher](https://www.romhacking.net/patch/). Make a backup of your ROM first!)
`encounter_none`          - Permanently prevents random encounters. For challenge games or testing.\
`fantasy_font v6`         - An alternate font for a high fantasy feel. [(Preview)](https://github.com/SarahShinespark/arcana-sor3/blob/main/Patches/fantasy%20font%20demo.png)\
`graphics_fix_snes9x`     - Shortens the pixellation when getting hit, to avoid a Snes9x graphics bug.\
`see all maps`            - Makes every map completely visible, for those who don't want to fill them in.


## Code

`cool_maps_sor_v3.asm`		- Draws more map icons, like exits and doors.\
`descriptions_sor_v3.asm`	- Localized Item, Spell, Equipment descriptions.\
`detail_expand_v10.asm`		- Expanded info like Spell power/accuracy in their descriptions, and an improved status screen.\
`effects_sor_v3.asm`			- Healing effects of items and stat increases of honeys. Honeys were slightly strengthened.\
`encounters_sor_v3.asm`		- Determines the possible random encounters. Some variety was increased and some rare encounters are more common.\
`enemies_sor_v3.asm`			- Enemy stats. About 4 enemies were given different spells, and boss EXP was doubled.\
`epilogue_sor_v3.asm`			- Localized epilogue text with faster transitions.\
`equipment_sor_v3.asm`		- Editable equipment stats.\
`events.asm`              - Edits to the event code.\
`font_relo.asm`						- Editable VWF sizes (font pixel width). Relocates the font to a larger area.\
`intro_sor_v3.asm`			  - Localized intro crawl with better pacing, and chapter titles.\
`main_sor_v3.asm`         - Patches all of the ASM files at once.\
`minor_text_sor_v3.asm`   - Town dialogue, dungeon and battle text. Adds a message for "can't carry more GP."\
`miscellaneous.asm`			  - Has some miscellaneous global mods like the ROM header or editing the encounter rate.\
`modifications_v3.asm`    - Contains more miscellaneous changes from v2.1.15 and before.\
`names_sor_v3.asm`			  - Localized names. Enemies, Equipment, Spells, Towns... everything.\
`smart_shops.asm`         - Speeds up buying drinks at the bar.\
`spells_sor_v3.asm`			  - Spell statistics like their SFX. Unpatches 2.2's glitchy spell palettes.\
`stage_select.asm`        - Edits the save files for the 4 stage selects.\
`story_sor_v3.asm`			  - Localized main story. The meat and potatoes of this mod. (Mmm, meat and potatoes.)\
`treasures_shops_sor_v3.asm` - Edits treasure locations and contents, and shop contents and prices.\
`unfuck_credits_sor_v3.asm`	 - Makes the credits easier to modify. Tweaks a few things and adds an unused credit.\
\
`new_font.bin`        - The extended font in uncompressed binary.\
`new_font_cards.bin`  - The font for the character cards, compressed.\
`sor_v3_maps.bin`     - The map data in uncompressed binary.\
`title_screen.bin`    - The Seal of Rimsala title screen, compressed.

### Code/Treasure_Checker.py
A command-line python script for confirming the maps and treasures match up. If they don't match, you'll have treasure chests not appearing at all. This tool checks that you've edited `treasures_shops.asm` and `sor_v3_maps.bin` correctly.\
\
Usage: `Treasure_Checker.py` -i "patched_rom.smc"\
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Options: -m (Display maps), -? (Display help)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
**Requires uncompressed map data (SOR v2.1 or later)
