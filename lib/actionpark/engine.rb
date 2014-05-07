module Actionpark
  class Engine < ::Rails::Engine
    isolate_namespace Actionpark

    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
