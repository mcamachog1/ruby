#condicionales if/else/elsif
puts "if/else/elsif: ";
a = 10

if a < 0 then 
    puts "Valor Negativo"
elsif a >=0 and a < 20 then 
    puts "Valor entre [0 y 20)";
elsif a >=20 and a < 30 then
    puts "Valor entre [20 y 30)";
else
    puts "Valor >=30"
end

#ejecuta el print si se cumple la conficion
puts "#{a} esta entre [0, 20)" if a >=0 and a < 20


#operadores ternarios
puts "\n\nTernary Operator: "
puts (a >=0 and a < 20) ? "Valor entre [0 y 20)" : "No se cumple"



#CASE
puts "\n\nCASE: ";
color = "green"

result = case color
    when "red"     then "rojo"
    when "green"   then "verde"
    when "gray"    then "gris"
    when "blue"    then "azul"
end

puts "El color es: " + color


#LOOPS
puts "\n\nBUCLES"
#while
puts "WHILE: "
i = 0
while i < 5 do
    puts i
    i += 1
end

#until
puts "UNTIL: "
i = 0
until i == 5 do
    puts i
    i += 1
end

puts "INLINE UNTIL"
i = 0
puts "Imprimir " + (i += 1).to_s + " hasta que sea 5." until i == 5

#for in
puts "For in range: "
for i in 1..8 do
    puts i
end

puts "For in array: "
a = [20, 30, 40, 50, 60]
for i in a do
    puts i
end


#metodos para iterar
2.times do |n|
    local_var = n + 1
    p local_var
end

c = 3
c.times do |n|
    local_var = n + 1
    p local_var
end

frutas = ["mango", "mandarina", "cuyaco"]
frutas.each do |fruta|
    puts fruta
end

frutas = ["mango", "mandarina", "cuyaco"]
frutas.each_with_index do |fruta, i|
    puts fruta + " index #{i}"
end

1.upto(5) do |i| 
    puts i
end