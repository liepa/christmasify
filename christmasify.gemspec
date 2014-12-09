# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'christmasify/version'

Gem::Specification.new do |spec|
  spec.name          = "christmasify"
  spec.version       = Christmasify::VERSION
  spec.authors       = ["Jānis Liepa"]
  spec.email         = ["janis-liepa@inbox.lv"]
  spec.summary       = %q{ Adds santas hat to logo }
  spec.description   = %q{ Adds santas hat to logo }
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
end
