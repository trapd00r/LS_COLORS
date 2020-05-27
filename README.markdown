### Table of contents
* [LS_COLORS](#ls_colors)
* [What does it look like?](#what-does-it-look-like)
* [Installation](#installation)
* [Information for Developers](#information-for-developers)
* [Legal](#legal)

# LS_COLORS
This is a collection of extension:color mappings, suitable to use as your
`LS_COLORS` environment variable. Most of them use the extended color map,
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

# What does it look like?
Here's a screenshot _(font and minor color shades, of course, depend on terminal and its configuration)_:

![Screenshot1](docs/static/LS_COLORS.png)

  [0]: https://github.com/trapd00r/zsh-syntax-highlighting-filetypes
  [1]: https://github.com/trapd00r/File-LsColor
  [2]: https://github.com/trapd00r/File-LsColor/tree/master/bin
  [3]: https://aur.archlinux.org/packages/lscolors-git

# Installation

An installation script is provided with this repository:

```console
$ mkdir /tmp/LS_COLORS && curl -L https://api.github.com/repos/trapd00r/LS_COLORS/tarball/master | tar xzf - --directory=/tmp/LS_COLORS --strip=1
$ ( cd /tmp/LS_COLORS && sh install.sh )
To enable the colors, add the following line to your shell's start-up script:

For Bourne shell (e.g. ~/.bashrc or ~/.zshrc):
  . "~/.local/share/lscolors.sh"

For C shell (e.g. ~/.cshrc):
  . "~/.local/share/lscolors.csh"
$
```

## Arch Linux
Arch Linux users can install the [`lscolors-git`][3] package from the AUR for easy
integration with bash, csh, or zsh. If dash + fish is used, add to `~/.profile`:

```shell
. /usr/share/LS_COLORS/dircolors.sh
```

# Information for Developers
There's a [library][1] I've written that lets you use various LS COLORS on
arbitrary files and directories. A simple implementation can be found [here][2].

Using this, you can do
```shell
find $HOME -maxdepth 1  | ls_color

mpc search artist Laleh | ls_color
```

... and so on.

# Legal
© Copyright 2014-2020 Magnus Woldrich.

This program is distributed in the hope that it will be useful, but WITHOUT ANY
WARRANTY; without even the implied warranty of MERCHANTABILITY or FITNESS FOR A
PARTICULAR PURPOSE.  See the Perl Artistic License for more details.

This program is free software: you can redistribute it and/or modify it under
the terms of the Perl Artistic License as published by the Perl Foundation,
either version 1.0 of the License, or (at your option) any later version.

You should have received a copy of the Perl Artistic License along
with this program.  If not, see <http://www.perlfoundation.org/artistic_license_1_0>.
