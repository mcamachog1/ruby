#crea un rango del 1 al 10
r1 = (1..10)
puts r1.to_a

#crea un rango del 1 al 9
r2 = (1...10)
puts r2.to_a


#crea un rango desde aa, ab, ac, hasta ... zz
r3 = ('aa'..'zz')
puts r3.to_a

#verificar si el rango incluye bb
puts r3.include?'bb'
puts r3==='bb'


#valor min y max del rango
r4 = (100..500)
puts r4.min
puts r4.max

#convertir un rango a un array
arreglo = r1.to_a
puts arreglo