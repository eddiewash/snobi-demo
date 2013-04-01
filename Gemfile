source 'https://rubygems.org'
gem 'rails', '3.2.9'
gem 'sqlite3'
gem "heroku"

group :production, :staging do
  gem "pg"
  gem 'thin'
end

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem "therubyracer"
  gem "less-rails"
  gem 'twitter-bootstrap-rails', :git => 'git://github.com/seyhunak/twitter-bootstrap-rails.git'
end

group :development do
end

group :test do
	gem 'rspec'
end

# gem "rmagick"
gem 'carrierwave'
gem "paperclip", "~> 3.0"
gem 'jquery-rails'
gem 'masonry-rails'
gem "rspec-rails", ">= 2.11.4", :group => [:development, :test]
gem "database_cleaner", ">= 0.9.1", :group => :test
gem "email_spec", ">= 1.4.0", :group => :test
gem "cucumber-rails", ">= 1.3.0", :group => :test, :require => false
gem "launchy", ">= 2.1.2", :group => :test
gem "capybara", ">= 2.0.1", :group => :test
gem "factory_girl_rails", ">= 4.1.0", :group => [:development, :test]
gem "devise", ">= 2.1.2"
gem "cancan", ">= 1.6.8"
gem "rolify", ">= 3.2.0"
gem "simple_form", ">= 2.0.4"
gem "quiet_assets", ">= 1.0.1", :group => :development
gem "figaro", ">= 0.5.0"
gem "better_errors", ">= 0.2.0", :group => :development
gem "binding_of_caller", ">= 0.6.8", :group => :development