# arcana-sor3
Project page for Arcana - Seal of Rimsala v3, a Super Nintendo game mod.\
These files can be assembled using Asar to create a patch for version 3.\
The modular nature of these ASM files makes it much easier to edit and troubleshoot one section at a time.\
The code language is 65c816 ASM, based on 6502 (NES).

## Patching instructions
Use an IPS patcher to patch an unheadered Arcana ROM with sor_v2.1.15_a12.\
Change the extension to SFC.\
Then use Asar (asar main.asm sor_a12.sfc) to patch all of the files at once to create sor_v3.sfc.


## Contents
alchemist_sor_v3.asm		- Localized conversations for the alchemist NPC.\
cool_maps_sor_v3.asm		- Draws more map icons, like exits and doors.\
descriptions_sor_v3.asm	- Localized Item, Spell, Equipment descriptions.\
detail_expand_v10.asm		- Expanded info like Spell power/accuracy in their descriptions, and an improved status screen.\
effects_sor_v3.asm			- Healing effects of items and stat increases of honeys. Honeys were slightly strengthened.\
encounters_sor_v3.asm		- Determines the possible random encounters. Some variety was increased and some rare encounters are more common.\
enemies_sor_v3.asm			- Enemy stats. About 4 enemies were given different spells, and boss EXP was doubled.\
epilogue_sor_v3.asm			- Localized epilogue text with faster transitions.\
equipment_sor_v3.asm		- Editable equipment stats. IIRC these are unchanged.\
intro_sor_v3.asm			  - Localized intro crawl with better pacing, and chapter titles.\
main_sor_v3.asm         - Patches all of the ASM files at once. Also has some miscellaneous global mods like the ROM header or editing the encounter rate.\
minor_text_sor_v3.asm   - Text for opening chests, being surprised in battle etc. Adds a message for "can't carry more GP."\
names_sor_v3.asm			  - Localized names. Enemies, Equipment, Spells, Towns... everything.\
smart_shops.asm         - Speeds up shop purchases.\
spells_sor_v3.asm			  - Spell statistics like their SFX. Unpatches 2.2's glitchy spell palettes.\
stage_select.asm        - Edits the save files for the 4 stage selects.\
story_sor_v3.asm			  - Localized main story. The meat and potatoes of this mod. (Mmm, meat and potatoes.)\
treasures_shops_sor_v3.asm - Edits treasure locations and contents, and shop contents and prices.\
unfuck_credits_sor_v3.asm	 - Makes the credits easier to modify. Tweaks a few things and adds an unused credit.\
\
sor_v3_maps.bin     - The uncompressed maps in binary format.

### Treasure_Checker.py
A command-line python script for confirming the maps and treasures match up. If they don't match, you'll have treasure chests not appearing at all.\
\
Usage: Treasure_Checker.py -i "patched_rom.smc"\
  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
Options: -m (Display maps), -? (Display help)\
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
**Requires uncompressed map data (SOR v2.1 or later)
