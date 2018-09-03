---
layout: post
title: Dragons Back on the Menu
description: Freed up a bunch of coding space, and managed to get Dragons fully integrated and working.
tags: [Ultima IV, dragons, bug, bug fix, ride-able, mod, Trinity]
date: 2018-09-03
image: 
        feature: text_3.jpg
---

I could never quit let go of the idea of having a new kind of mount for Advent of the Trinity. And dragons always seemed like the best bet for that.
So, the other day I realised I could free up some coding space by removing all code related to switching disks. Anyone who ever plays this mod will be using an emulator, and the chance of them installing this onto floppy disks and trying to play it on an old system are quite low.
So, I stripped out the code and got about 1000bytes. More than enough to bring dragons back in. It wasn't quite as easy as I had anticipated, mostly because the dozens of special cases I had to deal with for how the dragons interact with the map etc., not to even count the actual code of getting them flying, mountable, etc.
I've added a little gif below showing the dragon in action. I tried my best to make all interface interactions mirror or follow the standards from the vanilla game.

<figure>
	<img class="ScrollRev spoiler" data-tilt src="/ultima-IV-trinity/images/dragon.gif" />
	<figcaption>Houston, we have dragons, I repeat, we have dragons.</figcaption>
</figure>

But I did it. I also managed to fix up an old bug with the game, which would allow players to exit a ship, then quickly board it again, and have the hitpoints back up to maximum. This is fixed along with the Dragon code, so dragons and ships scattered about the map all have unique and stored/saved hitpoints, which are restored on remounting. I managed this without adding anything to any of the save games, so everything is still compatible between Trinity and vanilla Ultima IV.

<figure>
	<img class="ScrollRev" data-tilt src="/ultima-IV-trinity/images/frigate_1.png" />
	<figcaption>My first fancy frigate...Not in the best of condition.</figcaption>
</figure>

<figure>
	<img class="ScrollRev" data-tilt src="/ultima-IV-trinity/images/dragon_1.png" />
	<figcaption>Mount up my dragon...oooh...he's full strength!</figcaption>
</figure>

<figure>
	<img class="ScrollRev" data-tilt src="/ultima-IV-trinity/images/frigate_2.png" />
	<figcaption>Board my other firgate...man, these ships are beat!</figcaption>
</figure>

There you have it!





