require_relative 'lib/baseline/version'

Gem::Specification.new do |spec|
  spec.name          = 'baseline'
  spec.version       = Baseline::VERSION
  spec.authors       = ['David Susco']
  spec.summary       = 'A Jekyll theme.'
  spec.homepage      = 'https://github.com/dsusco/baseline'
  spec.license       = 'MIT'

  spec.files         = `git ls-files`.split($INPUT_RECORD_SEPARATOR).grep(%r!^(_includes/|_javascript/|_layouts/|_sass/|lib/|LICENSE|README|_config\.yml)!)
  spec.require_paths = %w(lib)

  spec.required_ruby_version = '>= 2.4.0'

  spec.add_runtime_dependency 'jekyll', '~> 4.2.0'
  spec.add_runtime_dependency 'jekyll-js-converter', '~> 1.0.0'

  spec.add_development_dependency 'bundler'
  spec.add_development_dependency 'rake'
  spec.add_development_dependency 'rspec'
  spec.add_development_dependency 'rubocop-jekyll', '~> 0.4'
end
