#!/usr/bin/env ruby

class Array
  def each!
    while count > 0
      yield(shift)
    end
  end
end

Array.new(10000).each! { |element| puts element.class }
