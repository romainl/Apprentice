# ![Apprentice](http://romainl.github.io/Apprentice/images/logo.png)

Apprentice is a dark, low-contrast colorscheme for Vim based on the awesome [Sorcerer](http://www.vim.org/scripts/script.php?script_id=3299) by Jeet Sukumaran.

It is essentially a streamlined version of the original, with a reduced number of colors entirely taken from the default xterm palette to ensure a similar look in 256colors-ready terminal emulators and GUI Vim.

Some code in MacVim:

![image](http://romainl.github.io/Apprentice/images/0macvim.png)

Some code in iTerm, with `TERM=xterm-256color`:

![image](http://romainl.github.io/Apprentice/images/0256term.png)

Some code in mintty, with `TERM=xterm-256color`:

![image](http://romainl.github.io/Apprentice/images/0256mintty.png)

Some code in iTerm, with `TERM=xterm`, using the Tango color palette:

![image](http://romainl.github.io/Apprentice/images/08termtango.png)

## Preparing your environment.

Apprentice is designed first and foremost to look “good” in terminal emulators supporting 256 colors and in GUI Vim (GVim/MacVim). It supports lesser terminal emulators in the sense that it doesn’t break but it will definitely look “better” in more capable environments.

### GVim/MacVim

There is nothing to do for GVim/MacVim as GUI Vim supports millions of colors by default.

### 256color-ready Terminal emulators

Most terminal emulators in use nowadays *can* display 256 colors but most of them use a default `TERM` that tells Vim otherwise. Assuming your terminal emulator actually supports 256 colors, you must instruct it to brag about its terminal-hood by setting the correct `TERM` environment variable.

The “ideal” `TERM` usually includes the string `256color`, like `xterm-256color`. The actual value is highly dependent on your terminal emulator and/or your terminal multiplexer, though, so you will have to refer to their manual.

### Working with 8/16 colors

As an alternative to changing your default `TERM` to `xterm-256color` or similar, you can keep its default value (usually something like `xterm` or `screen`) and set your terminal emulator to use [the Apprentice colorscheme](https://github.com/romainl/iterm2-colorschemes#readme) instead of its default colors.

The table below contains a subset of Apprentice’s palette. You can use a color picker or copy/paste these values:

| Intensity        | Normal                                                                      | Intensity        | Bright                                                                      |
|------------------|-----------------------------------------------------------------------------|------------------|-----------------------------------------------------------------------------|
| 0                | `#1C1C1C` ![#1C1C1C](http://romainl.github.io/Apprentice/images/1c1c1c.png) | 8                | `#444444` ![#444444](http://romainl.github.io/Apprentice/images/444444.png) |
| 1                | `#AF5F5F` ![#AF5F5F](http://romainl.github.io/Apprentice/images/af5f5f.png) | 9                | `#FF8700` ![#FF8700](http://romainl.github.io/Apprentice/images/ff8700.png) |
| 2                | `#5F875F` ![#5F875F](http://romainl.github.io/Apprentice/images/5f875f.png) | 10               | `#87AF87` ![#87AF87](http://romainl.github.io/Apprentice/images/87af87.png) |
| 3                | `#87875F` ![#87875F](http://romainl.github.io/Apprentice/images/87875f.png) | 11               | `#FFFFAF` ![#FFFFAF](http://romainl.github.io/Apprentice/images/ffffaf.png) |
| 4                | `#5F87AF` ![#5F87AF](http://romainl.github.io/Apprentice/images/5f87af.png) | 12               | `#8FAFD7` ![#8FAFD7](http://romainl.github.io/Apprentice/images/8fafd7.png) |
| 5                | `#5F5F87` ![#5F5F87](http://romainl.github.io/Apprentice/images/5f5f87.png) | 13               | `#8787AF` ![#8787AF](http://romainl.github.io/Apprentice/images/8787af.png) |
| 6                | `#5F8787` ![#5F8787](http://romainl.github.io/Apprentice/images/5f8787.png) | 14               | `#5FAFAF` ![#5FAFAF](http://romainl.github.io/Apprentice/images/5fafaf.png) |
| 7                | `#6C6C6C` ![#6C6C6C](http://romainl.github.io/Apprentice/images/6c6c6c.png) | 15               | `#FFFFFF` ![#FFFFFF](http://romainl.github.io/Apprentice/images/ffffff.png) |
| Foreground color | `#BCBCBC` ![#BCBCBC](http://romainl.github.io/Apprentice/images/bcbcbc.png) | Background color | `#262626` ![#262626](http://romainl.github.io/Apprentice/images/262626.png) |

Here is a sample `~/.Xresources` for you Linux/BSD users:

    *.foreground: #BCBCBC
    *.background: #262626
    *.color0:     #1C1C1C
    *.color8:     #444444
    *.color1:     #AF5F5F
    *.color9:     #FF8700
    *.color2:     #5F875F
    *.color10:    #87AF87
    *.color3:     #87875F
    *.color11:    #FFFFAF
    *.color4:     #5F87AF
    *.color12:    #8FAFD7
    *.color5:     #5F5F87
    *.color13:    #8787AF
    *.color6:     #5F8787
    *.color14:    #5FAFAF
    *.color7:     #6C6C6C
    *.color15:    #FFFFFF

And a sample `~/.minttyrc` for you Cygwin users:

    ForegroundColour=188,188,188
    BackgroundColour=38,38,38
    Black=28,28,28
    Red=175,95,95
    Green=95,135,95
    Yellow=135,135,95
    Blue=95,135,175
    Magenta=95,95,135
    Cyan=95,135,135
    White=108,108,108
    BoldBlack=68,68,68
    BoldRed=255,135,0
    BoldGreen=135,175,135
    BoldYellow=255,255,175
    BoldBlue=143,175,215
    BoldMagenta=135,135,175
    BoldCyan=95,175,175
    BoldWhite=255,255,255

Some code in iTerm, with `TERM=xterm`, using the color palette above:

![image](http://romainl.github.io/Apprentice/images/08termapprentice.png)

Some code in the Windows console, with `TERM=cygwin`, using the color palette above:

![image](http://romainl.github.io/Apprentice/images/016console.png)

### All terminal emulators

I recommend to adjust your terminal's background color to the one used in Apprentice if you want to avoid having a “frame” around Vim:

* xterm notation: `235`
* hexadecimal notation: `#262626`
* rgb notation: `rgb(38,38,38)`

## Installing Apprentice.

Colorschemes must be placed in a directory named `colors` that is somewhere in Vim’s `runtimepath`:

The canonical location is:

    ~/.vim/colors/apprentice.vim

but it could be:

    ~/.vim/bundle/apprentice/colors/apprentice.vim

or whatever works for you.

## Enabling Apprentice.

To test Apprentice, just type this command from *normal* mode and hit `Enter`:

    :colorscheme apprentice

If you like what you see and want to make Apprentice your default colorscheme, add this line to your `~/.vimrc`, preferably near the end:

    colorscheme apprentice

## What they say about Apprentice.

* Vimgor, in #vim: *“A colorscheme as subtle, gentle and pleasant as its creator isn't.”*

* Gfixler, in [r/vim](http://www.reddit.com/r/vim/comments/2fws13/syntax_on/cke2ued): *“I've been enjoying Apprentice. It's the only color scheme so far that I haven't felt like modifying in any way.”*

* dddbbb, in [r/vim](http://www.reddit.com/r/vim/comments/2fws13/syntax_on/ckekyg1): *“Haha, you've been quoted in the readme. romainl is still with us in spirit! Apprentice looks nice, and it's great that seems simple to get it working in terminal (no t_co hacks).”*

* Gfixler again, in [r/vim](http://www.reddit.com/r/vim/comments/30dph9/solarizedlike_colorschemes/cprnfxm): *“My favorite color scheme by far is Apprentice, but again, it's completely subjective. Pick something that makes you feel good while using it. I particularly love Apprentice's selection blue color. I select things all the time just to experience it. So pretty.”*

;-)

## Derivative works

If light colorschemes are more your thing, [Disciple](https://github.com/romainl/Disciple) is an experimental and mostly unmaintained negative version of Apprentice.

On the same note, [Lightning](https://github.com/wimstefan/Lightning) is a light fork of Apprentice worth considering.

[Intern](https://github.com/drzel/intern-hexchat-theme) is an [HexChat](https://hexchat.github.io/) theme based on Apprentice.

Go team!
