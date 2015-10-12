# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'middleman-alias/version'

Gem::Specification.new do |spec|
  spec.name          = "middleman-alias"
  spec.version       = MiddlemanAlias::VERSION
  spec.authors       = ["Jeremy Green"]
  spec.email         = ["jeremy@octolabs.com"]
  spec.summary       = %q{Redirects for Middleman that are friendly to the Googles.}
  spec.description   = %q{Redirects for Middleman that are friendly to the Googles.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "middleman-core", ["~> 3.2","< 3.4.0"]

  spec.add_development_dependency "bundler", "~> 1.5"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "cucumber", "~> 2.1.0"
  spec.add_development_dependency "aruba",    "~> 0.5.1"
end
