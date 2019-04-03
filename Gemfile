source 'http://rubygems.org'

ruby '2.5.3'
gem 'sinatra'
gem 'activerecord', '~> 4.2', '>= 4.2.6', :require => 'active_record'
gem 'sinatra-activerecord', :require => 'sinatra/activerecord'
gem 'rake'
gem 'require_all'
gem 'thin'
gem 'bcrypt'
gem 'rack-flash3'
gem 'pg', '0.20'
gem 'rails_12factor'
gem 'foreman'

group :test do
  gem 'rspec'
  gem 'capybara'
  gem 'rack-test'
  gem 'database_cleaner', git: 'https://github.com/bmabey/database_cleaner.git'
end

group :development do
  gem 'sqlite3', '~> 1.3.6'
  gem 'shotgun'
  gem 'tux'
  gem 'pry'
end
