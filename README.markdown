LS_COLORS
=========

This is a collection of extension:color mappings, suitable to use as your
LS COLORS environment variable. Most of them use the extended color map,
described in the ECMA-48 document; in other words, you'll need a terminal
with capabilities of displaying 256 colors.

As of this writing, around 300 different filetypes/extensions is supported.
That's indeed a lot of extensions, but there's a lot more! Therefore I need
your help.

Fork this project on github, add the extensions you are missing, and send me
a pull request.

For files that usually ends up next to each other, like html, css and js,
try to pick colors that fits in nicely together. Filetypes with multiple
possible extensions, like htm and html, should have the same color.

To install and use this file, put something like this is your shell resource
file:

    eval $( dircolors -b $HOME/LS_COLORS )

DEVELOPERS
==========

There's a [library][0] I've written that lets you use various LS COLORS on
arbitary files and directories. A simple implementation can be found [here][1].

Using this, you can do

    find $HOME -maxdepth 1  | ls_color

    mpc search artist Laleh | ls_color

... and so on.

SO WHAT DOES IT LOOK LIKE
=========================

Here's a screenshot of the current selection:

![LS_COLORS](http://devel.japh.se/LS_COLORS/LS_COLORS_2.png)


  [0]: https://github.com/trapd00r/File-LsColor
  [1]: https://github.com/trapd00r/File-LsColor/tree/master/bin
