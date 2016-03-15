#!/usr/bin/env ruby

require_relative 'wrapper'

measure do
  File.readlines('data.csv').map { |line| line.split(",") }
end
