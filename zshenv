#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Pablo Olmos de Aguilera <pablo at glatelier dot org>

#
# Browser
#

export BROWSER='firefox'

#
# Editors
#

EDITOR='vim'
VISUAL='gvim'
PAGER='less'
SUDO_EDITOR='vim' # to use sudoedit (or sudo -e)

export EDITOR VISUAL PAGER SUDO_EDITOR

#
# Language
#

if [[ -z $LANG ]]; then
  export LANG='en_US.UTF-8'
fi

#
# Paths
#

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
  $path
)

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

# Fix steam closing
export STEAM_FRAME_FORCE_CLOSE=1

