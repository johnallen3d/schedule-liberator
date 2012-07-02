require 'rbconfig'
HOST_OS = RbConfig::CONFIG['host_os']

source 'https://rubygems.org'

gem 'rails', '3.2.6'
gem 'sqlite3'
gem 'jquery-rails'
gem 'role-rails'
gem "simple_form"
gem "handlebars-rails", :github => 'brianjlandau/handlebars-rails'
gem 'schedule-scraper', :path => "~/development/ruby/gems/schedule-scraper"

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  gem "twitter-bootstrap-rails"
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

group :development do
  gem 'rb-fsevent'
  gem 'ruby_gntp'
  gem 'awesome_print'
  gem 'quiet_assets'
end

group :development do
  # gem "guard-livereload"
  gem "yajl-ruby"
  # gem "rack-livereload"
  gem "guard-pow"
  gem "guard-bundler"
end

group :development, :test do
  gem 'minitest-spec-rails'
  gem 'minitest-rails'
  gem "sqlite3"
  gem "capybara"
  gem "guard-minitest"
  gem "guard-spork"
  gem "spork-testunit"
end

group :test do
  gem 'shoulda'
  gem 'mini_shoulda'
  gem "minitest-rails-shoulda", :github => 'rawongithub/minitest-rails-shoulda'
  gem "turn"
end
