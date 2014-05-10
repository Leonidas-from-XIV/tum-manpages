README for tum-manpages
=======================

I'll write that in FAQ format, since I am really to lazy to write proper
sections so you either grep through the file or read it completely.


How to use it?
--------------

You have to use GNU Make, to build it:

```
make
```

There you go, it creates all manpages. You can copy them whereever you want,
even install it system-wide. No, I don't have a ``make install`` target.

To read the pages write

```
man -M . <manpagename>
```

``-M .`` adds the local directory to the search path. Lo and behold, it works
on man-db (Debian, Arch, Ubuntu, what-have-you) and traditional man (Gentoo
standard).


Why isn't there an installation option?
---------------------------------------

Because you haven't written it. Why haven't you sent me a patch yet?


Who wrote all this shit?
------------------------

Use git to find out:

```
git shortlog -s | cut -c8-
```


Why are all pages in category 6?
--------------------------------

Six is for games and I like games.


Why does it need Git for building?
----------------------------------

Because I wanted it to. Git integrates nicely into the build system by
providing versioning and metainformation.


Why the heck do you use M4?
---------------------------

Because you have it installed. Oh, not if you are using Windows, BSD or Mac OS
X but I couldn't care less. Get a decent userland.

Oh, and writing manpages without a macroprocessor is even more shitty than to
use the downright retarded syntax of M4.


What is the license?
--------------------

I don't care that much, but I'm a GNU freedom-nazi, so probably something along
these lines. Not that I care whether you obey the license or not.
