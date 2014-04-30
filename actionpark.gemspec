$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "actionpark/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "actionpark"
  s.version     = Actionpark::VERSION
  s.authors     = ["TODO: Your name"]
  s.email       = ["TODO: Your email"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Actionpark."
  s.description = "TODO: Description of Actionpark."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 3.2.17"

  s.add_development_dependency "sqlite3"
end
