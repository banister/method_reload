direc = File.dirname(__FILE__)

require 'rubygems'
require "#{direc}/../lib/method_reload"
require 'bacon'

puts "Testing method_reload version #{MethodReload::VERSION}..." 
puts "Ruby version: #{RUBY_VERSION}"

describe MethodReload do
end

