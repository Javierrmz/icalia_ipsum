# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'icalia_ipsum/version'

Gem::Specification.new do |spec|
  spec.name          = "icalia_ipsum"
  spec.version       = IcaliaIpsum::VERSION
  spec.authors       = ["Icalia Labs"]
  spec.email         = ["weare@icalialabs.com"]
  spec.description   = %q{An Icalia Labs ipsum generator}
  spec.summary       = %q{Generates paragraphs of best icalia phrases inspired in lorem ipsum format}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.rubyforge_project = "icalia_ipsum"
end
