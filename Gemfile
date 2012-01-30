source "http://rubygems.org"

gem "rails", "3.1.0"
#gem "sprockets"
gem "pg", :require => "pg"

gem 'json'
gem 'coffee-script'
gem 'uglifier'

gem "devise", "1.5"
gem "omniauth-facebook"

gem "kaminari"
gem "carrierwave"
gem "jquery-rails"
gem "meta_search"

group :test, :development do
  gem "rspec-rails"
  gem "spork", "~> 1.0.0rc1"
  gem "ruby-debug19"
  gem "awesome_print"
end

group :development do
  gem "mongrel", ">= 1.2.0.pre2"
  gem "chronic"
  gem "admin_view"
end

group :test do
  gem "factory_girl_rails"
  gem "cucumber-rails", :require => false
  gem "database_cleaner"
  gem "selenium-webdriver", "~> 2.18.0"
  gem "capybara"
  gem "shoulda"
  gem "email_spec"
end

group :production do
end
