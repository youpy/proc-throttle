# -*- encoding: utf-8 -*-
require File.expand_path('../lib/proc-throttle/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["youpy"]
  gem.email         = ["youpy@buycheapviagraonlinenow.com"]
  gem.description   = %q{Proc#throttle: throttling calls}
  gem.summary       = %q{A library to add Proc#throttle for throttling calls}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "proc-throttle"
  gem.require_paths = ["lib"]
  gem.version       = '0.0.1'
end
