---
layout: post
title: "First Post"
description: "Trying out Jekyll, and saying hello world"
category: articles
comments: true
tags: [first post, highlighting, code]
image: book_3.jpg
---

Here is a first little test article. Just trying out this theme's features. Tweaking them a bit to fit my liking. I'm not sure about 'blogging' for this 'mod', but it might be fun just to air out the trials and travails I go through. Likely no one will ever take note, but it could still be fun. I got to learn how to use Jekyll a bit too, which has been neat. Github too.

Here is a bit of code, with some 'highlighting' courtesy of ...er...jekyll's built in highlighter...

{% highlight c %}
AskLetter(bp08, bp06, bp04)
char *bp08;
char bp06;
char bp04;
{
	register int si;

	si = -1;
	do {
		if(si != -1)
			sound(1);
		u4_puts(bp08);
		si = u_kbread();
		if(si == KBD_ENTER || si == KBD_ESC || si == KBD_SPACE) {
			if(si == KBD_ENTER || si == KBD_SPACE)
				si = -1;
			else
				si = -2;
            if(bp08 != 0)
			Gra_CR();
            
			break;
		}
		si &= 0xff;
		u4_toupper2(si);
        /*pulled this conditional from Askletter2...not original behaviour, but better?*/
		if((si > ' ' && si < 0x7f) && (bp06 <= si && si <= bp04))
			u4_putc(si);
            if(bp08 != 0)
            Gra_CR();
        
        if(bp06 <= si && si <= bp04)
			break;
	} while(si >= 0);

	return si;
}

{% endhighlight %}


It is a piece of code, the first one actually, where I changed the default behavior of the game. To make a certain artifact work right, I needed to tweak this code. The in game behavior, for displaying pressed key's is now slightly different. Very slightly. I am not exactly pleased that I had to do it, and I may restore the original functionality, but I have done it this way to save on memory.
