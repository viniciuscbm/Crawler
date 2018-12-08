# frozen_string_literal: true

source "https://rubygems.org"
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby "2.5.1"

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem "rails", "~> 5.2.2"
# Use Puma as the app server
gem "puma", "~> 3.11"
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
# gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

# Reduces boot times through caching; required in config/boot.rb
gem "bootsnap", ">= 1.1.0", require: false

# Use Rack CORS for handling Cross-Origin Resource Sharing (CORS), making cross-origin AJAX possible
gem "rack-cors"
# Rack middleware for blocking & throttling abusive requests
gem "rack-attack"
# Ruby ODM framework for MongoDB
gem "mongoid", "~> 6.1.0"
# Gem to allow for custom representations of JSON responses
gem "active_model_serializers"
# To make http requests
gem "rest-client"
# Nokogiri is a Rubygem providing HTML, XML, SAX, and Reader parsers with XPath and CSS selector support.
gem "nokogiri"
# Sophisticated paginator for Ruby
gem "kaminari"
# For generate better Swagger Doc
gem "swagger-parser"

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem "byebug", platforms: %i[mri mingw x64_mingw]
  # Ruby library that pretty prints Ruby objects in full color exposing
  gem "awesome_print"
  # Fasterer will suggest some speed improvements
  gem "fasterer"
  # RubyCritic is a gem that wraps around static analysis
  gem "rubycritic", require: false
  # Ruby static code analyzer, based on the community Ruby style guide
  gem "rubocop", require: false
end

group :development do
  gem "listen", ">= 3.0.5", "< 3.2"
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem "spring"
  gem "spring-watcher-listen", "~> 2.0.0"
  # A static analysis security vulnerability scanner for Ruby on Rails applications
  gem "brakeman", require: false
  # Patch-level verification for Bundler
  gem "bundler-audit", require: false
  # a code metric tool for rails projects http://rails-bestpractices.com
  gem "rails_best_practices", require: false
end


# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem "tzinfo-data", platforms: %i[mingw mswin x64_mingw jruby]
