Arcana: Seal of Rimsala - README


TABLE OF CONTENTS

   0. Foreward
   1. Game Rating
   2. Installation
   3. Strategy Tips
   4. Bugs and Known Issues
   5. Version History
   6. Credits



===========

0. FOREWARD

===========

Arcana (Card Master in Japan) was the game that got me into Japanese role-playing games as a kid.
It really meant a lot to me, so one day I decided to look at the game in a hex editor. I immediately
tracked down and fixed the spelling error "a bold of lightning", and from there I looked for more.

A GameFAQs walkthrough by Boco the Chokobo berated the English translation and offered the BEST name changes
available by Babelfish. (I'm teasing, Babelfish is what we used before Google Translate). Actually the guide
pointed out things I never would've thought of, like Gurgeon -> Chimera, Ariel -> Alan/Aaron, and Ramia -> Lamia.
Anyway, there were some weird statements like "spirits are now just resurrectable party members instead
of distant elementals" ...even though they're also resurrectable in Card Master? I checked.
Stuff like that pushed me to investigate myself and dig deeper into what's really what.

I guess I got carried away, because in the process I taught myself 65c816 assembly language and
reverse engineered a majority of the game's code. Now there's a whole channel for SOR on
FFIV Ultima's discord and on NGPlus discord, and a research thread on the GameFAQs message board.
And a larger The Cutting Room Floor entry, and a Data Crystal page, and a Github for the disassembly
and for the mod project... Well, it's fun to get carried away.

Seal of Rimsala's namesake is the Japanese subtitle (Card Master: Rimusaria no Fuuin / Rimsala's Seal).
In this way, I'm announcing my mod as a love letter to the Japanese version. From a more accurate story,
to a faster level-up screen, to displaying the character job titles, I want to show off an authentic
improvement that's just really fun.

Thanks for giving it a shot.
-Sarah, Autumn, Scylla Shinespark


==============

1. GAME RATING

==============

Arcana released before the ESRB/Ratings Board existed, so it doesn't have an official rating.
Therefore, I have given Seal of Rimsala a content rating of "Everyone 10+".
There's mild language, fantasy violence, and a bar where you can order beer.



===============

2. INSTALLATION

===============




================

3. STRATEGY TIPS

================
Here are some tips on how the game mechanics work.


===================
THE FOUR ATTRIBUTES
===================
Every attribute, "element", has a strength and a weakness.
Wind (yellow) beats Earth (green), beats Water (blue), beats Fire (red), beats Wind again.
Opposite elements (Wind/Water, Earth/Fire) do about neutral damage to each other,
and each element slightly resists itself.
(Fire attribute takes slightly less Fire damage.)

People have the None attribute ("Man" in vanilla), represented by gray.
They take slightly less damage from all elements, but don't resist or beat any.

Rooks can learn to change attributes using his spirit cards; this effect lasts until
the end of battle. These spells (Barrier of Wind etc; "Change Attr. to Wind" in vanilla)
will make the party deal elemental damage, and take damage as that element.
For instance, changing the party to Wind (yellow) they will deal much higher damage
to Earth (green) enemies and take much lower damage from them, but they'll really
struggle against Fire (red) enemies.


=================
THE STATUS SCREEN
=================
LV-     Your current Experience Level. On a Level Up, all of your stats will improve,
        and you'll naturally learn new spells. Rooks' spirits share his LV,
        as he is able to command them better.
        Also, Level affects your chances of running from battle.
EXP-    Your experience points to reach the next Experience Level.
        As is standard fare nowadays, defeat enemies to gain experience.
HP-     How much damage you can take.
          If any one person runs out of HP, it's GAME OVER.
          If a spirit dies, its card is torn and it must be revived at the Spirit Healer tent.
MP-     How much magic you can use. Spells cost MP, but Rooks can cast some spells with his cards for free.
Str-    Strength; affects your physical damage and boosts your Base Attack.
Endur-  Endurance; affects your physical damage taken and boosts your Base Defense.
Int-    Intelligence; high levels affect magic damage, magic damage taken, and spell accuracy/evasion.
Alert-  Alertness; every 8 points affect your accuracy, evasion, and chance to critical hit.

Equipment window:
This shows your equipped weapon, armor, amulet and ring.
On the right are four stats (up from 2 in vanilla):

Sword-   Base Attack: your weapon plus strength modifier plus attack buff.
Shield-  Base Defense: your armor plus amulet, plus endurance modifier plus defense buff.
Shield*- Magic Defense: determined by your amulet (shields and bracelets).
         (Magic defense is kinda important later.)
x2:      Critical Hit Rate: Your weapon's % chance to strike about double damage.

The other attributes and bonuses are covered in the "Elemental Equipment" and "Enemy Races" sections.


========
DUNGEONS
========
Random encounters are rolled per-step in Arcana. This means, any move or turn
can trigger a fight. The encounter rate was lowered (1/12 -> 1/20) but there's
still a chance to get multiple fights in a row if you're unlucky.
Some extremely rare areas have very high encounter rates (1/4); these can be
used for grinding at best, and an early grave at worst. If you feel unprepared,
there are several options for escaping battle and returning to town.

Every square on the map is a "tile". And event tiles, like treasure chests or
completed boss fights, are no-encounter zones where you can spin with impunity.
This is a great way to heal spirits, who regenerate slowly and can't be healed with items.


