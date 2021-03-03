require 'baseline/filters/breadcrumb_filters'

module Baseline
  module Filters
    include BreadcrumbFilters
  end
end

Liquid::Template.register_filter(Baseline::Filters)
