# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sentiment/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Nikolai Manek"]
  gem.email         = ["niko.manek@gmail.com"]
  gem.description   = %q{A very simple to use sentiment analaysis tool}
  gem.summary       = %q{Sentiment analysis}
  gem.homepage      = "https://github.com/nikoma/sentiment"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "sentiment"
  gem.require_paths = ["lib"]
  gem.version       = Sentiment::VERSION  
  gem.add_runtime_dependency "httparty"
  gem.add_runtime_dependency "mash"
  gem.add_development_dependency "test/unit"
  gem.add_development_dependency "vcr"
  gem.add_development_dependency "webmock"
end
