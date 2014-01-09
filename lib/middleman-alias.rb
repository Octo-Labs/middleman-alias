require 'middleman-core'
require "middleman-alias/version"
require "middleman-alias/commands"

::Middleman::Extensions.register(:alias) do
  require 'middleman-alias/extension'
  ::Middleman::AliasExtension
end

#module Middleman
  #module Alias
    ## Your code goes here...
  #end
#end
