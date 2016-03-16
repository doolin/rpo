#!/usr/bin/env ruby

require 'csv'
require_relative './wrapper'

measure do
  CSV.read('data.csv')
end
