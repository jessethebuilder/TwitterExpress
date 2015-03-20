$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "twitter_express/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "twitter_express"
  s.version     = TwitterExpress::VERSION
  s.authors     = ["Jesse Farmer"]
  s.email       = ["jessethebuilder@yahoo.com"]
  s.homepage    = "http://anysoft.us"
  s.summary     = "Twitter Bootstrap helpers for Ruby on Rails"
  s.description = "Turnkey, one-function Twitter Bootstrap helpers for use in Rails"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  # s.add_dependency "rails", "~> 4.0.2"
  s.add_dependency "rails"
  # s.add_dependency 'bootstrap-rails'
  # s.add_dependency 'anjlab-bootstrap-rails'
  s.add_dependency 'sass-rails', '~> 5.0.1'
  s.add_dependency 'bootstrap-sass', '~> 3.0.3.0'

  # , :require => 'bootstrap-rails', :github => 'anjlab/bootstrap-rails'

  #
  # s.add_development_dependency "sqlite3"
  # s.add_development_dependency 'rspec-rails'
  # s.add_development_dependency 'capybara'
  # s.add_development_dependency 'factory_girl_rails'

  s.test_files = Dir["spec/**/*"]
end
