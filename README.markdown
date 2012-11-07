LS_COLORS
=========

This is a collection of extension:color mappings, suitable to use as your
LS COLORS environment variable. Most of them use the extended color map,
described in the ECMA-48 document; in other words, you'll need a terminal
with capabilities of displaying 256 colors.

As of this writing, around 300 different filetypes/extensions is supported.
That's indeed a lot of extensions, but there's a lot more! Your help is greatly
appreciated.

Fork this project on github, add the extensions you are missing, and send a pull
request.

Some guidelines:

For files that usually ends up next to each other, like html, css and js,
try to pick colors that fits in nicely together. Filetypes with multiple
possible extensions, like htm and html, should have the same color.

To install and use this file, put something like this is your shell resource
file:

    eval $( dircolors -b $HOME/LS_COLORS )

A quick way to install would be the following set of commands:

```sh
wget https://raw.github.com/trapd00r/LS_COLORS/master/LS_COLORS -O $HOME/.ls_colors
echo 'eval $( dircolors -b $HOME/.ls_colors )' >> $HOME/.bashrc
source $HOME/.bashrc
```

ZSH SYNTAX HIGHLIGHTING
=======================

[zsh-syntax-highlighting-filetypes][0] highlights file on the command-line in
realtime, using these colors.

DEVELOPERS
==========

There's a [library][1] I've written that lets you use various LS COLORS on
arbitary files and directories. A simple implementation can be found [here][2].

Using this, you can do

    find $HOME -maxdepth 1  | ls_color

    mpc search artist Laleh | ls_color

... and so on.

SO WHAT DOES IT LOOK LIKE
=========================

Here's a screenshot:

![LS_COLORS](http://devel.japh.se/LS_COLORS/LS_COLORS.png)


  [0]: https://github.com/trapd00r/zsh-syntax-highlighting-filetypes
  [1]: https://github.com/trapd00r/File-LsColor
  [2]: https://github.com/trapd00r/File-LsColor/tree/master/bin
