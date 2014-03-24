Apprentice
==========

Apprentice is a low-contrast Vim colorscheme based on the awesome Sorcerer by XXX.

It’s essentially a streamlined version of the original with a reduced palette entirelly taken from the default xterm palete to ensure a similar look in 256 colors-ready terminal emulators and GUI Vim.

Preparing your environment
--------------------------

Apprentice is designed first and foremost to look “good” in terminal emulators supporting 256 colors and GUI Vim (GVim/MacVim). It supports lesser terminal emulators in the sense that it doesn't break but it will definitely look “better” in more powerful environments.

**GVim/MacVim**

There's nothing to be done for GVim/MacVim as it supports millions of colors by default.

**Terminal emulators**

Terminal emulators inform Vim and other programs of their capabilities — including how much colors they can display — via the `TERM` environment variable. Most modern terminal emulators support 256 colors, but their default `TERM` is usually set to something like `xterm` which Vim interprets as “limited to 8 colors + highlights”. Making sure your terminal emulator correctly advertises itself as “256 colors ready” is usually done by setting its `TERM` to a suitable value.

Installing Apprentice
---------------------

The simplest way to install a colorscheme is to put it into `~/.vim/colors/`:

    ~/.vim/colors/apprentice.vim
