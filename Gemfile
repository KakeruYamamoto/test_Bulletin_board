source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Core
ruby '2.6.5'
gem 'rails', '~> 6.0.2', '>= 6.0.2.1'
# Middleware
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 4.1'

# Frontend
gem 'sass-rails', '>= 6'
gem 'webpacker', '~> 4.0'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.7'
gem 'bootsnap', '>= 1.4.2', require: false

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'better_errors'
  gem 'pry-rails'
  gem 'binding_of_caller'
  gem 'factory_bot_rails'
  gem 'faker'
  gem 'gimei'
  gem 'guard-rspec'
  gem 'rspec-rails'
  gem 'launchy'
  gem 'capybara'
  gem 'spring'
  gem 'spring-commands-rspec'
  gem 'selenium-webdriver'
  gem 'database_cleaner'
  gem 'webdrivers'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  gem 'selenium-webdriver'
  gem 'webdrivers'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
