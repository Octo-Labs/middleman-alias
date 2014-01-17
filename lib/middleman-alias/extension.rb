require 'middleman-core'

module Middleman
  class AliasExtension < Middleman::Extension
    def initialize(app, options_hash={}, &block)
      super
    end

    def manipulate_resource_list(resources)
      resources.each do |resource|
        if resource.data["alias"]
          alias_url = resource.data["alias"]
          alias_url += "/index.html" if alias_url.match(/\/$/)
          Sitemap::Resource.new(@app.sitemap, alias_url).tap do |p|
            p.proxy_to("alias.html")
            p.add_metadata locals: {
              destination: resource.url
            }
            resources.push p
          end
        end
      end
      resources
    end

  end
end
