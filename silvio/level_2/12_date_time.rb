require 'date'

#crear objeto fecha año, mes, dia
fecha = Date.new(2008, 12, 22)
puts fecha

#crear objeto con la fecha actual
fecha = Date.today
puts fecha

#crear objeto fechahora actual
fecha = DateTime.now
puts fecha


puts fecha.day
puts fecha.month
puts fecha.year
puts fecha.strftime("%d/%m/%Y %H:%M:%S")

#lo mismo que DateTime (alias)
hora = Time.new(2011,11,5,8,30,59,"-04:00")
puts hora

hora = Time.now
puts hora
puts hora.strftime("%H:%M:%S")

