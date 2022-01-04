
milista=[12,47,35,56,76]

puts "esta es mi lista:" 
puts milista

puts "lista ordenada: " 
puts milista.sort

puts "lista reversada: " 
puts milista.reverse

puts "lista en orden inverso: "
puts milista.sort.reverse

puts "maximo de la lista: " + milista.max.to_s
puts "minimo de la lista: " + milista.min.to_s

# ¿ Existe algo como milista.promedio ? 
# Busqué en https://ruby-doc.org/core-3.0.2/Enumerable.html  
# a ver si conseguia algun metodo llamado  .media .average . avg y no encontre
# en tal caso ¿puedo yo hacerlo? una funcion creo que la podria hacer, ¿pero un metodo?
# tendría que hacerlo en una clase ¿?, en este caso la clase lista ¿? 
# ¿y eso se puede?

module CoreExtensions
  module Array
    module MathCalculations
      def average
        inject(&:+) / size
      end
    end
  end
end

Hash.include CoreExtensions::Hash::Merging

# Funcion para calcular el promedio
def myaverage (list)
	total=0.0
	list.each { |value|
		total += value
	}
	total/list.length  #aquí perdía los decimales
end


puts myaverage(milista)
# No necesita .to_s

puts "Promedio: " +  myaverage(milista).to_s
# Sí necesita .to_s


#Pero el promedio es 45,2
puts "Promedio con decimales: " +  myaverage(milista).to_f.to_s

puts "Promedio condicionado: " +  myaverage(milista).to_s if milista.length>5

