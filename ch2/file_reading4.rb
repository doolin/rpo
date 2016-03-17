#!/usr/bin/env ruby

require 'csv'
require_relative './wrapper'

measure do
  file = File.open('data.csv', 'r')
  while line = file.gets
    line.split(",")
  end
end
