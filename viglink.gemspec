# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'viglink/version'

Gem::Specification.new do |gem|
  gem.name          = "viglink"
  gem.version       = Viglink::VERSION
  gem.authors       = ["Julius Francisco"]
  gem.email         = ["baldrailers@gmail.com"]
  gem.description   = %q{Viglink API Wrapper}
  gem.summary       = gem.description
  gem.homepage      = "http://www.enlightened.org"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'faraday', '~> 0.8'
  gem.add_dependency 'faraday_middleware', '~> 0.9'
  gem.add_dependency 'hashie'
  gem.add_dependency 'multi_xml'
  gem.add_dependency 'activesupport'

  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'simplecov-rcov'
  gem.add_development_dependency 'yard'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'shoulda'
  gem.add_development_dependency 'webmock'
end
