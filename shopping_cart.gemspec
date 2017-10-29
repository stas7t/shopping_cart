$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'shopping_cart/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'shopping_cart'
  s.version     = ShoppingCart::VERSION
  s.authors     = ['Stanislav Tyshchenko']
  s.email       = ['stas7t@gmail.com']
  s.homepage    = 'https://github.com/stas7t/shopping_cart'
  s.summary     = 'Shopping cart with multi step checkout process.'
  s.description = 'This engine adds shopping cart with multi step checkout \
                   process to your rails 5 application.'
  s.license     = 'MIT'

  s.files = Dir['{app,config,db,lib}/**/*',
                'MIT-LICENSE',
                'Rakefile',
                'README.md']

  s.add_dependency 'cancancan', '~> 2.0'
  s.add_dependency 'devise', '~> 4.3'
  s.add_dependency 'haml-rails', '~> 1.0.0'
  s.add_dependency 'rails', '~> 5.1.2'
  s.add_dependency 'wicked', '~> 1.3', '>= 1.3.2'

  s.add_development_dependency 'capybara', '~> 2.15', '>= 2.15.2'
  s.add_development_dependency 'database_cleaner', '~> 1.6', '>= 1.6.1'
  s.add_development_dependency 'factory_girl_rails', '4.8'
  s.add_development_dependency 'rails-controller-testing', '~> 1.0', '>= 1.0.2'
  s.add_development_dependency 'rspec-rails', '~> 3.6', '>= 3.6.1'
  s.add_development_dependency 'shoulda-matchers', '~> 3.1', '>= 3.1.2'
  s.add_development_dependency 'sqlite3'

  s.test_files = Dir['spec/`/*']
end
