# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'capistrano-getservers/get_servers'

Gem::Specification.new do |gem|
  gem.name          = "capistrano-getservers"
  gem.version       = '2.0.0'
  gem.authors       = ["Alfred Moreno"]
  gem.email         = ["alfred.moreno@zumba.com"]
  gem.description   = %q{A capistrano plugin for simplifying deployment processes to rackspace or amazon ec2}
  gem.summary       = %q{A capistrano plugin for simplifying dynamic deployment processes to rackspace or amazon ec2}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_dependency 'capistrano', '>=3.0.0'
  gem.add_dependency 'fog', '>=1.5.0'
  gem.add_dependency 'rake'

  gem.license       = 'MIT'
end
