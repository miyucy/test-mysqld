# coding: utf-8
Gem::Specification.new do |spec|
  spec.name          = "test-mysqld"
  spec.version       = "0.0.1"
  spec.authors       = ["miyucy"]
  spec.email         = ["fistfvck@gmail.com"]
  spec.summary       = %q{port of Test::mysqld (mysqld runner for tests)}
  spec.description   = %q{port of Test::mysqld (mysqld runner for tests)}
  spec.homepage      = "http://github.com/miyucy/test-mysqld"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end
