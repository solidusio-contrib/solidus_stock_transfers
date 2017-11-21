# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_stock_transfers/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_stock_transfers'
  s.version     = SolidusStockTransfers::VERSION
  s.summary     = 'Stock transfer interface for solidus'
  s.description = 'An admin interface for transfering stock between StockLocations. Extracted from Solidus 2.5'
  s.license     = 'BSD-3-Clause'

  s.author    = 'John Hawthorn'
  s.email     = 'john@stembolt.com'
  # s.homepage  = 'http://www.example.com'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus_core', ['>= 2.5.x', '< 3']
  s.add_dependency 'solidus_support'
  s.add_dependency 'deface'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'capybara-screenshot'
  s.add_development_dependency 'rspec-activemodel-mocks'
  s.add_development_dependency 'rails-controller-testing'
end
