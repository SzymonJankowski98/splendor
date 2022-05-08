source "https://rubygems.org"

ruby File.read(File.expand_path('.ruby-version', __dir__)).chomp

gem 'overcommit', require: false
gem 'rubocop', require: false
gem 'rubocop-rails', require: false
gem 'rubocop-rspec', require: false