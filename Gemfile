# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.7.2'

gem 'rails', '~> 6.1.1' # Bundle edge Rails instead: gem 'rails', github: 'rails/rails'

gem 'bootsnap', '>= 1.4.4', require: false # Reduces boot times through caching; required in config/boot.rb
gem 'geocoder', '~> 1.3', '>= 1.3.7' # Geocoding for places
gem 'jbuilder', '~> 2.7' # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'pg', '~> 1.1' # Use postgresql as the database for Active Record
gem 'puma', '~> 5.0' # Use Puma as the app server
gem 'redis', '~> 4.0' # Use Redis adapter to run Action Cable in production
gem 'turbo-rails', '~> 0.5' # Turbolinks / Turboframes / etc
gem 'webpacker', '~> 5' # Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
# gem 'bcrypt', '~> 3.1.7' # gem 'bcrypt', '~> 3.1.7'
gem 'image_processing', '~> 1.2' # Use Active Storage variant

group :development, :test do
  gem 'byebug', platforms: %i[mri mingw x64_mingw] # Call 'byebug' anywhere to stop execution and get a debugger console
  gem 'guard', '~> 2.14', require: false # File watching
  gem 'guard-livereload', '~> 2.5', '>= 2.5.2', require: false # live reloading
  gem 'guard-minitest', '~> 2.4.6', require: false # Reload tests
end

group :development do
  gem 'brakeman', '~> 5', require: false # Security
  gem 'listen', '~> 3.3', require: false # Listen to file changes
  gem 'memory_profiler', '~> 1.0' # Profiling
  gem 'pry', '~> 0.13' # An IRB alternative and runtime developer console
  gem 'pry-rails', '~> 0.3' # Use Pry as your rails console
  gem 'rack-mini-profiler', '~> 2.0', require: false # Profiling
  gem 'rubocop', '~> 1.9', require: false # Rubocop
  gem 'rubocop-minitest', '~> 0.10', require: false # Lint Minitest files
  gem 'rubocop-performance', '~> 1.9', '>= 1.9.2', require: false # Lint performance
  gem 'rubocop-rails', '~> 2.9', require: false # Lint rails
  gem 'ruby-prof', '~> 0.16.2' # More profiling
  gem 'spring', '~> 2' # Spring speeds up development by keeping your application running in the background.
  gem 'stackprof', '~> 0.2.16', require: false # Profiling
  gem 'web-console', '>= 4.1.0' # interactive console on exception pages or by calling 'console'
end

group :test do
  gem 'capybara', '>= 3.26' # Adds support for Capybara system testing and selenium driver
  gem 'selenium-webdriver', '~> 3' # Selenium for E2E
  gem 'webdrivers', '~> 4' # Easy installation and use of web drivers to run system tests with browsers
  gem 'webmock', '~> 3' # Mock HTTP calls
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', '~> 1', platforms: %i[mingw mswin x64_mingw jruby]
