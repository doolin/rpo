require "benchmark/ips"
require "ostruct"

class Foo
  attr_reader :a, :b, :c

  def initialize(a:, b:, c:)
    @a = a
    @b = b
    @c = c
  end
end

Bar = Struct.new(:a, :b, :c)

params_as_hash  = {a: "a", b: "b", c: "c"}
params_as_array = params_as_hash.values

Benchmark.ips do |bm|
  bm.report(:class) do
    Foo.new(params_as_hash)
  end

  bm.report(:struct) do
    Bar.new(params_as_array)
  end

  bm.report(:open_struct) do
    OpenStruct.new(params_as_hash)
  end

  bm.compare!
end
