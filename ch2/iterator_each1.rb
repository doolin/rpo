#!/usr/bin/env ruby

GC.disable
before = ObjectSpace.count_objects

Array.new(10000).each do |i|
  [0, 1].each do |j|
  end
end

after = ObjectSpace.count_objects

puts "# of arrays: %d" % (after[:T_ARRAY] - before[:T_ARRAY])
puts "# of nodes: %d" % (after[:T_NODE] - before[:T_NODE])
