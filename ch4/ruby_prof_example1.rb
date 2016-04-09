#!/usr/bin/env ruby

require 'date'
require 'rubygems'
require 'ruby-prof'

GC.disable

RubyProf.start
Date.parse("2014-07-01")
result = RubyProf.stop


printer = RubyProf::FlatPrinter.new(result)
printer.print(STDOUT, {})
printer.print(File.open("ruby_prof_example_api1.txt", "w+"), {})
