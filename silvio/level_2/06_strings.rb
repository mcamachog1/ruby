cadena1 = "Hola"
cadena2 = "Mundo"

#tipo de datos
p cadena1.class

#concatenacion
p cadena1 + " " + cadena2
p cadena1 << " " << cadena2
p cadena1.concat(" ").concat(cadena2)




#comparacion
p "COMPARACION: "
cadena1 = "12xs"
cadena2 = "12xs"
cadena3 = "12XS"

p cadena1 == cadena2
p cadena1 != cadena2
p cadena1.eql? cadena2      #igual, lo mismo que ==
p cadena1.equal? cadena2    #identico (mismo string en memoria)
p cadena1.equal? cadena1 
p cadena1.casecmp cadena3   #retorna 0 si son iguales, sin distincion de mayuscula minusculas



#substring
p "SUBSTRING: "
cadena1="Hola Mundo!!!"
p cadena1[5,3]     #Mun            Por 1era posicion y cantidad de letras
p cadena1[5..9]    #Mundo          Por Rango
p cadena1[0..-2]   #Hola Mundo!!   Por Rango

#caracter
p cadena1[3]
p cadena1[3].chr

#indice
p "INDICE: "
p cadena1.index("Mundo")
p cadena1.index("o")


#reemplazo
p "REEMPLAZO Y SUSTITUCION"
cadena1 = "Hola Mundo!!!"
cadena1["Mundo"]= "que tal"
p cadena1

cadena1.replace "xxxxx"
p cadena1

cadena1 = "Bienvenido a PHP 8"
cadena1.gsub!("PHP 8","Ruby 3")
p cadena1

#insertando
p "INSERCION"
cadena1 = "Bienvenido a PHP 8"
cadena1.insert 11, "Carlos Pinto, "
p cadena1


#Limpiar cadena al inicio y al final (trim)
cadena1 = "  Bienvenido a Ruby  \n"
cadena1.strip!
p cadena1
