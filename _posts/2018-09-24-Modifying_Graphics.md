---
layout: post
title: Modifying Graphics
description: I went down a rabbit hole when I tried to add in custom sprites for the new 'hamlets' and 'crypts'
category: articles
comments: true
tags: [Ultima IV, graphics, shapes.ega, mod]
date: 2018-09-24
image: 
        feature: text_3.jpg
---

Working away at the towns, I remembered I had wanted to have a custoom, two hut sprite to represent 'hamelets', to differntiate them from the three hut 'village' sprite. I needed a break from making NPCs, so I thought I would quickly mod in a new sprite and be done with it. Foolishly I imagined that the making of the sprite would be the hard part. Boy was I wrong.
It turns out sprites can't really be added, without first removing another sprite. There is a 255 sprite limit, short of doing some extensive coding to allow for more sprites, coding space which I just don't have. So it seemed that my hope of having custom sprites for hamlets, crypts and oracles, and a handful of other things, was not to be.
However, I have found a way to do it, with minimal coding. What I have done is strip out the fourth 'animation' of each NPC sprite, leaving them with 3, and giving me more than two dozen freed-up slots for new sprites. It was a bit of a dodgy task, with a little bit too much room for bugs to have crept in. There is also the matter of the NPCs having slightly less animation. Which is a set-back from the original game. But I can now add in more than 2 dozen new sprites.
Should I do it...
I am torn. The new sprites are cool, and together start to give the game a bit of an Ultima IV part 2 vibe. Somewhere between IV and V. It's particularly evident on the new roofs of the towns and castles.

I'll add screenshots here if I go any further with this.

<figure>
	<img class="ScrollRev" data-tilt src="/ultima-IV-trinity/images/castle_roof_1.png" />
	<figcaption>Wait...these crenellations look familiar...</figcaption>
</figure>

<figure>
	<img class="ScrollRev" data-tilt src="/ultima-IV-trinity/images/castle_roof_2.png" />
	<figcaption>So do these windows...</figcaption>
</figure>



