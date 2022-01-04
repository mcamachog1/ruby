# Un bloque es un fragmento de código anonimo que acepta argumentos y devuelve un valor. Un bloque siempre se pasa a una llamada a un método.
# Inicia con do y termina con end, alternativamente al do y end, se pueden usar llaves { } respectivamente para la forma inline

5.times do
    puts "Oh, hello!"
end

# nomenclatura inline
5.times { puts "hello!" }

#recepcion de parametro, el metodo each en cada iteracion pasa el valor en el indice, se recibe en la variable local |number|
[1, 2, 3, 4, 5].each do |number|
    puts "#{number} was passed to the block"
end

#inline
[1, 2, 3, 4, 5].each { |number| puts "#{number} was passed to the block" }


#el metodo select (en el bloque) debe retornar true o false para seleccionar el elemento en el recorrido. EL resultado final se retorna array
p [1, 2, 3, 4, 5].select { |number| number.odd? }


#parametros multiples en el bloque |value, index|
["A", "B", "C", "D", "E"].each_with_index do |value, index|
    puts value + " index #{index}"
end


#YIELD
def print_once
    yield
end
  
print_once { puts "Block is being run" }
print_once do
    puts "Block is being run"    
end 

#YIELD con parametros
def one_two_three
    yield 1
    yield 2
    yield 3
end
one_two_three { |number| puts number * 10 }

#BLOQUES EXPLICITOS
def explicit_block(&block)
    block.call # same as yield
end
explicit_block { puts "Explicit block called" }


#LAMBDA
#Es otra forma de definir un bloque, asignandolo a una variable
say_something = -> { puts "This is a lambda" }
say_something.call

say_something2 = -> do 
    puts "This is a lambda 2"
end
say_something2.call

#pasando argumentos
times_two = ->(x) { x * 2 }
times_two.call(10)



