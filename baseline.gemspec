$:.push File.expand_path('../lib', __FILE__)
require 'baseline/version'

Gem::Specification.new do |s|
  s.name          = 'baseline'
  s.version       = Baseline::VERSION
  s.license       = 'ISC'
  s.summary       = 'A Jekyll theme.'
  s.description   = 'A Jekyll theme.'
  s.authors       = ['David Susco']
  s.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(%r!^(_includes/|_javascript/|_layouts/|_sass/|lib/|LICENSE|README|_config\.yml)!)
  s.homepage      = 'https://github.com/dsusco/baseline'

  s.require_paths = ['lib']

  s.add_runtime_dependency 'jekyll', '~> 4.3.2'
  s.add_runtime_dependency 'jekyll-js-converter', '~> 1.0.0'

  s.add_development_dependency 'bundler'
  s.add_development_dependency 'rake'
  s.add_development_dependency 'rspec'
  s.add_development_dependency 'rubocop-jekyll', '~> 0.12.0'
  s.add_development_dependency 'sass'
end
