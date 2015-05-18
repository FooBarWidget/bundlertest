# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "gem3"
  spec.version       = "1.0.0"
  spec.authors       = ["Hongli Lai (Phusion)"]
  spec.email         = ["hongli@phusion.nl"]

  spec.summary       = %q{Write a short summary, because Rubygems requires one.}
  spec.description   = %q{Write a longer description or delete this line.}
  spec.homepage      = "http://www.google.com"
  spec.extensions    = "extconf.rb"

  spec.files         = ["lib/gem3.rb"]
  spec.require_paths = ["lib"]
end
