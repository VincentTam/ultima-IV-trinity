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
	<img src="{{ site.url }}/images/river-village.jpg">
	<figcaption>A village situated beside a river along the western coast of Britannia</figcaption>
	<img src="{{ site.url }}/images/valley-village.jpg">
	<figcaption>A village in a valley of the Serpent's Spine mountains</figcaption>
</figure>

{% highlight html linenos %}
<figure>
	<img src="/images/image-filename-1.jpg">
	<figcaption>Caption describing these two images.</figcaption>
</figure>
{% endhighlight %}
