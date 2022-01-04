#definicion de una clase
class BancoCuenta
    #construcctor
    def initialize (nombre="", nro="", tasa=0)
        @nombre_titular = nombre
        @numero = nro
        @@tasa_interes = tasa
    end

    def mostrar
        puts "Datos de la Cuenta: "
        puts "Cuenta #: " + numeroCuenta
        puts "Titular: " + self.titular #opcionalmente se puede usar self para referenciar algun metodo de la clase
        puts "Tasa interes = " + tasaInteres.to_s
    end

    #Metodo para asigna el valor a la variable de la clase
    def titular=(nombre)
        @nombre_titular = nombre
    end

    #Metodo para retorna el valor de la variable
    def titular
        @nombre_titular
    end

    def numeroCuenta=(nro)
        @numero = nro
    end

    def numeroCuenta
        @numero
    end

    def tasaInteres=(v)
        @@tasa_interes = v
    end

    def tasaInteres
        @@tasa_interes
    end

end


#crear objeto de la clase
puts "\n\n";
cuenta1 = BancoCuenta.new
cuenta1.tasaInteres = 2.0
cuenta1.numeroCuenta = "123456"
cuenta1.titular = "Mary"
cuenta1.mostrar

puts "\n\n";
cuenta2 = BancoCuenta.new
cuenta2.tasaInteres = 10.0
cuenta2.numeroCuenta = "789456"
cuenta2.titular = "Juana"
cuenta2.mostrar

#Object initialization
puts "\n\n";
cuenta3 = BancoCuenta.new("Pepe","55555",16.00)
cuenta3.mostrar


#Instance variables
#La variable @@tasa_interes se modifica en la clase, por tanto se mantiene el mismo valor para todas las instancias de la clase
#El @@ es el equivalente en php a una variable static
puts "Tasa interes cuentas"
puts cuenta1.tasaInteres #aca la tasa de interes pasa a ser 10.0




#Herencia
puts "\n\nHerencia: ";
class BancoCuentaTipo < BancoCuenta

    def initialize (nombre="", nro="", tasa=0, tipo="Ahorro")
        @tipo = tipo
        #llama al constructor de la clase padre
        super(nombre, nro, tasa)
    end

    def tipoCuenta=(v)
        @tipo = v
    end

    def tipoCuenta
        @tipo
    end

    def mostrar  
        #llama al metodo mostrar de la clase padre 
        super
        puts "Tipo = " + tipoCuenta
    end
end

cuenta4 = BancoCuentaTipo.new("Jose","66666C",8,"Corriente")
cuenta4.mostrar
