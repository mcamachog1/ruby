# Bloque basico para manejar excepciones
begin
  IO.sysopen('/dev/null')
rescue
  puts "Can't open IO device."
end

# Manejando multiples excepciones segun el tipo de error que se ocurre
begin
  IO.sysopen('/dev/null')
rescue Errno::ENOENT
  puts 'File not found.'
rescue Errno::EACCES
  puts 'Insufficient permissions, not allowed to open file.'
end

# StandardError class
begin
  IO.sysopen('/dev/null')
rescue StandardError => e # Se puede colocar la clase Excepcion, pero rubocop recomiento usar la clase StandardError para tener informacion mas detallada
  puts 'Mensajes desde StandardError';
  puts e.message
  puts e.backtrace.inspect
end

# Excepcion dentro del llamado de un metodo
['a.txt', '02_block.rb', 'c.txt'].map do |f|
  IO.sysopen(f)
rescue Errno::ENOENT
  puts "Can't open IO device: #{f}."
end

