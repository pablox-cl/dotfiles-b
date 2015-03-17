Pry.config.history.file = if defined? Bundler
                            Bundler.root.join('.pry_history.rb')
                          else
                            File.expand_path('~/.pry_history')
                          end
