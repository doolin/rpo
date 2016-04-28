#!/usr/bin/env ruby

# From Honeybadger:
# http://blog.honeybadger.io/how-openstruct-and-hashes-can-kill-performance/


require 'benchmark/ips'
require 'ostruct'

data = { x: 100, y: 200 }

PointStruct = Struct.new(:x, :y)

class PointClass
  attr_accessor :x, :y
  def initialize(args)
    @x = args.fetch(:x)
    @y = args.fetch(:y)
  end
end

puts "\n\nINITIALIZATION =========="

Benchmark.ips do |x|
  x.report("PointStruct") { PointStruct.new(100, 200) }
  x.report("PointClass") { PointClass.new(data) }
  x.report("Hash") { Hash.new.merge(data) }
  x.report("OpenStruct") { OpenStruct.new(data) }
end

puts "\n\nREAD =========="

point_struct = PointStruct.new(100, 200)
point_class = PointClass.new(data)
point_hash = Hash.new.merge(data)
point_open_struct = OpenStruct.new(data)

Benchmark.ips do |x|
  x.report("PointStruct") { point_struct.x }
  x.report("PointClass") {  point_class.x }
  x.report("Hash") { point_hash.fetch(:x) }
  x.report("OpenStruct") {  point_open_struct.x }
end


puts "\n\nWRITE =========="

Benchmark.ips do |x|
  x.report("PointStruct") { point_struct.x = 1 }
  x.report("PointClass") {  point_class.x = 1 }
  x.report("Hash") { point_hash[:x] = 1 }
  x.report("OpenStruct") {  point_open_struct.x = 1 }
end
