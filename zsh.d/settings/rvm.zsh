# RVM Options

# Check rvm first
if (( ! $+commands[rvm] )); then
  return 1
fi

# NOTE: rvm complains about haveing `--user-install` in gemrc, but since that
# is the way it came with the system package for Arch Linux, we can safely
# ignore it
export rvm_ignore_gemrc_issues=1
