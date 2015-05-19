# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'geminabox/rake_tasks/version'

Gem::Specification.new do |spec|
  spec.name          = "geminabox-rake_tasks"
  spec.version       = Geminabox::RakeTasks::VERSION
  spec.authors       = ["nownabe"]
  spec.email         = ["nownabe@gmail.com"]

  spec.summary       = %q{To publish gems to your private gem in a box server instead of rubygems.org.}
  spec.homepage      = "https://github.com/nownabe/geminabox-rake_tasks"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.9"
  spec.add_dependency "geminabox"
  spec.add_dependency "rake", "~> 10.0"
end
