# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'itunes/version'

Gem::Specification.new do |spec|
  spec.name          = "rb-itunes"
  spec.version       = Itunes::VERSION
  spec.authors       = ["ryo katsuma"]
  spec.email         = ["katsuma@gmail.com"]
  spec.description   = %q{iTunes control with Ruby}
  spec.summary       = %q{A Ruby wrapper to control iTunes fully.}
  spec.homepage      = "https://github.com/katsuma/rb-itunes"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "rake", "~> 10.0.3"
  spec.add_development_dependency "rspec", "~> 2.13.0"
  spec.add_development_dependency "rb-fsevent", "~> 0.3"
  spec.add_development_dependency "guard", "~> 1.6.2"
  spec.add_development_dependency "guard-rspec", "~> 2.4.1"
  spec.add_development_dependency "growl", "~> 1.0.3"
  spec.add_development_dependency "fakefs", "~> 0.4.2"
  spec.add_development_dependency "simplecov", "~> 0.7.1"
  spec.add_development_dependency "coveralls", "~> 0.6.6"
end