#
# Nodejs stuff
#
# Authors:
#   Pablo Olmos de Aguilera <pablo at glatelier dot org>

# Return if reqs are not found
if (( ! $+commands[npm] )); then
  return 1
fi

#
# http://stackoverflow.com/questions/9679932/how-to-use-package-installed-locally-in-node-modules
# path=(
#   $(npm bin)
#   $path
# )

alias npm-exec="PATH=$(npm bin):$PATH"

