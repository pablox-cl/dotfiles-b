# Return if reqs are not found
if (( ! $+commands[apg] )); then
  return 1
fi

# a try to create a **very** complex password...
alias apg_comp="apg -s -a 1 -m 63 -n 4 -E \'\(\)"
alias apg_4="apg -m4 -x4"

