# Return if reqs are not found
if (( ! $+commands[git] )); then
  return 1
fi

# invert prezto default aliases
alias gws='git status --ignore-submodules=${_git_status_ignore_submodules}'
alias gwS='git status --ignore-submodules=${_git_status_ignore_submodules} --short'

alias gcv='git commit --verbose'

alias gll='git log --topo-order --pretty=oneline --abbrev-commit --graph --decorate --all'
