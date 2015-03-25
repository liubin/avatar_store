# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'avatar_store/version'

Gem::Specification.new do |spec|
  spec.name          = "avatar_store"
  spec.version       = AvatarStore::VERSION
  spec.authors       = ["bin"]
  spec.email         = ["liubin0329@gmail.com"]
  spec.summary       = %q{helper methods for avatarstore.org}
  spec.description   = %q{helper methods for http://avatarstore.org, the free, simple avatar holding service}
  spec.homepage      = "https://github.com/liubin/avatar_store"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "bundler", "~> 1.7"
  spec.add_dependency "rake", "~> 10.0"
  spec.add_dependency "rspec"

end
