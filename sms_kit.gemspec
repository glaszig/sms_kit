# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sms_kit/version'

Gem::Specification.new do |spec|
  spec.name          = "sms_kit"
  spec.version       = SmsKit::VERSION
  spec.authors       = ["glaszig"]
  spec.email         = ["glaszig@gmail.com"]
  spec.description   = %q{SMSKit}
  spec.summary       = %q{Easily send text messages through SMS over HTTP providers}
  spec.homepage      = ""
  spec.license       = "All rights reserved"

  spec.files         = Dir['{lib,test}/**/*'] + ['README.md', 'Rakefile']
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "minitest", "~> 5.9.0"
  spec.add_development_dependency "webmock", "~> 2.1.0"
  spec.add_development_dependency "vcr", "~> 3.0.0"

  spec.add_dependency "faraday", "~> 0.9.0"
end
