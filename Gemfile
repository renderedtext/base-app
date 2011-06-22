source "http://rubygems.org"

gem "rails", "3.1.0.rc4"
gem "sprockets", "= 2.0.0.beta.10"
gem "pg", :require => "pg"

gem 'json'
gem 'coffee-script'
gem 'uglifier'

gem "devise"
gem "oa-oauth", :require => "omniauth/oauth"
gem "kaminari"
gem "carrierwave"
gem "jquery-rails", "~> 1.0.9"
gem "meta_search", "~> 1.1.0.pre"

group :test, :development do
  gem "rspec-rails", "~> 2.4"
  gem "email_spec"
  gem "shoulda"
  gem "cucumber-rails"
  gem "capybara"
  gem "factory_girl_rails"
  gem "database_cleaner"
  gem "ruby-debug19"
  gem "mongrel", ">= 1.2.0.pre2"
  gem "chronic"
  gem "awesome_print"
  gem "therubyracer"
end

group :production do
  gem "therubyracer-heroku"
end
