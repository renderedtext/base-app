source "https://rubygems.org"

gem "rails", "4.0.2"

# Use PostgreSQL as the database for Active Record
gem "pg", :require => "pg"

# Compressor of JavaScript assets
gem "uglifier", ">= 1.3.0"

# Use CoffeeScript for .js.coffee assets and views
gem "coffee-rails", "~> 4.0.0"

# Use jQuery as the JavaScript library
gem "jquery-rails"

# User authentication
gem "devise", "3.2.2"

gem "omniauth-facebook"
gem "kaminari"
gem "carrierwave"
#gem "meta_search"
gem "dynamic_form"
#gem "twitter-bootstrap-rails"

group :assets do
  gem "therubyracer", :platform => :ruby
end

group :test, :development do
  gem "rspec-rails"
  gem "debugger"
  gem "awesome_print"
end

group :development do
  gem "chronic"
  #gem "admin_view"
end

group :test do
  gem "factory_girl_rails"
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "selenium-webdriver"
  gem "capybara"
  gem "shoulda"
  gem "email_spec"
end

group :production, :development do
  gem "thin"
end
