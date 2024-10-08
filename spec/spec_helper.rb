# frozen_string_literal: true

require "change_ledger"
require "active_support/all"
require "active_support/testing/time_helpers"
require "active_record"
require "combustion"
require "bundler"

Combustion.initialize! :all

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
  config.include ActiveSupport::Testing::TimeHelpers
end
