#!/usr/bin/env ruby

require 'rubygems'
require 'active_record'

ActiveRecord::Base.establish_connection(
  adapter: 'postgresql',
  database: 'company_data'
)

class Empsalary < ActiveRecord::Base
  attr_accessor :rank
end

time = Benchmark.realtime do
  salaries = Empsalary.all.order(:department_id, :salary)

  key, counter = nil, nil
  salaries.each do |s|
    if s.department_id != key
      key, counter = s.department_id, 0
    end
    counter += 1
    s.rank = counter
  end
end

puts "Group rank with ActiveRecord: %5.3fs" % time
