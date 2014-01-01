#
# Manages tmuxifier app
# https://github.com/jimeh/tmuxifier
#
# Authors:
#   Pablo Olmos de Aguilera <pablo at glatelier dot org>
#

# If tmuxifier it's not found, exit
[[ -d ~/.tmuxifier ]] || return 1

path=(
  ${HOME}/.tmuxifier/bin
  $path
  )

eval "$(tmuxifier init -)"

