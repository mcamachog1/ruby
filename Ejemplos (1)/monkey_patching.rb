
require 'C:\Ruby27-x64\lib\core_extension\array\average.rb'

Array.include CoreExtensions::Array::MathCalculations

milista=[12,47,35,56,76]
milista.average

puts milista
puts milista.average

otralista = ["a","b","c","d"]
puts otralista
puts otralista.average
