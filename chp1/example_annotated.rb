#!/usr/bin/env ruby

require 'benchmark'

num_rows = 100_000
num_cols = 10
data = Array.new(num_rows) { Array.new(num_cols) { 'x' * 1000 } }

puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)

GC.disable
time = Benchmark.realtime do
  csv = data.map do |row|
    row.join(",")
  end.join("\n")
end

puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
puts time.round(2)
