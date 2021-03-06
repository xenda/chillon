# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'chillon/version'

Gem::Specification.new do |spec|
  spec.name          = "chillon"
  spec.version       = Chillon::VERSION
  spec.authors       = ["Alvaro Pereyra"]
  spec.email         = ["alvaro@xendacentral.com"]
  spec.description   = %q{Simple way to load GUID info from the Lima Metropolitana open data platform}
  spec.summary       = %q{Simple way to load GUID info from the Lima Metropolitana access}
  spec.homepage      = "https://github.com/xenda/chillon"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rimac"
end
