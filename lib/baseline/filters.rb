require 'baseline/filters/breadcrumb_filters'
require 'baseline/filters/string_filters'

module Baseline
  module Filters
    include BreadcrumbFilters
    include StringFilters
  end
end

Liquid::Template.register_filter(Baseline::Filters)
