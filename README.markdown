LS_COLORS
=========

This is a collection of **extension:color** mappings, suitable to add as your
LS\_COLORS environment variable. Most of them use the extended colors described
in the ECMA-48 document; that means your terminal has to support 256 colors.

As of this writing - 2011-04-09 - about 291 different filetypes/extensions is
supported. That's a lot of extensions, but there's a lot more! Therefore I need
**Your** help.

Fork this project, add the extensions you are missing and send me a pull
request. Try to make files that usally ends up next to eachother colors
that fit nicely together; html, css and php, for example. Filetypes with
multiple possible extensions should have the same color; .htm and .html,
for example.

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

![LS_COLORS](http://devel.japh.se/LS_COLORS/LS_COLORS.png)

And a list of the currently supported extensions:

    1
    1p
    32x
    3p
    7z
    a
    a00
    a52
    A64
    a78
    adf
    afm
    arj
    asm
    atr
    avi
    awk
    bak
    bash
    bin
    c
    cbr
    cbz
    cdi
    cfg
    chm
    coffee
    conf
    cpp
    cs
    css
    csv
    cue
    dat
    db
    def
    diff
    directory
    dump
    enc
    eps
    err
    error
    etx
    example
    fcm
    flac
    flv
    fm2
    gb
    gba
    gbc
    gel
    gg
    ggl
    gif
    git
    gitignore
    go
    gz
    h
    hs
    htm
    html
    info
    ini
    iso
    j64
    jad
    jar
    java
    jhtm
    jpeg
    jpg
    JPG
    js
    jsm
    json
    jsp
    lisp
    log
    lua
    m3u
    m4
    map
    markdown
    md
    mf
    mfasl
    mkd
    mkv
    mov
    MOV
    mp3
    mp4
    mpg
    mtx
    nds
    nes
    nfo
    nrg
    ogv
    old
    out
    pacnew
    part
    patch
    pc
    pdf
    pfa
    pfb
    pfm
    php
    pid
    pl
    PL
    pm
    png
    png
    pod
    properties
    py
    qcow
    r00
    r01
    r02
    r03
    r04
    r05
    r06
    r07
    r08
    r09
    r10
    r100
    r101
    r102
    r103
    r104
    r105
    r106
    r107
    r108
    r109
    r11
    r110
    r111
    r112
    r113
    r114
    r115
    r116
    r12
    r13
    r14
    r15
    r16
    r17
    r18
    r19
    r20
    r21
    r22
    r25
    r26
    r27
    r28
    r29
    r30
    r31
    r32
    r33
    r34
    r35
    r36
    r37
    r38
    r39
    r40
    r41
    r42
    r43
    r44
    r45
    r46
    r47
    r48
    r49
    r50
    r51
    r52
    r53
    r54
    r55
    r56
    r57
    r58
    r59
    r60
    r61
    r62
    r63
    r64
    r65
    r66
    r67
    r68
    r69
    r70
    r71
    r72
    r73
    r74
    r75
    r76
    r77
    r78
    r79
    r80
    r81
    r82
    r83
    r84
    r85
    r86
    r87
    r88
    r89
    r90
    r91
    r92
    r93
    r94
    r95
    r96
    r97
    r98
    r99
    rar
    rb
    rdf
    rmvb
    ru
    sample
    sav
    sed
    sfv
    sh
    signature
    SKIP
    sms
    spl
    sqlite
    st
    sty
    sug
    svg
    swo
    swp
    t
    tar
    tcl
    tdy
    tex
    textile
    tfm
    tfnt
    tgz
    theme
    tmp
    torrent
    ts
    ttf
    txt
    typelib
    un~
    urlview
    vim
    wmv
    xml
    xpm
    xz
    yml
    zip
    zsh


  [0]: https://github.com/trapd00r/File-LsColor
  [1]: https://github.com/trapd00r/File-LsColor/blob/master/bin/ls_color
