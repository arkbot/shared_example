# See http://rubydoc.info/gems/rspec-core/RSpec/Core/Configuration

RSpec.configure do |config|
  config.expect_with :rspec do |expectations|
    expectations.include_chain_clauses_in_custom_matcher_descriptions = true
  end

  config.deprecation_stream = 'log/deprecations-test.log'

  config.mock_with :rspec do |mocks|
    mocks.verify_partial_doubles = true
  end

  config.filter_run :focus
  config.run_all_when_everything_filtered = true

  # config.example_status_persistence_file_path = "spec/examples.txt"
  # config.disable_monkey_patching!

  config.profile_examples = 10
  config.order = :random
  Kernel.srand config.seed
end