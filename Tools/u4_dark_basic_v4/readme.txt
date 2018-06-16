Ultima IV - a rewrite written soley in Dark Basic (www.darkbasicpro.com) by George Stepan


Things that work in the most recent uploaded version

**************************************************************************************************************************
U4 version 4.0313
-Ability to start with a different tile set. The file Prefs.ini holds the values 1,2 or 3 for the
 three different tile set combinations.
-No bug fixes in this version. Copy you SAVE directory to this new version to maintain existing characters/gameplay.

U4 version 4.0115
Enhancements + minor bug fix!
-There are now 6 new avatar icons to choose from (3 female and 3 male ones). When starting a new game,
the game defaults to either male#3 or female#1 (depending on sex). To use a different icon, simply
/y/ell and type one of the following

FEMALE AVATAR=1
FEMALE AVATAR=2
FEMALE AVATAR=3

MALE AVATAR=1
MALE AVATAR=2
MALE AVATAR=3

Quit'N Save to make the changes stick. Pretty simple!

-Fixed bug where attacking in town caused game to display "Victory" without fighting. That was fixed.
-Fixed many typo's and spelling mistakes
-Skeleton_King_Lair has now proper stairs up/down and is explorable.
-Straw Bits quest item (from a previous and defunct module) removed.

-Spirituality Shrine in the remake is only accessable by going to the Minoc Moongate on the Double Dark Moons and hitting "E". (In case you did not know)
-"D" is for Descend (or Down) and Drink, "T" is for Talk and Touch - depending where you are (dungeon or town).
**************************************************************************************************************************
U4 version 4.0103
-Fixed issue with pre-spawned pirates (by abyss) losing their array starting references.
-Fixed pirate damage at hard level.
-Magical and ranged weapons hit for critical damage whenever sleeping or fleeing mobs are attacked.
-Magical weapons and some ranged get substantial damage increase!
-Added cheats.txt file for those who really need it. Read the file first for command usage.
**************************************************************************************************************************
U4 version 3.0904
More slight enhancements -
-Avatar now casts heal/cure in battle
-All DD and AE spells (Tremor i.e) cause much more damage. Mana use increased accordingly
-Hitting monsters more likely (30%) and for a bit more damage
-Monster starting HP now all random
-After battle, no longer need to cycle thru players to exit fight
-Decreased EXP gains by 300%! Some people were gainging EXP way too fast
-Previous version 3.0824 has mixed text when mixing reagents fixed
**************************************************************************************************************************
U4 version 3.0723
-As promised, Firing cannons from Frigates now work - Use /F/ire <direction>. No exp for killing with cannons.
-Fixed bug with blue flicker after /Z/stats after avatar death in dungeon -Solution to destroy 3D directX objects and reset dungeon_level=0
**************************************************************************************************************************
U4 version 3.0428
-Gaining virtue in Valor is better/much easier
**************************************************************************************************************************
U4 version 3.0413
-Quest for the Virtue of Humility
The Plot of the missing rune is initiated by -
In LB Castle, Ask Trabbi (a lost Jester) about the RUNE
Once you finish the quest, email me your savegame directory(to verify you did not cheat) and I will put your names/handles
in the game boot screen!


-When generating a new character, proper balloon,whirlpool,frigate and horse position reset. To make your SAVEGAME complient
with this version, keep your original save game but replace your prefs.ini with this new one. Also keep in mind the new U4
will have the extra virtue of humility added, so to finish the game you must finish the extra quest
-Fixed bug when talking to the Seer (now Humil = humility etc...) works properly
-Slowed monster spawning 15% as requested. If you still find too many MOBS spawning or spend 80%+ in battle, then
 let me know. I can make the spawn rate a custom feature
