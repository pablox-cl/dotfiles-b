Pry.config.history.file = if defined? Bundler
                            Bundler.root.join('.pry_history.rb')
                          else
                            File.expand_path('~/.pry_history')
                          end

if defined?(PryByebug)
  Pry.commands.alias_command 'c', 'continue'
  Pry.commands.alias_command 's', 'step'
  Pry.commands.alias_command 'n', 'next'
  Pry.commands.alias_command 'f', 'finish'

  # Hit Enter to repeat last command
  Pry::Commands.command(/^$/, "repeat last command") do
    _pry_.run_command Pry.history.to_a.last
  end
end
