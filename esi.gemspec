# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'omniauth-esi/version'

Gem::Specification.new do |spec|
  spec.name          = "omniauth-esi"
  spec.version       = OmniAuth::ESI::VERSION
  spec.authors       = ["Zachary Lemmon"]
  spec.email         = ["musicmage4114@aim.com"]

  spec.summary       = "OmniAuth strategy for EVE Online's EVE Swagger Interface"
  spec.description   = "OmniAuth strategy for EVE Online's EVE Swagger Interface"
  spec.homepage      = 'https://github.com/musicmage4114/omniauth-esi.git'
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test)}) }
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'omniauth-oauth2', '~> 1.0'
  spec.add_development_dependency "bundler", "~> 1.14"
  spec.add_development_dependency "rake", "~> 10.0"
end
