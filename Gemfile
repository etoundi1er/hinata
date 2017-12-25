source 'https://rubygems.org'

gem 'rails', '4.2.6'
gem 'pg'

gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-ui-rails'

gem 'foundation-rails', '~> 5.5.0'
gem 'foundation-datetimepicker-rails'
gem 'jquery-turbolinks' # Handles turbolink conflicts with jquery

gem 'will_paginate'
gem 'simple_calendar', '~> 1.1.0'

# Pagination
gem 'kaminari'
gem 'best_in_place', '~> 3.0.1'
# gem "wice_grid", '3.4.2'

gem 'chosen-rails' # Multiselect form
# Tabs navigation with Tabs On Rails https://github.com/weppos/tabs_on_rails
gem 'tabs_on_rails', git: 'https://github.com/weppos/tabs_on_rails.git'

# authentication/authorization stack
gem 'devise'
gem 'cancancan'
gem 'rolify'

# Offline application gem
gem 'rack-offline'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :production do
  gem 'rails_12factor'
  gem 'puma', '2.11.1'
end

group :development, :test do
    gem 'quiet_assets'      # stop assets from spaming the terminal
    gem 'better_errors'     # better errors
    gem 'binding_of_caller' # necessary for interactive console on error-pages
    gem 'guard'
    gem 'guard-minitest'
    gem 'byebug'
    gem 'rubocop', '0.42.0', require: false
    gem 'ruby-prof'
    gem 'web-console', '~> 2.0'
    gem 'spring'
    gem 'rails-erd'
end

group :test do
    gem 'minitest-reporters'
    gem 'capybara'
    gem 'simplecov'
end

group :doc do
    gem 'sdoc', '~> 0.4.0'
end

# ruby '2.3.0'
