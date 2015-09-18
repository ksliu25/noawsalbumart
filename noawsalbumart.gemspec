# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'noawsalbumart/version'

Gem::Specification.new do |spec|
  spec.name          = "noawsalbumart"
  spec.version       = Noawsalbumart::VERSION
  spec.authors       = ["Kenneth Liu"]
  spec.email         = ["ksliu25@gmail.com"]

  spec.summary       = %q{Provided an artist and an album name, noawsalbumart scrapes for amazon album art.}
  spec.description   = %q{This mainly started as an exercise in using Nokogiri and an alternative to having an AWS account for the Amazon Album Art gem.}
  spec.homepage      = "TODO: Put your gem's website or public repo URL here."
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "nokogiri", ">= 1.6.6"

  spec.add_dependency "nokogiri"
end
