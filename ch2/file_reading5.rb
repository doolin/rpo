#!/usr/bin/env ruby

require 'csv'
require_relative 'wrapper'

measure do
  file = CSV.open('data.csv')
  while line = file.readline
  end
end
