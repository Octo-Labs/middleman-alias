module Middleman
  module Sitemap
    class AliasResource < ::Middleman::Sitemap::Resource

      attr_accessor :output

      def initialize(store, path, alias_resource)
        @alias_resource = alias_resource
        super(store, path)
      end

      def source_file
        @alias_resource.source_file
      end

      def template?
        false
      end

      def render(*args, &block)
        new_url = ::Middleman::Util.url_for(@app, @alias_resource)
        %[
          <html>
            <head>
              <link rel="canonical" href="#{new_url}" />
              <meta name="robots" content="noindex,follow" />
              <meta http-equiv="cache-control" content="no-cache" />
              <script>
                // Attempt to keep search and hash
                window.location.replace("#{new_url}"+window.location.search+window.location.hash);
              </script>
              <meta http-equiv=refresh content="0; url=#{new_url}" />
            </head>
            <body>
              <a href="#{new_url}">You are being redirected.</a>
            </body>
          </html>
        ]
      end

      def binary?
        false
      end

      def raw_data
        @alias_resource.raw_data
      end

      def ignored?
        false
      end

      def metadata
        @alias_resource.metadata
      end


    end
  end
end
