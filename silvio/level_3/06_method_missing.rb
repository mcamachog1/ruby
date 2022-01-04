# El method_missing es llamado al invocar algun metodo que no se encuentra definido en la clase
# https://ruby-doc.org/core-3.0.2/BasicObject.html#method-i-method_missing
class Aircraft
  attr_accessor :passengers

  def initialize
    @passengers = 0
  end

  def method_missing(method_name, *args)
    message = "You called #{method_name} with #{args}. This method doesn't exist."
    puts message
  end
end

aircraft = Aircraft.new
aircraft.add_passengers(275)

# Caso practico, convertir romano a entero
# La clase solo posee el metodo method_missing,
# el cual es invocado cada vez llamado Roman.NumeroRomanoConvertir este recive el nombre del metodo
# como un string, para luego converirlo haciendo las operaciones de calculo
class Roman
  def self.method_missing(method_name, *args)
    roman = method_name.to_s
    roman.gsub!('IV', 'IIII')
    roman.gsub!('IX', 'VIIII')
    roman.gsub!('XL', 'XXXX')
    roman.gsub!('XC', 'LXXXX')
    return (
      roman.count('I') +
      roman.count('V') * 5 +
      roman.count('X') * 10 +
      roman.count('L') * 50 +
      roman.count('C') * 100
    )
  end
end
puts Roman.X    # 10
puts Roman.XC   # 90
puts Roman.XII  # 12
puts Roman.IX   # 9
puts Roman.III  # 3
