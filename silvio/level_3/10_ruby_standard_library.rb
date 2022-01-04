# Ruby Standard Library
# Es la libreria default con la funcionalidades basicas del lenguaje.
# https://ruby-doc.org/stdlib-3.0.2/

# Para incluir nuevas funcionalidades se debe usar require 'paquete'
require 'digest'
puts Digest::SHA2.hexdigest('123456')
# Este require esta fuera del Standard Library
