shellmark
=========

**Yet another bookmarking utility for shell**

__shellmark__ is a very simple pair of scripts to help you browse your
most used directories without the hassle of writing aliases in your
.bashrc / .zshrc

It works like this:
    user current/directory$ mark *name*

Then:
    user some/other/dir$ go *name*

Which changes your current dir to where you placed your mark.

You can also do:
    $ mark

Then:
    $ go
to remember a directory in an anonymous bookmark.
