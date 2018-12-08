rm -f tmp/pids/server.pid
bundle check || bundle install
bundle exec puma -C config/puma.rb