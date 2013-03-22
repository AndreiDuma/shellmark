shellmark
=========

_a dead simple bookmarking utility for shell_

__shellmark__ is a very simple pair of scripts to help you browse your 
most used directories without the hassle of writing aliases in your
.bashrc / .zshrc.

It works like this:
```
user current/directory$ mark name
```

Then:
```
user some/other/dir$ go name
```
which changes your current dir to where you placed your mark.

--
You can also do:
```
$ mark
```

Then:
```
$ go
```
to remember a directory in an _anonymous bookmark_.

#install it

1. You drop [__go.sh__](http://github.com/AndreiDuma/shellmark/raw/master/go.sh) and
[__mark.sh__](http://github.com/AndreiDuma/shellmark/raw/master/mark.sh) in a directory
whose location you remember;
2. Add these two lines to your .bashrc, .zshrc, whatever:

```bash
alias mark="path/to/mark.sh"
alias go=". path/to/go.sh"
```

That's all.
