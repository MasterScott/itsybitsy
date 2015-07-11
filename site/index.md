
<p style="text-align:center"><img src="./images/itsybitsy.logo.png"/></p>

**itsy bitsy** is a teenie tiny static site generator. 

Motivation
===========

itsy bitsy was created one evening, when, I had failed to install a haskell-based
static site generator onto my tiny notebook. There was simply not enough ram to complete the installation through cabal.

All I really needed was a way to convert some markdown files to html and apply
simple html templates. It turns out you can do all of that in a couple lines of
bash (and a perl script to convert the markdown...)

Using
=====

Simply [fork](https://github.com/s-rah/itsybitsy) and run...

	./gen.sh

In the main directory. This should produce a _site/ directory containing your statically generated site.

Features
========

* Markdown to HTML conversion
* Some variable replacement.

That's it, as I said it is minimal. It is really all I need/want from a static site generator and I hope you find it useful.

