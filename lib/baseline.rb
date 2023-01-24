module Baseline
  if defined?(Jekyll)
    require 'hash'

    require 'baseline/filters'
    require 'baseline/hooks'
    require 'baseline/tags'
  end

  if defined?(Rails) && defined?(Rails::Engine)
    class Engine < ::Rails::Engine
      initializer 'baseline.paths', group: :all do |app|
        app.config.assets.paths << File.expand_path('../_sass', __dir__)
      end
    end
  else
    begin
      require 'sass'

      Sass.load_paths << File.expand_path('../_sass', __dir__)
    rescue LoadError
    end
  end
end
