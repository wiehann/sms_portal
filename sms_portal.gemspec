# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'sms_portal/version'

Gem::Specification.new do |spec|
  spec.name          = "sms_portal"
  spec.version       = SmsPortal::VERSION
  spec.authors       = ["Wiehann Radyn"]
  spec.email         = ["wradyn@gmail.com"]
  spec.summary       = "Send SMS messages using SMSPortal"
  spec.homepage      = "https://github.com/wiehann/sms_portal"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.test_files    = spec.files.grep(%r{^(spec)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "httparty"

  spec.add_development_dependency "minitest", '~> 5.0'
  spec.add_development_dependency "mocha"
end
