source "http://rubygems.org"

gem "rails"

gem "pg", :require => "pg"

gem "jquery-rails"
gem "devise"
gem "omniauth-facebook"
gem "kaminari"
gem "carrierwave"
gem "meta_search"
gem "dynamic_form"
gem 'heroku'

group :test, :development do
  gem "rspec-rails"
  gem "spork-rails"
  gem "ruby-debug19"
  gem "awesome_print"
end

group :development do
  gem "thin"
  gem "chronic"
  gem "admin_view"
  gem "ruby-debug19"
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

group :production do
  gem "thin"
end
