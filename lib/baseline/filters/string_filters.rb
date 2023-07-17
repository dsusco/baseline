module Baseline
  module Filters
    module StringFilters
      def underscore(input, mode: nil)
        Jekyll::Utils.slugify(input, :mode => mode).gsub('-', '_')
      end
    end
  end
end
