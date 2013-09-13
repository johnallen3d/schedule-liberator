source 'https://rubygems.org'

gem 'rails', '3.2.12'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'role-rails'
gem "simple_form"
gem "handlebars-rails", :github => 'brianjlandau/handlebars-rails'
# gem 'schedule-scraper'
gem 'schedule-scraper', :path => "~/development/ruby/gems/schedule-scraper"

group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'

  gem "twitter-bootstrap-rails"
  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 2.2.1'
end

group :development do
  gem 'awesome_print'
  gem 'quiet_assets'
end

group :development, :test do
  gem "sqlite3"
end

group :production do
  gem 'pg'
end
