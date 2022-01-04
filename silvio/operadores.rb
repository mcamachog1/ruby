puts "\n\nOPERADORES COMPARACION: "
a = 10
b = 3
c = 3

puts "a=#{a} b=#{b}"
puts "a > b = ",a > b
puts "a < b = ",a < b
puts "a >= 10 ",a>=10
puts "a <= 10",a<=10
puts "a != b",a!=b
puts "a == b",a==b
puts "a <=> 10",a<=>10
puts "a <=> 5",a<=>5
puts "a <=> 15",a<=>15

puts "\n\nOPERADORES A NIVEL DE BITS: "

a=0b1111
b=0b1100

puts "AND (" + a.to_s(2) + " & " + b.to_s(2) + "): "
puts (a&b).to_s(2)

puts "OR (" + a.to_s(2) + " | " + b.to_s(2) + "): "
puts (a|b).to_s(2)

puts "XOR (" + a.to_s(2) + " ^ " + b.to_s(2) + "): "
puts (a^b).to_s(2)

puts "COMPLEMENTO (~" + a.to_s(2) + "): "
puts (~a).to_s(2)

puts "DESPLAZAMIENTO DE 2 A LA IZQ (" + a.to_s(2) + "<<2): "
puts (a<<2).to_s(2)

puts "DESPLAZAMIENTO DE 2 A LA DER (" + a.to_s(2) + ">>2): "
puts (a>>2).to_s(2)
