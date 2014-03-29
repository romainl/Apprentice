# Apprentice

Apprentice is a low-contrast Vim colorscheme based on the awesome [Sorcerer](http://www.vim.org/scripts/script.php?script_id=3299) by Jeet Sukumaran.

It’s essentially a streamlined version of the original with a reduced number of colors entirely taken from the default xterm palette to ensure a similar look in 256 colors-ready terminal emulators and GUI Vim.

Python:

![Python](https://raw.githubusercontent.com/romainl/Apprentice/master/screenshots/apprentice_py.png)

JavaScript:

![JavaScript](https://raw.githubusercontent.com/romainl/Apprentice/master/screenshots/apprentice_js.png)

Vim:

![Vim](https://raw.githubusercontent.com/romainl/Apprentice/master/screenshots/apprentice_vim.png)

## Preparing your environment.

Apprentice is designed first and foremost to look “good” in terminal emulators supporting 256 colors and GUI Vim (GVim/MacVim). It supports lesser terminal emulators in the sense that it doesn’t break but it will definitely look “better” in more powerful environments.

### GVim/MacVim

There’s nothing to do for GVim/MacVim as GUI Vim supports millions of colors by default.

### Terminal emulators

Most terminal emulators in use nowadays *can* display 256 colors but most of them use a default `TERM` that tells Vim otherwise. Assuming your terminal emulator actually supports 256 colors, you must instruct it to brag about its terminalhood by setting the correct `TERM` environment variable.

Here are a bunch of common terminal emulators and their “ideal” `TERM`:

| Terminal emulator | ”Ideal” `TERM`          |
|-------------------|-------------------------|
| xterm             | `xterm-256color`        |
| Gnome terminal    | `xterm-256color`        |
| URxvt             | `rxvt-unicode-256color` |
| iTerm2            | `xterm-256color`        |

Please refer to your terminal emulator’s manual for how to do it.

### Terminal multiplexers

Screen and tmux don't respect your terminal emulator’s settings and set their own `TERM`. The recommended `TERM` for both multiplexers is `screen-256color`.

#### tmux

Put this line in `~/.tmux.conf`:

    set -g default-terminal "screen-256color"

#### screen

Put this line in `~/.screenrc`:

    term "screen-256color"

## Installing Apprentice.

A colorscheme must be placed in a directory named `colors` that’s somewhere in Vim’s `runtimepath`:

    ~/.vim/colors/apprentice.vim
    ~/.vim/bundle/apprentice/colors/apprentice.vim
    …

How it ends up there is for you to decide.

## Enabling Apprentice.

To test Apprentice, just type this command from *normal* mode and hit `Enter`:

    :colorscheme apprentice

If you like what you see and want to make Apprentice your default colorscheme, add this line to your `~/.vimrc`:

    colorscheme apprentice

---

If light colorschemes are more your thing, [Disciple](https://github.com/romainl/Disciple) is the negative version of Apprentice.
