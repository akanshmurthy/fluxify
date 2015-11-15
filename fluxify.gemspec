# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'fluxify/version'

Gem::Specification.new do |spec|
  spec.name          = "fluxify"
  spec.version       = Fluxify::VERSION
  spec.authors       = ["Akansh Murthy"]
  spec.email         = ["ambshun@alum.mit.edu"]

  spec.summary       = %q{Creates one cycle of Flux in React Rails.}
  spec.description   = %q{With a single command, a util, action, constant, dispatcher, store, and component will be created.}
  spec.homepage      = "https://github.com/akanshmurthy/fluxify"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
end
