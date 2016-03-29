#!/usr/bin/env ruby

require 'date'
require 'benchmark'

date = "2014-05-23"
time = Benchmark.realtime do
  100_000.times do
    Date.strptime(date, '%Y-%m-%d')
  end
end
puts "%.3f" % time
