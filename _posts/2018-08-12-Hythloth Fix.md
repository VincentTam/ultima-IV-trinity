---
layout: post
title: Hythloth Fix
description: Got good at dungeons, thought I'd fix Hythloth
comments: true
tags: [Ultima IV, dungeons, Hythloth, bug, fix]
date: 2018-08-12
image: 
        feature: book_4.jpg
---

After building 3 dungeons, with dozens, and dozens of rooms, traps, layouts, monsters etc., I find myself a little bit skilled in this area. It's not that hard, but working almost strictly in a hexeditor, makes it a bit of a task. Nevertheless, I have persevered, and the crypts are done. 

While my skill in this area is still high, I thought I would take a look at the 'Hythloth' bug. The Hythloth bug refers to level 6 of Hythloth, where there is an impassable room, a room which should lead into an adjacent room, to allow one to continue through to level 7. Additionally, another room in the same 3 room chain of rooms is missing door data for the party, and so is really, also, impassable, as all the characters start in the room 'phased' into a wall in the north-west corner.
I know there is a fix for this issue somewhere out there, but I couldn't track it down. The fix, I believe, added a secret door to the first, eastern room, which allowed passage into the middle room. It also fixed the door data for the western room, so the player and his party could pass through that room properly as well.

Since I couldn't find the fix, I decided to quickly whip one up myself. However, when doing this I noticed something a little weird. The eastern room did not at all mesh/match with the middle and western room. It was also not at all suitable for inclusion of a secret door. The central room has a big huge entrance into the eastern room, but the eastern room has only room for a one or two space wide door, with a lot of weird finicking with triggers.

I went into the Apple II version and found that it suffered from the exact same flaws/bugs.

<figure>
	<img class="ScrollRev" data-tilt src="/ultima-IV-trinity/images/apple_hythloth.jpg" />
	<figcaption>Same room as the Dos version. No way out to the west, and no clean way to make a secret door open and logically mesh with the central room.</figcaption>
</figure>

After consideration, I decided that a secret door in the eastern room was not likely part of the original plan/design. I concluded that a room which mirrored the eastern rooms design would work well, considering the 'mirror image' layout of the central room.
So I made a new eastern room, tweaked the creatures inside, and added correct door data for all the rooms.

Just drop this file directly into your Ultima IV folder, and overwrite the existing Hythloth.dng (backup first...)

<a href="https://www.moddb.com/games/ultima-iv-quest-of-the-avatar/downloads/hythloth-fix" title="Download Hythloth Fix - Mod DB" target="_blank"><img style="width: 260px" src="https://button.moddb.com/download/medium/140849.png" alt="Hythloth Fix" /></a>

Get it directly from the repository:

<a href="https://github.com/cambragol/ultima-IV-trinity/blob/master/assets/HYTHLOTH.DNG?raw=true">Hythloth Fix</a>

I think these images are kindof spoilers, as they reveal the rooms in complete detail. If you like/want to experience the rooms spoiler free, don't click on the images below.

<figure>
	<img data-pixelate data-value="1.0" data-revealonclick="true" data-tilt src="/ultima-IV-trinity/images/hythloth_eastern.jpg" />
	<figcaption>The New Hythloth Eastern Room</figcaption>
</figure>

<figure>
	<img data-pixelate data-value="1"  data-reveal="true" data-tilt src="/ultima-IV-trinity/images/hythloth_central.jpg" />
	<figcaption>Hythloth Central Room</figcaption>
</figure>

<figure>
	<img data-pixelate data-value="0.5" data-reveal="false" data-tilt src="/ultima-IV-trinity/images/hythloth_western.jpg" />
	<figcaption>Hythloth Western Room</figcaption>
</figure>




