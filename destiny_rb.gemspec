# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'destiny_rb/version'

Gem::Specification.new do |spec|
  spec.name          = "destiny_rb"
  spec.version       = Destiny::VERSION
  spec.authors       = ["pDaily"]
  spec.email         = ["pat@pdaily.me"]

  spec.summary       = %q{Basic Ruby implementation of Bungies Destiny API}
  spec.description   = %q{Bungies Destiny API in an easily consumable ruby gem!}
  spec.homepage      = "https://github.com/PDaily/destiny-rb"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org/"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency "httparty", "~> 0.13", ">= 0.13.5"
  spec.add_runtime_dependency "rake", "~> 10.4", ">= 10.4.2"

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "pry-byebug", "~> 3.1", ">= 3.1.0"
  spec.add_development_dependency "rack-test", "~> 0.6", ">= 0.6.3"
  spec.add_development_dependency "rspec", "~> 3.0", ">= 3.0.0"
  spec.add_development_dependency "simplecov", "~> 0.10", ">= 0.10.0"
  spec.add_development_dependency "coveralls", "~> 0.8", ">= 0.8.1"
  spec.add_development_dependency "codeclimate-test-reporter", "~> 0.4", ">= 0.4.7"
end
