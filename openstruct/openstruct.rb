#!/usr/bin/env ruby

require 'ostruct'
require 'benchmark'

require_relative 'accessor_overload'
require_relative 'accessor_overload_explicit'
require_relative 'wrapper'

=begin
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
time = Benchmark.realtime do
  100_000.times { OpenStruct.new(foo: :bar) }
end
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
puts time.round(5)


puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
time = Benchmark.realtime do
  100_000.times { AccessorOverload.new(foo: 'foo', bar: 'bar') }
end
puts "%d MB" % (`ps -o rss= -p #{Process.pid}`.to_i/1024)
puts time.round(5)
=end

measure do
  10_000_000.times { OpenStruct.new(foo: :foo, bar: :bar, baz: :baz) }
end

measure do
  10_000_000.times { AccessorOverload.new(foo: :foo, bar: :bar, baz: :baz) }
end

measure do
  10_000_000.times { AccessorOverloadExplicit.new(foo: :foo, bar: :bar, baz: :baz) }
end


