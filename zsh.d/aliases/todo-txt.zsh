# Return if requirements are not found.
if (( ! $+commands[todo.sh] )); then
  return 1
fi

alias t='todo.sh'
alias tl="t ls -someday"

