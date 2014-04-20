
<p style="text-align:center"><img src="./images/itsybitsy.logo.png"/></p>

Motivation
===========

itsy bitsy was created one evening, when, I had failed to install a haskell-based
static site generator onto my tiny notebook. There was simply not enough ram to complete the installation through cabal.

I went back to my virtual machine, sitting on a much more powerful computing, and attempted to reinstall the generator there. Unfortuantly I was greeted with dependency error after dependency error.

Itsy Bitsy is designed to be minimal, it as one major dependency (Markdown.pl) which it is distributed with.

Using
=====

Simply fork or download this project, and run 

	./gen.sh

In the main directory. This should produce a _site/ directory containing your statically generated site.

Features
========

* Markdown to HTML conversion
* Some variable replacement.

That's it, as I said it is minimal. It is really all I need/want from a static site generator and I hope you find it useful.

