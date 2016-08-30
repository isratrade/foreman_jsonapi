require File.expand_path('../lib/foreman_jsonapi/version', __FILE__)
require 'date'

Gem::Specification.new do |s|
  s.name        = "foreman_jsonapi"
  s.version     = ForemanJsonapi::VERSION
  s.date        = Date.today.to_s
  s.authors     = ["Joseph Magen"]
  s.email       = ["jmagen@redhat.com"]
  s.homepage    = "http://www.theforeman.org"
  s.summary     = "Foreman plugin adds API based on jsonapi.org spec."
  s.description = "Foreman plugin adds API based on jsonapi.org spec."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "active_model_serializers", '~> 0.10.0'
  s.add_dependency "apipie-rails"

end
