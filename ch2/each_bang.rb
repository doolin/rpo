#!/usr/bin/env ruby

class Thing; end
list = Array.new(1000) { Thing.new }
puts ObjectSpace.each_object(Thing).count

list.each do |item|
  GC.start
  puts ObjectSpace.each_object(Thing).count
  # do something with the item
end

list = nil
GC.start
puts ObjectSpace.each_object(Thing).count
