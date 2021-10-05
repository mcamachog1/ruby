$global_var ="GLOBAL"
non_global_var = "NON-GLOBAL"

def method1
	puts "Global variable is #{$global_var}"
end

def suma(a,b)
	a + b
end

method1


a = 5
b = 10
suma = suma(a,b)
puts "La suma de #{a} + #{b} es: #{suma}"
puts "Otra suma es 1 + 2: #{suma(1,2)}"