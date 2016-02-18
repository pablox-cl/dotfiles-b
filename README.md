Dotfiles
========

> Never leave home without them

> **ALERT: I had to push force this, so sorry if somebody uses this. I mostly
  ordered stuff here, so I didn't change anything. I suggest to remove everything
  and clone this repo again.**

A *n*-times try to keep my dotfiles managed. This time with the awesome [rcm][]
to manage the dotfiles and [prezto][] as the main (zsh) framework. Please take in
mind this config assumes prezto installed, so a lot of stuff it's likely not to
work as intended if you don't have it.

### Prerequisites

+ terminal
    + Zsh 4.3.10 (prezto prerequisite)

+ window management
    + bspwm
    + sxhkd
    + lemonbar with various fonts:
        + stlarch (`stlarch_font` / `stlarch-font-ibx`)
        + tewi-font (https://github.com/lucy/tewi-font)
        + terminus (`terminus-font`)

Install
-------

1. Install [rcm][]
2. Clone the dotfiles:

        git clone https://github.com/PaBLoX-CL/dotfiles.git ~/.dotfiles && cd ~/.dotfiles

3. View what would be installed

        RCRC="config/rcrc" lsrc

4. Install

        RCRC="config/rcrc" rcup

5. Consider mixing and using tags

        RCRC="config/rcrc" rcup -t gui

6. Install Prezto & its submodules

        git clone https://github.com/sorin-ionescu/prezto ~/.dotfiles/config/zsh/.zprezto && cd ~/.dotfiles/config/zsh/.zprezto && git submodule update --init --recursive

7. Update submodules

        cd ~/.dotfiles
        git submodule update --init --recursive

8. Profit! :moneybag:

What's included?
----------------

My config it's opinionated, so there are a couple of things you have to
have in mind:

+ When it's possible, configs will try to match vim style
+ Assumes [prezto][] installed
~~+ My configuration is heavily based on [Meslo (patched) Font](https://github.com/Lokaltog/powerline-fonts/tree/master/Meslo) (ttf-meslo-powerline-git in the [AUR](https://aur.archlinux.org/)~~

### External stuff (*aka* submodules)

Right now this project makes use of the following submodules:

+ [prezto][]
+ My vim configuration (not yet available)
+ [Seebi's dircolors](https://github.com/seebi/dircolors-solarized)
+ [base16 colors](https://github.com/chriskempson/base16) for the shell and xresources

Rationale
---------

I decided to build my own "dotfiles" because that's the only way to really
understand what's going on below. I chose prezto because it doesn't interfere
too much with the normal functioning of the zsh shell and has sane defaults.

I tried to make this little project with all the documentation as possible,
because I found that's one of the easiest (and most fun) ways to learn. So you
are likely going to found a lot of comments and text.

[Dotfiles are meant to be forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)
it's a great article to understand why I made some decisions about the structure
and organization.

I also made this as *delete friendly* as possible, so you can strip and take what
you found interesting.

Bugs
----

I have tried to make this to work everywhere, so if there's any issue please
don't hesitate to [tell me](https://github.com/PaBLoX-CL/dotfiles/issues/new).

Acknowledgments
---------------

My dotfiles have been made possible after a lot of years of customizing and
tweaking. I tried hard to document everything, but I'm sure there's a lot I
missed. Anyway, here are those who were my main inspiration:

Repository                                      | What did I took:
------------------------------------------------|--------------------------------
https://github.com/ryanb/dotfiles               | General stuff, some alias
https://github.com/skwp/yadr                    | Mainly vim idea
https://github.com/holman/dotfiles              | Tidiness and zsh-fu
https://github.com/rtomayko/dotfiles            | Who haven't looked here?
https://github.com/spicycode/ze-best-zsh-config | Structure and granularity
https://github.com/robbyrussell/oh-my-zsh       | A bit of everything
https://github.com/ryanb/dotfiles               | A lot of stuff (`c`, `h`)
https://github.com/pbrisbin/dotfiles            | Way more I can keep count of

Copyright
---------

The MIT License (MIT)

Copyright (©) 2013-2014 Pablo Olmos de Aguilera Corradini

Permission is hereby granted, free of charge, to any person obtaining a copy of
this software and associated documentation files (the "Software"), to deal in
the Software without restriction, including without limitation the rights to
use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of
the Software, and to permit persons to whom the Software is furnished to do so,
subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS
FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR
COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

[rcm]: http://github.com/thoughtbot/rcm
[prezto]: http://github.com/sorin-ionescu/prezto
