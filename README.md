Dotfiles
========

> Never leave home without them

**ALERT: I had to push force this, so sorry if somebody uses this. I mostly
ordered stuff here, so I didn't change anything. I suggest to remove everything
and clone this repo again.**

A *n*-times try to keep my dotfiles managed. This time with the awesome [rcm][]
to manage the files and [prezto][] as the main (zsh) framework. Please take in
mind this config assumes prezto installed, so a lot of stuff it's likely not to
work as intended if you don't have to.

### Prerequisites

+ Zsh 4.3.10 (though I'm using 5.0.2, so I *guess* it's okay)
+ Prezto
+ ~~Correctly configured `systemd --user` (optional)~~

Install
-------

1. Install [rcm][]
2. Clone the dotfiles:

        git clone https://github.com/PaBLoX-CL/dotfiles.git ~/.dotfiles

3. View what would be installed

        RCRC="config/rcrc" lsrc

3. Install

        RCRC="config/rcrc" rcup

4. Update submodules

        git submodule update --init --recursive

5. Profit!

What's included?
----------------

My config it's a bit opinionated, so there are a couple of things you have to
have in mind:

+ When it's possible, configs will try to match vim style
+ I use GNU/Linux (Arch Linux to be more precise), so I'm likely going to strip
  references to OSX.
+ While some submodules could look that they are lagging behind the original
  repo, I'm only going to update them while there's something really interesting
  to add, in the meanwhile of course, I keep them updated on my local machine.
  That's because I don't like those superfluous "merge commits" (if you know how
  to avoid that, please tell me).

### External stuff (*aka* submodules)

Right now this project makes use of some submodules:

+ My [own fork](https://github.com/PaBLoX-CL/prezto) of Prezto (which right now is
  almost exactly as Prezto)
+ ~~My [systemd-user-units](https//github.com/PaBLoX-CL/systemd-user-units). This
  likely can be ignored because it only makes sense if you are crazy enough to
  try to jump to use something **so** experimental~~
+ My vim configuration (not yet available)
+ [Seebi's dircolors](https://github.com/seebi/dircolors-solarized)
+ [base16 colors](https://github.com/chriskempson/base16) for the shell and xresources
+ My configuration is heavily based on [Meslo (patched) Font](https://github.com/Lokaltog/powerline-fonts/tree/master/Meslo)

Rationale
---------

I decided to build my own "dotfiles" because that's the only way to really
understand what's going on below, I chose prezto because it doesn't interfere
too much with the normal functioning of the zsh shell and has sane defaults.

I tried to make this little project with all the  documentation as possible,
because I found that's one of the easiest (and most fun) ways to learn. So you
are likely going to found a lot of comments and text.

[Dotfiles are meant to be forked](http://zachholman.com/2010/08/dotfiles-are-meant-to-be-forked/)
it's a great article to understand why I made some decisions about the structure
and organization.

I also tried to make this as delete friendly as possible, so you can strip and
take what you found interesting.

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
