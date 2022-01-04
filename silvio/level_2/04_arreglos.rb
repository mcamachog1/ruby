#crear array vacio de tamaño 5
arreglo = Array.new 5
p arreglo


#crear array vacio de tamaño 5, con valor default
arreglo = Array.new 5, "hola"
p arreglo

#asignar un valor en alguna posicion del array
arreglo[1] = "hi!!!"
p arreglo

#agregar  un valor al final del array
arreglo = [1, 2, 3]
arreglo << 4
p arreglo

arreglo.push(5)
p arreglo

arreglo.push(6,7,8)
p arreglo

arreglo.append(9,10)
p arreglo

#quitar y retornar el valor removido
p arreglo.pop
p arreglo

p arreglo.shift
p arreglo

#borrar elemento por valor
p arreglo.delete(3)
p arreglo

#borrar elemento por indice
p arreglo.delete_at(0)
p arreglo

#quitar elementos de otro array
#Retorna: [1]
arreglo = [1, 2, 2, 2, 3]
arreglo = arreglo - [2, 3]
p arreglo

#union / concatenacion
#retorna: [1, 2, 3, 4, 5, 6]
p [1,2,3]+[4,5,6]
p [1,2,3].concat([4,5,6])

#fusion (deja solo 1 valor, no los repite)
#Retorna: [1, 2, 3, 4, 6]
p [1,2,3] | [2,3,4,6]

#interseccion (deja los comunes en ambos)
#Retorna: [3]
p [1,2,3] & [3,4]

#multiplicacion
#Retorna: [1, 2, 3, 1, 2, 3]
p [1,2,3]*2

#Retorna: [[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]]
p [1,2,3].permutation.to_a

#retorna un array con los elementos seleccionados por el condicional 
#Retorna: [4, 5, 6]
array = [1, 2, 3, 4, 5, 6]
p (array.select { |number| number > 3 } )

#Verifica (true or false) si el array incluye un valor
#Retorna true
array = [1, 2, 3, 4, 5, 6]
p array.include?3

#Ordena un array, el ! indica que los cambios son aplicados sobre el array, si no lo lleva se retorna el array ordenado y no cambia la variable original
arreglo = [10, 50, -20, -5, 80, 6]
arreglo.sort!
p arreglo

#Ordena en forma descendente
arreglo.reverse!
p arreglo

