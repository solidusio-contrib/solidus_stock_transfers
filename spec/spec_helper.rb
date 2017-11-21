if ENV['COVERAGE']
  require "simplecov"
  SimpleCov.start "rails"
end

ENV["RAILS_ENV"] ||= "test"

require File.expand_path("../dummy/config/environment.rb",  __FILE__)

require 'rails-controller-testing'
require 'solidus_support/extension/feature_helper'

require 'spree/api/testing_support/helpers'
require 'cancan/matchers'
require 'rspec/active_model/mocks'

Dir[File.join(File.dirname(__FILE__), "support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|
  config.infer_spec_type_from_file_location!

  FactoryBot.find_definitions
end
