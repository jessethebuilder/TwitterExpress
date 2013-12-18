source "https://rubygems.org"

# Declare your gem's dependencies in twitter_express.gemspec.
# Bundler will treat runtime dependencies like base dependencies, and
# development dependencies will be added by default to the :development group.
gemspec

gem 'jquery-rails'
gem 'sass-rails'

group :test, :development do
  gem 'faker'
  gem 'rspec-rails'
  gem 'wdm'
  gem 'database_cleaner', '~> 1.0.0rc'
  gem 'timecop'
end

group :test do
  gem 'factory_girl_rails'
  gem 'capybara'
  gem 'guard-rspec'
  gem 'selenium-webdriver'
  #gem "capybara-webkit"
  gem 'shoulda'
  gem 'launchy', '~> 2.3.0'
  #gem 'webrat'
end


# Turbolinks makes following links in your web application faster. Read more: https://github.com/rails/turbolinks
gem 'turbolinks'
gem 'anjlab-bootstrap-rails', :require => 'bootstrap-rails', :github => 'anjlab/bootstrap-rails'

