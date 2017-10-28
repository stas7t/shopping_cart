ENV['RAILS_ENV'] ||= 'test'

require File.expand_path('../dummy/config/environment.rb', __FILE__)
require 'rspec/rails'
require 'rspec/autorun'
require 'factory_girl_rails'
require 'database_cleaner'
require 'shoulda/matchers'

Rails.backtrace_cleaner.remove_silencers!

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

RSpec.configure do |config|
  config.mock_with :rspec
  config.use_transactional_fixtures = true
  config.infer_base_class_for_anonymous_controllers = false
  config.order = 'random'

  config.before(:suite) do
    # This says that before the entire test suite runs, clear the test database out completely.
    # This gets rid of any garbage left over from interrupted or poorly-written tests - a common source of surprising test behavior.
    DatabaseCleaner.clean_with(:truncation)

    # This part sets the default database cleaning strategy to be transactions.
    # Transactions are very fast, and for all the tests where they do work - that is, any test where the entire test runs in the RSpec process - they are preferable.
    DatabaseCleaner.strategy = :transaction
  end

  # These lines hook up database_cleaner around the beginning and end of each test,
  # telling it to execute whatever cleanup strategy we selected beforehand.
  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end

Shoulda::Matchers.configure do |config|
  config.integrate do |with|
    with.test_framework :rspec
    with.library :rails
  end
end
