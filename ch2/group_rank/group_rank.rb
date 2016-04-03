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


