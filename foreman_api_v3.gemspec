require File.expand_path('../lib/foreman_api_v3/version', __FILE__)
require 'date'

Gem::Specification.new do |s|
  s.name        = "foreman_api_v3"
  s.version     = ForemanApiV3::VERSION
  s.date        = Date.today.to_s
  s.authors     = ["Joseph Magen"]
  s.email       = ["jmagen@redhat.com"]
  s.homepage    = "http://www.theforeman.org"
  s.summary     = "Plugin engine to that adds v3 API to Foreman based on jsonapi.org spec."
  s.description = "Plugin engine to that adds v3 API to Foreman based based on jsonapi.org spec."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "active_model_serializers", '~> 0.10.0'
  s.add_dependency "apipie-rails"

end
