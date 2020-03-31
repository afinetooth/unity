$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "unity/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "unity"
  s.version     = Unity::VERSION
  s.authors     = ["James Kessler"]
  s.email       = ["afinetooth@gmail.com"]
  s.homepage    = "https://github.com/afinetooth/unity"
  s.summary     = "A gem for maintaining consistent user experiences between unit systems. Make your apps all unit-y!"
  s.description = "The Unity Gem makes constructing unit-aware form elements easy. It fixes the biggest problem in switching between units---intelligently choosing the most appropriate value in the new unit system."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["MIT-LICENSE", "Rakefile"]
  s.license     = "MIT"

  s.add_dependency "rails", "~> 3.2.6"
  s.add_dependency "ruby-units"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "capybara"
  s.add_development_dependency "guard-rspec"
  s.add_development_dependency "guard-spork"
end
