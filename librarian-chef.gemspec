# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'librarian/chef/version'

Gem::Specification.new do |gem|
  gem.name          = "librarian-chef"
  gem.version       = Librarian::Chef::VERSION
  gem.authors       = ["Jay Feldblum"]
  gem.email         = ["y_feldblum@yahoo.com"]
  gem.summary       = %q{A Bundler for your Chef Cookbooks.}
  gem.description   = %q{A Bundler for your Chef Cookbooks.}
  gem.homepage      = ""
  gem.license       = "MIT"

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency "librarian", "~> 0.1.0"
  gem.add_dependency "chef", ">= 0.10"
  gem.add_dependency "minitar", ">= 0.5.2"

  gem.add_development_dependency "rake"
  gem.add_development_dependency "rspec"
  gem.add_development_dependency "webmock"
end
