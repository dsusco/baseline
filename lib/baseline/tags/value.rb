module Baseline
  module Tags
    class ValueTag < Liquid::Tag
      def render (context)
        page = context.registers[:page]
        site = context.registers[:site]
        layout = site.layouts[page['layout']]
        key, default = @markup.strip.match(/^'([^']*)'(?:\s+'([^']*)')?$/).captures

        page[key] || layout.data[key] || site.config[key] || default
      end
    end
  end
end
