require 'middleman-core'
require "middleman-alias/version"

::Middleman::Extensions.register(:alias) do
  require 'middleman-alias/extension'
  ::Middleman::AliasExtension
end

#module Middleman
  #module Alias
    ## Your code goes here...
  #end
#end
