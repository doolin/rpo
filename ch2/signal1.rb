#!/usr/bin/env ruby

class LargeObject
  def initialize
    @data = "x" * 1024 * 1024 * 20
  end
end

def do_something
  object = LargeObject.new
  trap("TERM") { puts object.inspect }
end

do_something
# force major GC to make sure we free al objects that can be freed
GC.start(full_mark: true, immediate_sweep: true)
puts "LargeObjects instances left in memory: %d" %
  ObjectSpace.each_object(LargeObject).count
