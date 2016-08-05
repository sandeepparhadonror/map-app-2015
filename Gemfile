source 'https://rubygems.org'

ruby "2.2.3"                 # Ruby version
gem 'rails', '4.2.5'         # rails Version

# Production Gem set
group :production do
  gem 'pg'               # Use postgresql as the database for Active Record
  gem 'rails_12factor'
end

gem 'devise'             # User Authetication Functinality
gem 'devise-guests'      # got guest user can add location

gem 'geocoder'           # Location Lat and Lang and Map Purpose
gem 'gmaps4rails'        # Display the map

gem 'carrierwave'        # image attcheement or uploading
gem "mini_magick"        # image croping

gem 'bootstrap-sass', '~> 3.3.6'  # for Bootstrap dirtecly
gem 'autoprefixer-rails'
gem 'sass-rails'                 # Use SCSS for stylesheets
gem 'uglifier', '>= 1.3.0'       # Use Uglifier as compressor for JavaScript assets
gem 'coffee-rails', '~> 4.0.0'   # Use CoffeeScript for .js.coffee assets and views

gem 'therubyracer',  platforms: :ruby
gem 'jquery-datatables-rails', '~> 3.1.1'   # datatable pagination
gem 'jquery-rails'       # Use jquery as the JavaScript library
gem 'jquery-turbolinks'  #  Turbolink work with proper Jquery added this Gem
gem 'turbolinks'

gem 'jbuilder', '~> 2.0'  # Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'sdoc', '~> 0.4.0',  group: :doc  # bundle exec rake doc:rails generates the API under doc/api.

# Development Gem Set
group :development do
  gem 'sqlite3'
  gem 'spring'
  gem 'pry'
  gem 'byebug'
  gem 'web-console', '~> 2.0'
  gem 'spring'
end

# Use Capistrano for deployment
# gem 'capistrano-rails', group: :development
