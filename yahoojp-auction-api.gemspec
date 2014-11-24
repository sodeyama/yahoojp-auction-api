# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'yahoojp/api/version'

Gem::Specification.new do |spec|
  spec.name          = "yahoojp-auction-api"
  spec.version       = Yahoojp::Api::VERSION
  spec.authors       = ["sodex"]
  spec.email         = ["ta.sode@gmail.com"]
  spec.description   = %q{Yahoo Auction JP Ruby API}
  spec.summary       = %q{Yahoo Auction JP Ruby API}
  spec.homepage      = "https://github.com/sodeyama/yahoojp-auction-api"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "vcr"
  spec.add_development_dependency "webmock", "1.11.0"
end
