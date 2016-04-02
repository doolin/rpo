#!/usr/bin/env ruby

require 'bigdecimal'
require 'benchmark'

x = BigDecimal("10.2")
time = Benchmark.realtime do
  100_000.times do
    x == "10.2"
  end
end
puts time
