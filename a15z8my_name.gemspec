# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'a15z8my_name/version'

Gem::Specification.new do |spec|
  spec.name          = "a15z8my_name"
  spec.version       = A15z8myName::VERSION
  spec.authors       = ["hal13"]
  spec.email         = ["a15z8my@aiit.ac.jp"]

  spec.summary       = %q{Return your BMI.}
  spec.description   = %q{Return your BMI and Best Wight.}
  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.12"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
  spec.add_development_dependency "guard"
  spec.add_development_dependency "guard-minitest"
end
