Jekyll::Hooks.register :site, :post_read do |site|
  # create a multi-level pages Hash, keyed off of directory/filename
  site.data['pages'] =
    site.pages
      .filter { |page| page.ext.eql?('.html') }
      .sort { |a, b| a.url <=> b.url }
      .reduce({}) do |pages, page|
        url = page.url
        url += page.name if page.index?
        pages.dig_assignment(*url.split('/')[1..], page)
        pages
      end
end
