
# mutable
# el valor del objeto cambia (los datos), y sigue manteniendo el mismo object_id. Se considera mutable
s = "hello"
puts s.object_id # 70093096113460
s << ", world"
puts s.object_id # 70093096113460
s = s.upcase!
puts s.object_id # 70093096113460




#immutable
# el object_id no pueden cambiar al modificar el valor
num = 10
puts num.object_id # 70093095097920

num += 22
puts num.object_id # 70093096228400

# Al incrementar 22 en la variable num, esta cambia el object_id, es decir el objeto anterior no pudo cambiar, 
# se destruye y se crea uno nuevo para guardar la suma
