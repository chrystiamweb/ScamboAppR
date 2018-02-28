source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record
gem 'sqlite3'
# Flexible authentication solution for Rails with Warden
gem 'devise'
# Translations for the devise gem
gem 'devise-i18n'
# Help ActiveRecord::Enum feature to work fine with I18n and simple_form.
gem 'enum_help'
#Generate Entity-Relationship Diagrams for Rails applications 
gem 'rails-erd'
#Rails gem of the Bootstrap based admin theme SB Admin 2
gem 'bootstrap_sb_admin_base_v2'
#Jquerry 
gem 'jquery-rails'
#bootstrap 4 
gem 'bootstrap', '~> 4.0.0'
# Use Puma as the app server
gem 'puma', '~> 3.7'
# Rails i18n for locale data
gem 'rails-i18n'
# Minimal authorization through OO design and pure Ruby classes
gem 'pundit'
# O Lero-lero Generator é uma ferramenta capaz de gerar frases que 'falam' muita coisa mas que não tem conteúdo algum.
gem 'lerolero_generator'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
source  'https://rails-assets.org' do
  # A simple, versatile notification library
  gem 'rails-assets-notifyjs'
  # Wrappers for JavaScript alert(), confirm() and other flexible dialogs using Twitter's bootstrap framework
  gem 'rails-assets-bootbox'
end

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem "better_errors"
  gem "binding_of_caller"
  # Generate fake data: names, addresses, phone numbers, etc.
  gem 'faker', '~> 1.6', '>= 1.6.6'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
