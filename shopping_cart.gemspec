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

  s.add_dependency 'rails', '~> 5.1.4'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'factory_girl_rails'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sqlite3'

  s.test_files = Dir['spec/`/*']
end
