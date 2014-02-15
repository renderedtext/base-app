# base-app

A base Rails 4 application. Features user and admin system with Facebook login. It is instadeployable to Heroku.

The view is implemented using [Bootstrap 3](http://getbootstrap.com/).

Here's a [live demo](http://rt-baseapp.herokuapp.com/). Just note that environment variables for Facebook login are not set so logging in that way will not work.

<img src="https://semaphoreapp.com/api/v1/projects/73c4b979-0a40-49db-b10e-571d41e10d9a/133529/badge.png">

### Gemfile

- [pg](http://rubygems.org/gems/pg) for PostgreSQL
- [jQuery](https://github.com/rails/jquery-ujs)
- [Devise](https://github.com/plataformatec/devise) for authenticating users with [OmniAuth](https://github.com/intridea/omniauth) for Facebook login
- [Ransack](https://github.com/activerecord-hackery/ransack) for searching users
- [Kaminari](https://github.com/amatsuda/kaminari) for pagination

For testing and development:

- [Rspec](https://github.com/dchelimsky/rspec)
- [Cucumber](https://github.com/aslakhellesoy/cucumber) with [Capybara](https://github.com/jnicklas/capybara)
- [Database_cleaner](https://github.com/bmabey/database_cleaner)
- [Debugger](https://github.com/cldwalker/debugger)
- [Factory Girl](https://github.com/thoughtbot/factory_girl_rails)
- [Awesome Print](https://github.com/michaeldv/awesome_print)
- [Email spec](https://github.com/bmabey/email-spec)
- [Shoulda](https://github.com/thoughtbot/shoulda)
- [Thin](https://github.com/macournoyer/thin)

### Setting up

- Make sure you have Ruby 2.0.0.
- Install dependencies from Gemfile: `bundle install --path .bundle`.
- Create your `config/database.yml`, create the database and run the migrations.
- For Facebook login to work, export environment variables `FACEBOOK_APP_ID` and `FACEBOOK_APP_SECRET`.
- When creating a new app from this one, you will want to change
  `config/initializers/secret_token.rb` and set `DEVISE_SECRET_KEY`
  (see `config/initializers/devise.rb`).

### License

base-app is Copyright © 2011-2014 [Rendered Text](http://renderedtext.com). It is free software, and may be redistributed under the terms specified in the LICENSE file.
