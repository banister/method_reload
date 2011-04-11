direc = File.expand_path(File.dirname(__FILE__))

require "method_source"
require "#{direc}/method_reload/version"

module MethodReload
  module MethodExtensions

    # Reload the code for the method from disk.
    # @example method
    #   method(:hello).reload
    # @example instance method
    #   instance_method(:goodbye)
    def reload
      owner.module_eval source, *source_location
    end
  end
end

class Method
  include MethodReload::MethodExtensions
end

class UnboundMethod
  include MethodReload::MethodExtensions
end
