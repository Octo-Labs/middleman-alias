require 'middleman-core/cli'

module Middleman
  module Cli
    # This class provides an "article" command for the middleman CLI.
    class AliasGenerator < Thor
      include Thor::Actions

      check_unknown_options!

      namespace :alias_template

      def self.source_root
        ENV['MM_ROOT']
      end

      # Tell Thor to exit with a nonzero exit code on failure
      def self.exit_on_failure?
        true
      end

      desc "alias_template", "Create a new template to handle alias redirects"
      
      def alias_template
        source_root = ENV['MM_ROOT']
        template_sub_path = "source/alias.html.erb"
        template_filename = "#{source_root}/#{template_sub_path}"
        FileUtils.cp "#{File.dirname(__FILE__)}/template/source/alias.html.erb", template_filename
        puts "Alias template generated in #{template_sub_path}"
      end
    end
  end
end
