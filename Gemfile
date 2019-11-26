source 'https://rubygems.org'
ruby '2.4.5'

gem 'rails', '~> 5.0.1'

group :development, :test do
  # Use sqlite3 as the database for Active Record
  gem 'sqlite3', '~> 1.3.0'
end

group :production do
  gem 'pg'
  gem 'rails_12factor'
end

group :development do
  gem 'guard-rspec', require: false
end

group :test, :development do
  gem "minitest"
  gem 'rspec-rails', '~> 3.6'
  gem 'rails-controller-testing'
end

group :test do
  gem 'capybara', '~> 2.18.0'
end

gem "haml-rails", "~> 1.0"
gem 'bootstrap-sass', '~> 3.4.1'
gem 'sassc-rails', '>= 2.1.0'


gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'
gem 'jquery-rails'

# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby

gem 'turbolinks', '~> 5.2.0'
gem 'jbuilder', '~> 2.0'
gem 'sdoc', '~> 0.4.0', group: :doc

# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Unicorn as the app server
# gem 'unicorn'

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development

group :development, :test do
  gem 'byebug'
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
end
