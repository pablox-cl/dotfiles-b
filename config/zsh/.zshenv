#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

#
# Functions
#

# Needed while we do the function magic
setopt EXTENDED_GLOB

# Add a function path
# NOTE: fpath doesn't recurse directories so they have to be add explicitily
functions_path=( themes functions completions )
functions_path=($ZDOTDIR/${^functions_path})        # prepend local dir

# Add directories for (local) completion scripts and functions so they can be
# autoloaded later.
# NOTE: this has to be loaded *before* compinit

fpath=(
  $functions_path
  $fpath
)

# Autoload functions
autoload -Uz $ZDOTDIR/functions/^*.*sh(:t)
unsetopt EXTENDED_GLOB
