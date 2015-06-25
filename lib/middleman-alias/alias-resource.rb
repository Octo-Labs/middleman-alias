module Middleman
  module Sitemap
    class AliasResource < ::Middleman::Sitemap::Resource

      attr_accessor :output

      def initialize(store, path, alias_resource)
        @alias_resource = alias_resource
        super(store, path)
      end

      def source_file
        nil
      end

      def template?
        false
      end

      def render(*args, &block)
        app.current_path = destination_path
        %[
          <html>
            <head>
              <link rel="canonical" href="#{app.url_for(@alias_resource)}" />
              <meta name="robots" content="noindex,follow" />
              <meta http-equiv="cache-control" content="no-cache" />
              <script>
                // Attempt to keep search and hash
                window.location.replace("#{app.url_for(@alias_resource)}"+window.location.search+window.location.hash);
              </script>
              <meta http-equiv=refresh content="0; url=#{app.url_for(@alias_resource)}" />
            </head>
            <body>
              <a href="#{app.url_for(@alias_resource)}">You are being redirected.</a>
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

