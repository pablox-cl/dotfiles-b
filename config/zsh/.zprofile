#
# Executes commands at login pre-zshrc.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Pablo Olmos de Aguilera C. <pablo at glatelier dot org>
#

# function {
#   while read -r line; do
#     if [[ ! $line == '#'* ]]; then            # ignore lines starting with an `#`
#       if (( ${#line} > 0 )); then             # ignore empty lines
#         line=${line%%\#*}
#         line=${line%%+([[:space:]])}          # remove trailing whitespace characters
#         systemctl --user set-environment $line
#       fi
#     fi
#   done < $HOME/.systemd-profile
# }

#
# Browser
#

BROWSER='firefox'

#
# Editors
#

EDITOR='vim'
VISUAL='gvim'
PAGER='less'
SUDO_EDITOR='vim' # to use sudoedit (or sudo -e)

export BROWSER EDITOR VISUAL PAGER SUDO_EDITOR

#
# Language
#

if [[ -z "$LANG" ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

# Ensure path arrays do not contain duplicates.
typeset -gU cdpath fpath mailpath path

# Set the the list of directories that cd searches.
# cdpath=(
#   $cdpath
# )

# Set the list of directories that Zsh searches for programs.
# I manage some binaries and scripts on my ~/bin directory, so I add it first
path=(
  ${HOME}/bin
  ${HOME}/.npm-packages/bin
  ${HOME}/.cabal/bin
  # /usr/local/{bin,sbin} # is this necessary on Arch Linux?
  $path
)


# XDG stuff
XDG_CACHE_HOME="$HOME"/.cache
XDG_CONFIG_HOME="$HOME"/.config
XDG_DATA_HOME="$HOME"/.local/share

RCRC="$XDG_CONFIG_HOME"/rcrc                    # RCM config file

export XDG_CACHE_HOME XDG_CONFIG_HOME XDG_DATA_HOME RCRC

#
# Less
#

# Set the default Less options.
# Mouse-wheel scrolling has been disabled by -X (disable screen clearing).
# Remove -X and -F (exit if the content fits on one screen) to enable it.
export LESS='-g -i -M -R -S -w -z-4'

# Set the Less input preprocessor.
if (( $+commands[lesspipe.sh] )); then
  export LESSOPEN='| /usr/bin/env lesspipe.sh %s 2>&-'
fi

#
# Temporary Files
#

if [[ ! -d "$TMPDIR" ]]; then
  export TMPDIR="/tmp/$USER"
  mkdir -p -m 700 "$TMPDIR"
fi

TMPPREFIX="${TMPDIR%/}/zsh"
if [[ ! -d "$TMPPREFIX" ]]; then
  mkdir -p "$TMPPREFIX"
fi

# Load super secret stuff
[[ -s $HOME/.secrets ]] && source $HOME/.secrets

[[ $TTY == /dev/tty1 ]] \
  && (( $UID )) \
  && [[ -z $DISPLAY ]]  \
  && startx
  # && systemctl --user start wm.target
