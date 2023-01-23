require 'baseline/tags/value'

module Baseline
  module Tags
  end
end

Liquid::Template.register_tag('value', Baseline::Tags::ValueTag)
