module Baseline
  if defined?(Jekyll)
    require 'hash'

    require 'baseline/filters'
    require 'baseline/hooks'
    require 'baseline/tags'

    require 'baseline-scss'
  elsif defined?(Rails) && defined?(Rails::Engine)
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

    begin
      require 'sassc'

      SassC.load_paths << File.expand_path('../_sass', __dir__)
    rescue LoadError
    end
  end
end
