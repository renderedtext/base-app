require 'spork'

Spork.prefork do

  require "rails/application"
  # Prevent Devise from loading the User model super early with it's route hacks for Rails 3.1
  # see also: https://github.com/timcharper/spork/wiki/Spork.trap_method-Jujutsu
  Spork.trap_method(Rails::Application, :reload_routes!)
  Spork.trap_method(Rails::Application::RoutesReloader, :reload!)

  ENV["RAILS_ENV"] ||= "test"
  require File.expand_path(File.dirname(__FILE__) + '/../../config/environment')

  require 'cucumber/rails'

  require 'email_spec/cucumber'

  require 'cucumber/rspec/doubles'
  require 'cucumber/formatter/unicode'

  require 'capybara/rails'
  require 'capybara/cucumber'
  require 'capybara/session'

  require 'ruby-debug'

  Capybara.default_selector = :css

  ActionController::Base.allow_rescue = false

  Before do
    Role.create!(:name => "admin")
  end

end

Spork.each_run do

  Cucumber::Rails::World.use_transactional_fixtures = true

  if defined?(ActiveRecord::Base)
    begin
      require 'database_cleaner'
      DatabaseCleaner.strategy = :truncation
    rescue LoadError => ignore_if_database_cleaner_not_present
    end
  end

end
