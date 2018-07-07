---
layout: post
title: "Post with Figure"
description: "Examples and code for displaying images in posts."
category: articles
tags: [sample post, images, test]
---

This is a post that uses a `figure`. It stacks these images and places a nice little caption below if you fill out `figcaption`.

### Single Image Figure

<figure>
	<img src="/ultima-IV-trinity/images/river_village.jpg">
	<figcaption>A village situated beside a river along the western coast of Britannia</figcaption>
	<img src="/ultima-IV-trinity/images/valley_village.jpg">
	<figcaption>A village in a valley of the Serpent's Spine mountains</figcaption>
</figure>

{% highlight c linenos=table %}

	Party._x = Party.out_x;
	Party._y = Party.out_y;
	C_26B6();
	CurMode = MOD_OUTDOORS;
	Party._loc = 0;
    HorseTown = 0;
	Party.f_1dc = 0;
	D_9440 = 1;

	if(Party._x == 0xef && Party._y == 0xf0) {
		D_8742._npc._tile[31] = D_8742._npc._gtile[31] = TIL_18;
		D_8742._npc._x[31] = 0xe9;
		D_8742._npc._y[31] = 0xf2;
	}
	u_kbflush();

{% endhighlight %}
