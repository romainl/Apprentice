# ![Apprentice](http://romainl.github.io/Apprentice/images/logo.png)

Apprentice is a low-contrast colorscheme for Vim based on the awesome [Sorcerer](http://www.vim.org/scripts/script.php?script_id=3299) by Jeet Sukumaran.

It’s essentially a streamlined version of the original with a reduced number of colors entirely taken from the default xterm palette to ensure a similar look in 256 colors-ready terminal emulators and GUI Vim.

Some JavaScript, in MacVim:

![image](http://romainl.github.io/Apprentice/images/0MacVim.png)

The same JavaScript, in iTerm, with `TERM=xterm-256color`:

![image](http://romainl.github.io/Apprentice/images/0256term.png)

The same JavaScript, in iTerm, with `TERM=xterm`, using the default xterm color palette:

![image](http://romainl.github.io/Apprentice/images/016termxterm.png)

## Preparing your environment.

Apprentice is designed first and foremost to look “good” in terminal emulators supporting 256 colors and in GUI Vim (GVim/MacVim). It supports lesser terminal emulators in the sense that it doesn’t break but it will definitely look “better” in more powerful environments.

### GVim/MacVim

There’s nothing to do for GVim/MacVim as GUI Vim supports millions of colors by default.

### Terminal emulators

Most terminal emulators in use nowadays *can* display 256 colors but most of them use a default `TERM` that tells Vim otherwise. Assuming your terminal emulator actually supports 256 colors, you must instruct it to brag about its terminal-hood by setting the correct `TERM` environment variable.

Here are a bunch of common terminal emulators and their “ideal” `TERM`:

| Environment | Terminal emulator | Default `TERM` | ”Ideal” `TERM`          |
|-------------|-------------------|----------------|-------------------------|
| Mac OS X    | iTerm2.app        | `xterm`        | `xterm-256color`        |
| Mac OS X    | Terminal.app      | `xterm`        | `xterm-256color`        |
| X11         | xterm             | `xterm`        | `xterm-256color`        |
| X11         | URxvt             | `rxvt-unicode` | `rxvt-unicode-256color` |
| X11/Gnome   | Gnome terminal    | `xterm`        | `xterm-256color`        |
| X11/Gnome   | Terminator        | `xterm`        | `xterm-256color`        |
| X11/KDE     | Konsole           | `xterm`        | `xterm-256color`        |

Please refer to your terminal emulator’s manual for how to set it up properly.

NB: I’ve started [a wiki page](https://github.com/romainl/Apprentice/wiki/256-colors-and-you.) listing the procedures for the terminal emlators above.

For best results, it’s recommended to adjust your background color to the one used in the GUI/256color version of Apprentice:

* xterm color: `235`
* hexadecimal color: `#262626`

### Terminal multiplexers

Screen and tmux don't respect your terminal emulator’s settings and set your `TERM` to their default value, `screen`. For better color support, the recommended `TERM` for both multiplexers is `screen-256color`.

#### tmux

Put this line in `~/.tmux.conf`:

    set -g default-terminal "screen-256color"

#### screen

Put this line in `~/.screenrc`:

    term "screen-256color"

## Installing Apprentice.

A colorscheme must be placed in a directory named `colors` that’s somewhere in Vim’s `runtimepath`:

The canonical location is:

    ~/.vim/colors/apprentice.vim

but it could be:

    ~/.vim/bundle/apprentice/colors/apprentice.vim

or whatever works for you.

### Working with a 8 colors terminal

As an alternative to `xterm-256color`, you can also leave your `TERM` at its default value, (usually `xterm` or `screen`, as we saw earlier) and set your terminal emulator to use the Apprentice colorscheme instead of its default colors.

The same JavaScript as above, in iTerm, with `TERM=xterm`, using the color palette below:

![image](http://romainl.github.io/Apprentice/images/016termapprentice.png)

Use a color picker or copy/paste these values:

| Intensity | Name    | Normal  | Bright  |
|-----------|---------|---------|---------|
| 0         | Black   | #1C1C1C | #444444 |
| 1         | Red     | #AF5F5F | #FF8700 |
| 2         |Green    | #5F875F | #87AF87 |
| 3         | Yellow  | #87875F | #FFFFAF |
| 4         | Blue    | #5F87AF | #8FAFD7 |
| 5         | Magenta | #5F5F87 | #8787AF |
| 6         | Cyan    | #5F8787 | #5FAFAF |
| 7         |  White  | #6C6C6C | #FFFFFF |
| Foreground color   || #BCBCBC          ||
| Background color   || #262626          ||

## Enabling Apprentice.

To test Apprentice, just type this command from *normal* mode and hit `Enter`:

    :colorscheme apprentice

If you like what you see and want to make Apprentice your default colorscheme, add this line to your `~/.vimrc`, preferably near the end:

    colorscheme apprentice

---

If light colorschemes are more your thing, [Disciple](https://github.com/romainl/Disciple) is the negative version of Apprentice.
