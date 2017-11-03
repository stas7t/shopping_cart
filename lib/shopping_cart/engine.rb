module ShoppingCart
  class Engine < ::Rails::Engine
    isolate_namespace ShoppingCart

    require 'devise'
    require 'wicked'
    require 'haml-rails'

    config.generators do |g|
      g.template_engine :haml
      g.test_framework      :rspec,        fixture: false
      g.fixture_replacement :factory_girl, dir: 'spec/factories'
      g.assets false
      g.helper false
    end

    initializer :inject_helpers do
      ActiveSupport.on_load :action_controller do
        ::ApplicationController.send(:helper, ShoppingCart::Engine.helpers)
      end
    end
  end
end
