$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "api/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "api"
  s.version     = Api::VERSION
  s.authors     = ["Alberto Vallejo"]
  s.email       = ["javr1088@gmail.com"]
  s.homepage    = 'https://lunchtime.com'
  s.summary     = 'LunchTime Summary'
  s.description = "Description of Api."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency 'rails', '~> 4.2.5.2'
  s.add_dependency 'jbuilder'
  s.add_dependency 'kaminari'
end
