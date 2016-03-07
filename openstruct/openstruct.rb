#!/usr/bin/env ruby

require 'ostruct'
require 'benchmark'

puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)

time = Benchmark.realtime do
  100_000.times { OpenStruct.new(foo: :bar) }
end

puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)

puts time.round(5)
