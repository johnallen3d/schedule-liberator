source 'https://rubygems.org'

gem 'rails', '3.2.12'
gem 'jquery-rails'
gem 'jquery-ui-rails'
gem 'role-rails'
gem "simple_form"
gem "handlebars-rails", :github => 'brianjlandau/handlebars-rails'
gem 'schedule-scraper'
# gem 'schedule-scraper', :path => "~/development/ruby/gems/schedule-scraper"

group :assets do
  gem 'sass-rails',   '~> 3.2.6'
  gem 'coffee-rails', '~> 3.2.2'

  gem "therubyracer"
  gem "less-rails" #Sprockets (what Rails 3.1 uses for its asset pipeline) supports LESS
  gem "twitter-bootstrap-rails"

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
