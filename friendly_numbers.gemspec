# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'friendly_numbers/version'

Gem::Specification.new do |spec|
  spec.name          = "friendly_numbers"
  spec.version       = FriendlyNumbers::VERSION
  spec.authors       = ["Adam Daniels"]
  spec.email         = ["adam@mediadrive.ca"]

  spec.summary       = %q{Friendly number helpers for your non-Rails/Padrino apps.}
  spec.description   = <<-EOM
  Friendly number helpers without the mess. Working on a Roda or Sinatra application
  and want to format a number into a currency or friendly file size? Got you covered.

  Rails-like helpers for number_to_currency and number_to_human_size
  EOM
  spec.homepage      = "https://github.com/adam12/friendly_numbers"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"
end