===========
BOSS FIGHTS
===========
While exploring dungeons, beware of boss encounters! There are no warnings,
save a feeling that "it must be here, as this is the only way forward".
Bosses are unrunnable encounters, and they're immune to death spells and
all status effects like Sleep. However, they can still be debuffed.


============
STATUS BUFFS
============
The four buffable stats are Attack, Defense, Accuracy and Evasion.
As with everything else, there's one for each of the four elements.
Attack is Fire, Defense is Earth, Accuracy is Water and Evasion is Wind.

There are three states for each buff:
Attack Down    -> Neutral   -> Attack Up
Defense Down   -> Neutral   -> Defense Up
Accuracy Down  -> Neutral   -> Accuracy Up
Evasion Down   -> Neutral   -> Evasion Up

So if your Attack is decreased, you can return it to Neutral with an Attack Up.
And if your Attack is increased, an enemy can return it to Neutral with an Attack Down.

Stat changes last the entire battle, so they're invaluable in long fights.


=======
ENEMIES
=======
Enemies will simply attack at random. If the enemy knows a spell, there's a 50% chance
they'll cast it instead of attacking. Beware that if they're reduced to half health,
this casting chance will increase to 75%. So don't use area-of-effect spells on a
large group of mages unless you're sure it'll kill them.


==============
STATUS EFFECTS
==============
Sleep: The target is unable to act for several turns.
   Physical attacks will NOT wake them.
Confuse: The target swings wildly, targeting a random friend or foe.
   Physical attacks again, won't snap them out of it.
   In Seal of Rimsala, Confuse was buffed so enemies can no longer cast spells.
Paralyze: The target is unable to act... forever. Lasts after battle.
Petrify: Also permanently prevents action and lasts after battle.
   On enemies, this also reduces their HP to 1.
   On allies, they will take 10% max HP damage every turn.

The Spirits aren't targeted by status effects, so they may have to finish the battle sometimes.
Sleep and Confuse are removed after battle, while Paralyze and Petrify can be lifted
with certain items like a Tent; a night at the Inn; or with certain spells.
Incidentally, you can still cast Unpetrify on yourself outside of battle.


===================
ELEMENTAL EQUIPMENT
===================
Some weapons and armor have an attribute, like the Ice Blade.
This can be checked on the Status screen in Seal of Rimsala.

Weapons with an element will ALWAYS DEAL that element, even if you change attributes.
Dangerously, armor with an element will ALWAYS TAKE DAMAGE AS that element, even
if you change attributes. This kind of equipment is niche, and best used if you
know what you'll be fighting.


===========
ENEMY RACES
===========
Some enemies are much tougher, and resist physical attacks.
To beat these, you should hit their weakness with an Anti weapon.
This can also be checked on the Status screen in Seal of Rimsala.

Undead race: Ghosts, zombies and skeletons.
Dragon race: Uh... Dragons.
Medusa race: Enemies with snake hair.
Giant race: Cyclops, Trolls, and Giants.

So if you're fighting lots of undead, get an Anti-Undead weapon for extra damage
and an Anti-Undead amulet to resist them. Mythril is a good bet for that.
If you're fighting lots of giants, try getting your hands on a Morning Star.



========================

4. BUGS AND KNOWN ISSUES

========================


Unfixed bugs from vanilla
=========================

-If you open a treasure chest without having fought a single monster that chapter,
and then use the Gate (Home) spell to warp back to town, the game will freeze.
Return Rings are fine, though.
(Probably only worth remembering in Bizance Castle, where there's no-encounter rooms.)

-The Trade glitch is still in the game. It's not something you could find casually anyway,
but a speedrunner or TAS runner might make use of it for extra money.

-If you start the final fight with no spirit summoned, your spirits will be set to 0 HP.
The game might freeze, too.



==================

5. VERSION HISTORY

==================

v3.0
- Complete script retranslation; a clearer and more descriptive story
    closer in line with the Japanese version. Emphasis was made on clear
    and less-awkward text while keeping the spirit (or patterned spell names).
- The game was overhauled from v2.1.15, and many experimental changes were reverted to vanilla
    to give the game a more polished and professional quality.
- New dialogue tricks from JP like variable text speed, a dramatic portrait change,
    and characters don't move their mouths during ellipses.
- The level-up screen now states your new LVL, and the text is right-aligned (prettier).
- An extremely useful, improved dungeon map that shows treasure chests,
    exits, events and where bosses were fought.
- Spell expand patch, shows spell power and accuracy along with room for larger descriptions.
- A buff to the Confuse status (a sucky spell); it now also prevents enemy spellcasting.
- Avoided an annoying trailing-space bug ("Rooks' attribute was changed to Wind .")
- Shop overhaul, now there's more interesting and powerful items to save up gold for.
- Treasure overhaul, money is more plentiful and going out of the way is rewarded.
- Treasure chests now alert you if you're at maximum GP.
- Some powerful items are now gated behind bosses so the shop gear isn't immediately obsoleted.
- Added a missing staff member to the credits, a Message Coordinator named Abeshin.
- The documentation has improved to using ASM patches with Asar, and modifying
    or debugging the game is much easier and more modular.



==========

6. CREDITS

==========



