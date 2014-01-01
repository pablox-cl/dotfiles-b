# Make sure *vendored* gems are run first than anything (useful with rbenv)
# See:
#   + http://jimeh.me/blog/2011/11/01/my-ruby-development-environment/
#   + http://ryan.mcgeary.org/2011/02/09/vendor-everything-still-applies/

path=(
  ./vendor/bundle/bin
  $path
)

