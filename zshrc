#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#   Pablo Olmos de Aguilera <pablo at glatelier dot org>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Local directory
ZSH=${ZDOTDIR:-$HOME}/.zsh.d

# Working dir for developing
PZT_PROJECT_DIR=${HOME}/dev

#
# Functions
#

# Add a function path
# NOTE: fpath doesn't recurse directories so they have to be add explicitily
functions_path=( functions completions )
functions_path=($ZSH/${^functions_path})        # prepend local dir

# Add directories for (local) completion scripts and functions so they can be
# autoloaded later.
# NOTE: this has to be loaded *before* compinit
# FIXME: rvm completion is added while prezto updates to a newer commit
# + https://github.com/zsh-users/zsh-completions/pull/168 (now merged into
#   upstream zsh-completionS)
fpath=(
  $functions_path
  ~/.rvm/scripts/extras/completion.zsh
  $fpath
)

# Autoload functions
autoload -Uz $ZSH/functions/^*.*sh(:t)

#
# Main configuration
#

typeset -U config_files config_dirs

# Filenames starting with `999.` are supposed to be loaded in a conditional way,
# like with smartcd, .rvmrc, ecc. Basically whatever that needs a narrow scope.
# Rule:
#   Sources everything that is a shell script (.sh, .zsh, .bash....) inside
#   the directories (one level at most), except the files that start with 999
#   FIXME: remove the 999 prefix and find a more elegant way to do it.

# Specifically add the directories involved, and then add a "last" directory,
# much like the `.vim/after` dir.
# NOTE: order matters
# config_files=($ZSH/{settings,aliases,zle,after}/!(999*).*sh(N))

# Last alternative is to use an array to hold the dirs, the issue here is that you
# are obligued to use a nested `for` loop, to traverse theme
config_dirs=( settings aliases zle after )
config_dirs=( $ZSH/${^config_dirs} )        # prepend the full directory

# for dir in $config_dirs; do
#   for file in $dir/!(999*).*sh(N); do
#     source $file
#   done
# done

# load config files
function source_files_from {
  local dir=$1
  for file in $dir/[!999]*.*sh(N); do
    source $file
  done
}

for dir in $config_dirs; do
  source_files_from $dir
done

#
# Third party
#

# Requirement to make the pwd segment from tmux-powerline work
# TODO: check if this is still needed...
if [[ -s "${HOME}/.tmux-powerlinerc" ]]; then
  PS1="$PS1"'$([ -n "$TMUX" ] && tmux setenv TMUXPWD_$(tmux display -p "#D" | tr -d %) "$PWD")'
fi

unset functions_path config_{files,dirs}

