$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "actionpark/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "actionpark"
  s.version     = Actionpark::VERSION
  s.authors     = ["Brendan Mulholland", "Jennifer Cooper"]
  s.email       = ["actionpark@bmulholland.ca", "cooper.jennl@gmail.com"]
  s.homepage    = "http://en.wikipedia.org/wiki/Action_Park"
  s.summary     = "A reputation for poorly designed, unsafe rides; underaged, undertrained, and often under-the-influence staff; intoxicated, unprepared visitors; and a consequently poor safety record."
  s.description = "A reputation for poorly designed, unsafe rides; underaged, undertrained, and often under-the-influence staff; intoxicated, unprepared visitors; and a consequently poor safety record."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "terminal-notifier-guard"
  s.add_development_dependency "zeus"
  s.add_development_dependency "better_errors"
end