-Fixed bug with LB not providing rations after death by Hunger
-Fixed bug with game not going to LB screen after avatar dies and party#>1
-Fixed Mixture/Spell creation with last 3 spells not able to be created. Winds/Up/Down work ok
-Avatar dying in dungeon (party#>1)  did not delete 3D dungeon objects. Fixed
-Avatar dying from hunger/poison/disease did not work properly now fixed
-Dungeon movement/frame rates increased 2X for slower 3D cards (by request)
-Dungeon hunger/poison/disease timer added for better polling
-When Avatar now dies due to hunger/poison/disease, then party is sent to LB himself
-VoH quest added, but game balance and quest testing is underway...appears to work ok. I finished without issues
Feature - Ship Cannon firing should be added by next release
**************************************************************************************************************************
U4 version 3.0331b
-New character movement code
-Increased ship travel against wind
-New monster movement
-Added <Pass after 5 seconds idle time
-Fixed minor bug generating negative monster damage
-Fixed error from Mana Regeneration - routine incorrectly addresses array element
-No more getting poisoned/diseased while on horseback
-Horseback riding now properly slows monster movement
-One cannot board horse while already on horseback message added/fixed
-Scrolled "Cannot save while on HORSEBACK!" to two lines while asking to hole&camp
-Changed Pirates/ships to direct attack mode
-Added Keyboard delay (repeat) using /y/ell DELAY=nnn, where nnn=milliseconds of delay i.e DELAY=050, =50ms delay.Default=200
-Horses reset after new character initiated
-Fixed error generated after buying too many food with too little gold at pub shop
-Some People see WHITE FLICKER during game play (perhaps after ALT-TAB). Type '/y/ SYNC' to get rid of it!
 this will also help restart the music if it ended for whatever reason.
**************************************************************************************************************************
U4 version 3.0315a --*Unreleased testing version*--
-Fixed minor flicker after touching orb
-Dying after orb touch causes orb to become "used"
-Fixed Proper syntax when casting heal/res/cure spell and party=self
-Spelling of Disease now correct!
-Number of monsters engaged/summoned vs. party # now correct.
-During Hawkind's dialog, you can now use shorthand to inquire avatar status.
 Use at least FOUR characters. i.e sacr=sacrifice, hono=honor
**************************************************************************************************************************
U4 version 3.0304a --*Unreleased testing version*--
World Editor ver  3.0304  - fixed out of bounds error when generating water/land
**************************************************************************************************************************
U4 version 3.0226a
-Fixed runtime error 7. Cause was Whirlpool going out of bounds
-Added minor array bounds checking for mob movement/placement
-Added logical exclusion of (1-party#) when party # = 1
-/y/ell cheat commands: FOOD = obtain MORE Food. There are many, but i'll just release this one for now...
-fixed save game of positions<10 saved as 01 rather than 001.
-Fixed WorldEditor so first 256 bytes are displayed (array (0,0) - array (255,255))
*In Some remote cases (reported to me), SAVEGAME errors can be fixed by saving and then hitting F1
*please report any other errors*
**************************************************************************************************************************
U4 version 3.0213b
-Ability to go to Hands/Naked when selecting weapon/armour
-No more black screen when party is killed at LB castle (Thanks Robin!)
-When party is killed, monster now disappears
-Capital letter legit for character name. Use CAPS LOCK. Turn off after character gen
-food upon new character creation increased to 200
**************************************************************************************************************************
U4 version 3.0202
-game play enhancements. Spell damage attenuated by level
**************************************************************************************************************************
U4 version 3.0126a
-minor playability fixes and bug fixes
-/a/ttack in town/castle now enabled. Due to requests, this feature now works. Seer and LB cannot be attacked however
-fixed bug displaying a chest after combat in dungeon and exiting via spell or ladder
-cleaned up some code which dealt with dialogue. Nothing obvious to player - except faster in town movement
-rewrote music handler. Testing to date shows no adverse issues
*playability tests ongoing - no serious issues to report
**************************************************************************************************************************
U4 version 3.0120a
-various game play issues enhanced - magic hits harder and much more frequently
-fixed bug with exiting dungeon spontaneously after using spell /y/up
-merchant vendors now path better
-fixed broken death after combat loop
-reduced food consumption again...by half!
-added /y/ell command. Those commands are going to be kept secret for now (they are cheat codes)
*Started a stability test - no crashes yet.
**************************************************************************************************************************
U4 version 3.0111a
-Sextant provides both world yyy,xxx and Ultima Sextant coordinates
-Added fan created custom graphics! - Initialise via prefs.ini by adding TRUE to statements
-Music plays correctly after hole&camp in dungeon
-Dungeon Editor bug fixed with rooms correctly deleting so U4 won't crash in specific levels (New version released!)
-Lord British Dialog slightly modified and improved (nothing big)
-Fixed doors in dungeons causing memory leaks. Changed texture slightly as well
-Fixed midi not playing correct music after dungeon battle
-Fixed Intro so keys are trapped 20 times faster.
**************************************************************************************************************************
U4 version 3.0105
*More bug fixes and improvements to U4
-game version from now one used format: year.month.day - i.e 3.0105   = Year 2003, Jan 5
-Altered rate of food consumption to 6 food/min, and increased starting food amount
-Starting Gold (gp) increased slightly
-Water NPC in LB Castle uses correct tile
-Julia now joins party. Previous version had her name mispelled as 'Julie' and would not join
-Black Stone and any stones can be found during any moon phase (in this game only)
-Nightshade and Mandrake are able to be found better now
-Moon-Phase code re-written so double dark moons work and item harvesting works better.
-White Stone is now found on dragon's spine as normal. You need to enter Hythloth and exit (also to get Balloon)
-Quest_item code redone to take advantage of special items and prevent cheating
-/c/ast Dispell Magic Works in Dungeons and is used to dispell FIELDS. Player cannot traverse a field within a dugeon now.
-Horses are enabled. NO entry into dungeons. /board Horse or /x/it Horse. 1 Horse is allowed. If the horse is lost,
 then buy another, but new horse replaces old one. Leaving horse in town/world and saving saves horse position.
 Horseback riding prevents getting poisoned/diseased when traveling over swamp areas.
 Horseback riding also slows monster movement. Player movement is same.
-The SAVEGAME format was altered due to this so your previous savegames are not compatibile with current and future versions.
-Town_Editor ver 2.60a released
 -this version has Stable (Horse) Vendors enabled. You can set the price of a horse. Default=500gp / party

*Future enhancement - enable attacks on NPC's (in towns)- Never was implemented since it's counter productive in finishing game.
                    - I may enable this in the future.
**************************************************************************************************************************
U4 ver 1.2.3.0
*Today brings a series on improvements to U4
-No more Escape key ending the game - use /q/uit & save
-Monsters do not walk over rocks during combat
-Magic Wand now a powerful ranged weapon
-Link to Shrine of Sacrifice fixed
-Moon Phases slowed down to 4000ms per phase transition (2x slower)
-No more moon phase display while in town or while in combat
-/p/eer at GEM works in dungeons
-/h/ole up & camp works in dungeons
-/m/ix reagents works in dungeons
-Fixed delay at keyboard. Delay was changed to 80ms vs. 100ms before
-NPC dialog entry now much faster
-Hitting Enter during a NPC conversation ends current conversation
-Damage from chests reduced to 1/3
-/Z/stats now much enhanced 
   -added ability to view any character during viewing (just type player # from roster)
   -added virtue summary for player 1 - shows what virtues have "partial avatar status"
   -ability to bail out of inventory screen anytime - just hit enter
-Rewrote Hawkind dialog. Previous code was pretty bad. Should work correctly now!
-Avatar walking sound is 25% louder
-Added character class selection after going thru Gypsy screens - added this so player can
    select his class - unique to this rewrite only
*If you want to keep your current SAVE GAME, just back it up, install this version and copy over your old SAVEGAME backup!
**************************************************************************************************************************
Dungeon_Editor is released ver 1.2.1.8. See the attached help for that file!
**************************************************************************************************************************
U4 ver 1.2.1.7
-Redid keyboard input code to handle fast rate keyboards. Particularly affected routines are:
Mixing reagents, Casting Spells and Answering y/n during NPC conversations.
-Field tiles now have the correct effect - poison/electric/lava/sleep fields and affects characters correctly
**************************************************************************************************************************
U4 ver 1.2.1.4
-fixed missing link to LB castle
-fixed torches going <0 count and letting avatar into dungeon
-fixed midi sounds not playing correct theme after battle
**************************************************************************************************************************
U4 ver 1.1.2.8
-Fixed so you incur damage over lava in towns/villages/castles etc..
-Monsters no longer walk over illegal tiles
-Enabled user created Mystic Weapons/Armour
-Several Towns have been added and a side quest added for you.
 Start off in Town Bodania next to Britain. See if you can make the item required
 all these towns and NPC's were created/edited with my provided tools!

Town Editor had a few minor bugs - again now fixed
*it still will crash if an error is reported. I have limited error checking code in
**************************************************************************************************************************
U4 ver 1.1.2.7 --*Unreleased testing version*--
-Changed the way the display works when an NPC asks a question
-With Town_Editor you can now input text and have that display on the map instead of typing with icons.
-Fixed other minor misc things with Town_Editor
**************************************************************************************************************************
U4 ver 1.1.2.4
-Moon phases now save with game and load correctly
-Added a unique merchant class called the Tinker.
	The Tinker Class is a unique merchant that will create items from stuff you find in the world. For example
	one can now make rations from cooking items (cookie sheets and dough) and even enchanted armour/weapons. The
	ability to make unique items is very important because it gives you the ability to quest for items and create
	stuff (much like everquest) This feature is here for you, but if you want to stick to a U4 type of quest system
	you still can. It is even possible to create special things that are then used to create more items and so on.
	I fully documented this feature in the FAQ.txt.
-Two towns are added in this edition. One on a new island and another close to Britain. Quests are enabled for you.
-/Z/stats now will display all user created items and also those found in the world.
-Fixed some bugs in both World_editor and town_editor to make their paths work. Always execute them within their directories
 and not from shortcuts.
-Updated the FAQ and help files
*There will be a another update to fix a few minor issues on monday 25th
**************************************************************************************************************************
U4 ver 1.1.1.1  (Last version broke ability to enter any place like towns/castles - now fixed!)
-Fixed major bug with ALL links not working - in essence - you could not enter anywhere - now every link should work
-Fixed another bug that caused "Blocked" from being displayed once exiting a place

- Introduced Town_Editor ver 2.1. There's a help html witin the HELP directory. Please read before running
**************************************************************************************************************************
WORLD EDITOR ver 1.0.2.6
-World editor has been written, and the final version is available here. It is fully functional and it can create
whole new worlds and modify existing ones
-a few links were fixed in the shrine links and links.ini files
*next on to do list is the town editor and NPC creator with attached dialogues.
**************************************************************************************************************************
ver 1.0.2.3
-You can no longer enter a teleport/shrine when in a balloon
-lava is now animated
-fireplaces are animated - check out the graphics!
-damage via lava is now a reality - happens fast so run FAST over lava!
**************************************************************************************************************************
ver 1.0.2.2
-Balloons are added in game and work
-Fixed a minor bug when /e/ntering an area and getting "T'is nothing here!" after loading the area
-Fixed - when boarding a frigate right after game loads and wind initially has no effect
-Fixed - "Wind SLOWS thy travels!" message when against wind and blocked by land. Now says - ">Blocked!" correctly
-Fixed dungeon_links.ini HYTHLOTH.DNG now spelled correctly

*balloon navigation*
To board hit /b/oard while stepping over the balloon. Winds will take you in that direction which is blowing.
To change wind, cast the wind spell. To exit, /x/it balloon while over land and not over towns/mountains/water
During WHOLE PARTY death (only due to starvation/poison/desease) balloon lands at that spot and stays there.
This means it could land on water (will float). To then retrieve it, use a frigate.
Monsters will follow but none will attack. Casting of spells is allowed while in a balloon.
The file balloon.ini houses the current (last) balloon coordinate, and is updated during save game request.
Modify file coords. to retrieve a lost balloon. Balloon will be moved to it's proper spot in a future version.
**************************************************************************************************************************
ver 1.0.2.1
-The game is basically FINISHED!!!!
-The ending was added just today with slightly different touch. I like the way
it all happens when you get to the final scene. I am certain you will like the ending!
-Added a custom "ending.ini" file which houses the last questions and answers. Please note this file will be
encrypted at a later stage and a special program will be used to create it. This is so one cannot cheat and look up
the answers.
-fixed misc bugs
*Balloon code is being added (not integral to game however, but nice to have)
*Lava will be animated
*Fireplaces will be animated

then after that, I will start to create the editors for the various parts of customising modules.
There will be a detailed FAQ and examples on the website.
**************************************************************************************************************************
ver 1.0.2.0
--*Unreleased testing version*--
-Abyss requires 3 part key to enter (Candle of Love, Book of Truth, Bell of Courage) - special implementation
-/y/up, /z/down /x/it spells will not work in the abyss
(Special Virtue of Humility U4 implementation)
-/d/escend via ladder now requires a STONE color predicated by the level within the Abyss
 Stone colors used in order (level1-8)   RED, PURPLE, ORANGE, BLUE, YELLOW, GREEN, WHITE, BLACK
 black stone is used to enter the final room, where a set of questions are presented and if the answers are all correct,
 then the game ending ensues...fade to black
-Abyss' textures refined (different from normal dungeons)
-FYI - Game ending is specified by a $FF in the ABYSS.DNG file. This serves as a trigger for the game ending.
**************************************************************************************************************************
ver 1.0.1.5
--*Unreleased testing version*--
-fixed mana use (ALL character get polled, and next available character with enough mana pays for spell [only in NON combat])
**************************************************************************************************************************
ver 1.0.1.4 
-casting spell VIEW works for dungeons/world/towns now
-improved food usage code in dungeons, and the poison/disease/starving code there
-fixed minor text/border overlap in healer dialog
**************************************************************************************************************************
ver 1.0.1.1 -spells implemented in dungeons-
--*Unreleased testing version*--
-/h/eal, /a/waken, /r/esurrect, /x/it, /y/up, /z/down now work and these spells are mixable from reagents
-all surface battle spells now work in dungeon battles!
-penalty when out of food and in a dungeon
-casting /l/ight while NOT in a dungeon, creates a torch, otherwise a light will appear
-Winds trap within dungeon now works correctly. Cast a /l/ight or /i/gnite a torch (which works BTW)!
-/n/ew order /r/eady weapon /w/ear armour and /z/tats stats work in dungeons as well!
**************************************************************************************************************************
ver 1.0.0.1 -monsters implemented in dungeons-
-Added several custom .dng  files (0-3) and these are called randomly
-Monsters now spawn within dungeons and the encounters are random, but get harder as you descend
-Monsters appear to be tough, but if you obtain spells, armour, weapons, you can defeat them.
-Disease and Poison states work within dungeons
*a .con editor to create custom battle scenes should be ready soon
*casting spells in dungeons should be enabled next.
**************************************************************************************************************************
ver 0.9.2.6 
--*Unreleased testing version*--
-fixed monsters pathing in dungeons when in flee mode 
-Monsters spawn in dungeons and more varieties are found within an encounter! (yeah!)
-monsters are harder in dungeons and get tougher as you descend levels
*next on agenda is more robust monsters vs. player balance in dungeons*
**************************************************************************************************************************
ver 0.9.2.4 (hopefully a stable version) - report bugs to me pls.
-/t/ouching an orb (any) will raise stats and kill that party member
-/s/earch altar gets the (color) STONES. This is different from the game. Dungeon stones are located in different areas,
 and are identified by their hex values:
blue= $F5,green= $F6,orange=$F7,yellow=$F8,red=$F9,purple=$FA. Dungeon .dng files with Hex $B0 was replaced with these Hex values
-/g/et and now /s/earching a chest has been added (same functionality)
-Added Hex FF in .dng files as an end of game marker byte. (not implemented yet)
-Save Game was modified to include orbs (once touched, they are used up!). Old save games are therefore not compatible. Sorry
-Fixed bug which prevents re-entry into dungeon after parties demise
-Revised code for death in dungeons
-Fixed traversing dungeon levels with camera_angle not defaulting to a pointer
-Level indicator is displayed sooner when traversing dungeon levels
*Next on agenda are monster battles within dungeons etc...
**************************************************************************************************************************
ver 0.9.1.9
-3D Dungeons have working fountains /d/rink when at one
-3D Dungeons have working fields
-3D Dungeons have working pit traps and falling rocks
-3D Dungeons have working chests - /g/et or /s/earch a chest to open (watch out for traps -a thief helps!)
-A torch is now required (auto lit) at entrance to dungeon
-Death within dungeon works (alas only via traps since no monsters spawn yet)
-Many sounds added and midi music plays well
*orbs,altars and misc items are next...
*Character save game format is still unchanged. Old saves will still work in this version
*There 'may' be some bugs, so email me if something weird happens
**************************************************************************************************************************
ver 0.9.1.6
--*Unreleased testing version*--
-Slightly revamped 3D textures
-Dungeon Level displayed at moon/s display area

**************************************************************************************************************************
ver 0.9.1.0
-Incorporated 3D dungeons. To enter, just hit /e/nter, /d/escend and /k/limb ladders. Please note, even though the
dungeons are working, the special items within them are not functional (fountains,orbs,traps etc..) These will be added
daily during updates. You can check out the dungeons and see how navigation works. I believe this version save game puts
you near Despise.
-Added the ability to create custom dungeon links to any tile in the game. See dungeon_links.ini. There's some potential there.
-Fixed midi playback - added a check for playing correct theme
-Fixed some flicker during dungeon level load

The 3D dungeons use Fog, Alphablending, 128x128 textures(largest) and your 3D card should support these
In other notes,
(1) the new compiler should be here to I can start creating fancy effects
(2) I may not support the rooms within dungeons because I think they are dumb, rather, I will implement 3D monsters that
    track and attack you while dungeon crawling... stay tuned for that!
(3) A strategy to develop the game ending is underway
(4) Sailing against winds may suffer less of a penalty, as requested by folks
**************************************************************************************************************************
ver 0.8.2.5a
--*Unreleased testing version*--
-Added pirates to Abyss area.
-Upon death or /e/ntering an area, spawns defined in fixed_spawns.ini are re-initialised home
-monsters/pirates no longer move over parked ships!

**************************************************************************************************************************
ver 0.8.2.5
-Fixed startup avatar icon
-Fixed backspace during a NPC conversation session
-Added user defined spawns (based on spawns.txt) These will be hostile/stationary until avatar is within aggro distance.
*These spawns are defined in fixed_spawns.ini. Check the file out yourself. Syntax Errors will cause Game to halt!*
*Anytime the game loads/initialises, these unique mobs are respawned to their original locations.*
-Added new music during character generation.
*Hint! - To make a backup of your save game, just zip the entire SAVE directory. Restore when necessary.*

**************************************************************************************************************************
ver 0.8.2.1
--*Unreleased testing version*--
-made the character generation more robust. Check to see your stats/class with /z/stats. Reroll if they are no good.
-Lord British's conversation keyword 'help' works better. Broke in into a series of conversations.
**************************************************************************************************************************
ver 0.8.2.0
-Added /j/ourney on and /i/nitiate new character during the intro. Character generation completed. All animations done
 This means the intro in 100% done. and 3D dungeons are next!
 Starting inventory (Reagents/Mixtures/Weapons/Armour) is now done.
 Included is a saved game (use F1 to load), but avatar may die because of the # of mobs in the area!
-Fixed some misc. minor bugs
**************************************************************************************************************************
ver 0.8.1.1
-Hawkind's conversation works with all virtues
-ALL virtues are now dynamic - meaning your actions are real and seen by Hawkind!
-finished other "half" of intro with animated characters in window!
-keyword 'give' during a conversation works when transacting with a beggar
-improved (*MORE*) code (for printing more text on screen than is allowed) - cleared keyboard buffer
-fixed bug when shopping at the inn and do not want to spend a night there
-changed gate travel spell to it references user defined destinations
-skull of mondain is now found during 2 new moons
*we are working on the next animation screen - /j/ourney onward /i/nitiate new character*

**************************************************************************************************************************
ver 0.8.1.0
-added shrine vision/picture after meditating for 3 cycles (must be partial avatar in that virtue)
-fixed a bug that prevented music from reloading after loading a saved game
-added animated demon/dragon and some other animated splash screens to INTRO - HIT/HOLD ANY KEY during ANIMATION to journey on
-moongate function is now fully customisable via the moongate.ini. Where they appear and where the teleport to is new

**************************************************************************************************************************
ver 0.8.0.9
--*Unreleased testing version*--
-added full shrine functionality. You can now meditate at shrines (moon gate -spirituality- shrine also works)
-fixed a bug with Lord British's castle and moongate preventing going down 1 level
-Shrine text's are editable in shrines.ini
-added shrine positions into links.ini
-added a static intro splash screen
-added virtue array so virtues are dynamic

*we are working on Hawkind's speech and dynamic virtues*
**************************************************************************************************************************
ver 0.8.0.6
-changed /o/ to /u/ for unlocking a door with a key. There is no /o/pen door
**************************************************************************************************************************
ver 0.8.0.5
-/o/pen door (opens a locked door with a probability roll - thieves work great here!). Uses 1 key per try.
-/q/uit and save saves the CURRENT game (without chests/monsters spawn list). You can only save on mainland!
-F1 function key LOADS the SAVED game. This is just for TESTING please! (spawns and chest loots will stay)
*bug fixes*
-fixed armour merchant bug (fixed price read frame)
-corrected guild merchant (for future update)
-Upon saving, un-opened chests are NOT saved, not are monsters in world. They get respawed each time you reload
-fixed horse graphic animation (in Paws.ult - was bad hex value)
-fixed bug where one of merchant twins in Paws did not want to trade. (fixed merchant $00 id in paws.ult)
-fixed bug that gives error "Wind SLOWS thy frigate!" in town when on foot!
-fixed code for looting chests (very minor)

-I am currently working on the shrines now and Hawkind's AI. All the virtues should work next time!

**************************************************************************************************************************
ver 0.7.3.0
--*Unreleased testing version*--
-/p/eer at GEM at both town and world views added. Added minor blur effect when looking into the gem
-/q/uit and save , only a cursory save, not finished
-changed hole & camp interval to 16 cycles (1 min)

**************************************************************************************************************************
ver 0.7.2.9

-/z/stats added- obtain detailed stats for specified character
-/n/ew party order - specify 2 characters to swap slots. Avatar must remain in slot 1
-/r/eady Weapon - specify weapon from inventory list
-/w/ear Armour - specify armour from inventory list
-/p/eer at gem (soon to be added)

**************************************************************************************************************************
ver 0.7.2.6

-added /g/et chest functionality. Now chests provide a source of gold! 
-monsters now drop treasure chests - use /g/et to open
-fixed mystic armour text spacing issue on stats. screen
-added /l/ocate position with sextant (If party has one)
-added appropriate midi theme when shopping,sleeping, or in combat!
-fixed moon-phase precision. Now party can find mandrake or nightshade during NEW moons better
-fixed midi bug that defaults to wrong tune after battle

**************************************************************************************************************************
ver 0.7.2.3
--*Unreleased testing version*--
-World is populated with items and the file 'quest_items.ini' can be customised with the special item and where it's found!
-To obtain the item, use /s/earch. Only 1 copy can be carried.
-Added Mystic Armour and Weapons. You find these but CANNOT SELL these.
-Mandrake and Nightshade now can be found ONLY during 2 NEW MOONS. If you get a message - Thy Find-Immature (roots or  nightshade) that means you are harvesting at the wrong time!
-Fixed another bug with merchants that generated a file access error.
-Fixed quirky keystrokes when pressing certain keys to fast or too slow.

**************************************************************************************************************************
ver 0.7.2.0
-Inventory/Quest system is being coded now. Not supported in this version
-Lord British should be able to level up as needed when /ta/lked to
-fixed spell Jinx so it now does not target out of bounds monsters
-JOIN party works. If you ask "join" during a conversation, the NPC will join the roster with pre-determined stats/inventory
-misc. minor bug fixes
-minor code optimisation for speed i.e loop to check avatar against encounters, is totally re-written.

**************************************************************************************************************************
ver 0.7.1.6
--*Unreleased testing version*--

-fixed array accessing out of bounds when at world 0,0 and checking for monsters
-added ability to cast while on-board except for blink and gate and other attack spells
-moving against wind (if Boarded a frigate) has a 16% success rate
-added /d/escend and /k/limb functionality
-added special text to notify you when a character's deseased/poisoned (8 sec polling time)

**************************************************************************************************************************
ver 0.7.0.4
--*Unreleased testing version*--

-Merchants have ALL been added (Weapon/armour/guild/inn/ration/herbs/healer) to every town!
-/m/ixing of reagents to create spells had a very minor bug and was fixed
-Monsters (aggressive) and Non Aggressive NPC's (shop keeps etc..) follow player
-Monsters in town can initiate a battle
-/H/ole up and Camp WORKS! - with a possible ambush per rest. One can only rest once per 5 min
-Added getting drunk after drinking too many ales. Rest at INN or eat Food at the PUB to recoup, or just wait a few min.
-Staying overnight at in Inn (resting recoupes HP and Mana)
-Hawkind placeholder is there. Just he does not say anything useful yet.

*note* this version or the very next will be released once it's been tested more.

**************************************************************************************************************************
ver 0.7.0.2
--*Unreleased testing version*--

-Merchants added - Weapon (buy/sell), armoury (buy/sell) and Guild shope (buy/sell) works very well!
-Merchants for weapon,armour,guild added for every place original game had them and they work!
-Added custom definable Merchants -what they sell and for how much - within a .ini file
-The
-NOT in are Healers,Inn's,Food,herbs,pubs. These are being added daily.



**************************************************************************************************************************
ver 0.6.2.9

-Added Whirlpool code. (goes to Cove) (user can define where whilpool start and takes player via .ini)
-Added user definable frigates (user can state where defualt frigates go in definable .ini)
-Added ability to /B/oard Frigate and e/X/it Frigate
-Added ability to sail now, Going to/from Cove works (find pirate ship, get ship and find whirlpool, sink and go to Cove)
-Pirates give up ship to player upon their demise
-added .ini for inital player start (avatar_start.ini)

casting once Boarded (frigate) is NOT allowed. To cast a spell, hit e/X/it, cast, then /B/oard frigate

-fixed pirate and monster spawn positions in the .con data files
-replaced land with water in ship2ship or ship2land battles
-fixed bug which caused diseased/poisoned characters to not work properly in battle
-fixed bug which prevented proper player movement when battle initiated over a swamp tile
-rewrote movement key code to simplify behind the scene workings.
-fixed bug which prevented monster Fleeing/fighting over illegal tiles

**************************************************************************************************************************
ver 0.6.2.7

-Pirate Ships added and they work. Any ship within proximity, a battle will ensue and pirates fight to the end
-fixed bug with low food message during battle
-fixed bug that showed incorrect player dying from some affliction
-similar/related bug/s , code repaired and tested.
-added some effects once player steps over a moongate
Known issue with No ship left after pirate ship is defeated. That is intentional for now!
There are no ways to travel by sea since ships for player are not yet in. Next version!
-0.6.2.7 has easier monsters to kill due to 0.6.2.6's "testing" version generating hi hp for players
-whirlpool code being tested
-loot/treasure and quest items are being added now
**************************************************************************************************************************




**************************************************************************************************************************
ver 0.6.2.6

-over 40 monster classes added and are all random and functional. Various classes spawn based
 upon level and difficulty. i.e you won't see dragons or byrons under level 4.

-fixed a bug with combat so dead monsters don't flee!
-fixed a bug that prevents attacking a monster sitting over a dead member of it's kind.
 changed the damage from monster variables to real from integer class so damage can be more accurate.

-Mixing of reagents to create spells works. The recipes are same as U4 and ALL the spells
 should be able to be created. 10 of each reagent is added in this version to practice making
 spells. Command is /M/

-In Combat, pressing <SPACE> is a way of "PASSING" the round for that character's turn

-Casting spells has better interface which lists inventory of spells before selecting.
**************************************************************************************************************************



**************************************************************************************************************************

ver 0.6.2.3  (comprehensive list to this version)

moonphases work
moongates work and so do teleports
monsters attack and can die and give exp.
Monsters can cast spells
monsters chase and seek avatar
monsters spawn (but that will be expanded to include many classes of creatures)
Player/s can cast spells
players can also die, become poisoned/diseased
Lord British heals/raises from dead and chats
All NPC's speak and ask questions
Experience from monsters
midi/sounds
full world navigation
poison and disease from swampy areas
death,food,gold is in
mixtures are in but cannot make new spells
reagents are in but are fixed at 10 for now until merchants come into existance
coding for pirate ships is in but none spawned
monster / npc AI is done (track/follow, wait till in sight then track follow, and roaming)
mana works
line of sight (hides hidden walls/areas)
zoning to from castles/towns etc.. with correct coordinates work
all weapons and armour works and is in game (magical weapons/armour deliver more damage and protect more -
and reduce AC of monsters who otherwise are impossible to kill)
**************************************************************************************************************************

Purpose - and Credits!


This game is a "near" clone of the original game. Graphics have been updated
and use http://www.moongates.com/u4/
Joshua C. Steele updated these for the original EGA graphics.
I have used the tileset with very minor modifications

This version runs the Original U4 scenerio maps and associated files. The ONLY
files not used are the run (.exe or .com) files. I have provided the U4 files within the zip.


the plan will be release the game with the original quest/s and have the option to 
modify later. I will release custom content later.

Current Version/Download site
One can download the current version from http://www.wizardportal.com/optimaiv/


Have fun!
George
wizardportal@email.com

COMMENTS :
----------

PLEASE mail all comments you have to this program, both good and bad! We have released this
to hear what you think and if you have complaints about a certain aspect of the game
engine we would like to hear about it so we might change it to the better.

KNOWN BUGS :
----------
None as of yet.
Make sure DX8 is installed!
WIll NOT work in NT, but will in other Window OS  - win98 - XP


SYSTEM REQUIREMENTS

Minimum Requirements:
 Windows 95/98/2000/ME
 233 MHz Pentium processor or greater
 32 MB of RAM
 4x speed CD-ROM
 50 MB of hard disk space
 Direct X compatible Sound Card
 Direct X compatible 3D Accelerator required (4MB+)

Recommended Requirements:
 Windows 95/98/2000/ME
 P300 Pentium II processor or greater
 64 MB of RAM
 16x speed CD-ROM
 450 MB of hard disk space
 Direct X compatible Sound Card
 Direct X compatible 3D Accelerator required (8MB+)

* All trademarks are registered trademarks of their respective owners.

Disclaimer!
Please note this is a very complicated game to write so some bugs may still be present.
I will attempt to incorporate as many things as time will allow
(for those who program, the source already is at 8000 lines of code)
I do take requests to incorporate functionality and will fix reported bugs asap.
I therefore offer this download for your enjoyment.






























