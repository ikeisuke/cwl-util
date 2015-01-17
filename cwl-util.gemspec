# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'cwl/util/version'

Gem::Specification.new do |spec|
  spec.name          = "cwl-util"
  spec.version       = Cwl::Util::VERSION
  spec.authors       = ["szkkentaro"]
  spec.email         = ["szk.kentaro@gmail.com"]
  spec.summary       = %q{CloudWatchLogs Utility}
  spec.description   = %q{Grep message in cloudwatch log streams of a cloudwatch group.}
  spec.homepage      = "https://github.com/szkkentaro/cwl-util"
  spec.license       = "apache2.0"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"

  spec.add_dependency "aws-sdk-core", "~> 2.0"
  spec.add_dependency "thor", "~> 0"
  spec.add_dependency "io-console", "~> 0"
end
