#tipos de datos numericos
puts "\nInteger: "
n1 = 10
puts n1

puts "\nFloat: "
n2 = 3.14
puts n2

puts "\nRational: "
n3 = 0.75
puts n3.to_r

puts "\nBinario: "
n4 = 0b111
puts n4, n4.to_s(2)

puts "\nHexadecimal: "
n5 = 0xFF
puts n5, n5.to_s(16)

puts "\nOctal: "
n6 = 016
puts n6, n6.to_s(8)

puts "Convertir a tipos"
puts "Integer: ", Integer(15.50)

puts "Float: ", Float(1.0/2.0)
