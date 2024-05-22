begin
  if Jekyll
    require 'hash'

    require 'baseline/filters'
    require 'baseline/hooks'
    require 'baseline/tags'

    require 'baseline-scss'
  end
rescue
end

module Baseline
end
