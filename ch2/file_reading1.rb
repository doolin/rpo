require_relative './wrapper'

measure do
  File.read("data.csv")
end
