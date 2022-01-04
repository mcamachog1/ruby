# Duck Typing
# http://rubytutorial.wikidot.com/duck
# Comprobamos qué objetos responden al método t_str 
puts ('Una cadena'.respond_to? :to_str)   # => true  
puts (Exception.new.respond_to? :to_str)  # => true  
puts (4.respond_to? :to_str) # => false
# Este ejemplo, es una forma simple de la filosofía "Duck Typing": si un objeto hace quack como un pato (o actúa como un string), 
# pues trátalo como un pato (o como una cadena). Siempre hay que tratar a los objetos por lo que pueden hacer, 
# mejor que hacerlo por las clases de las que proceden o los módulos que incluyen.

# ¡Tratémoslos como patos!
class Pato  
    def quack  
      'Quack!'  
    end  
   
    def nadar  
      'Paddle paddle paddle...'  
    end  
  end  
   
  class Ganso  
    def honk  
      'Honk!' # onomatopia de un pato  
    end  
    def nadar  
      'Splash splash splash...'  
    end  
  end  
   
  class GrabadoraDePatos
    def quack  
      play  
    end  
   
    def play  
      'Quack!'  
    end  
  end  
   
  # En este método, la Grabadora
  # se comporta como un Pato  
  def haz_quack(pato)  
    pato.quack 
  end  
  puts haz_quack(Pato.new)  
  puts haz_quack(GrabadoraDePatos.new)  
   
  # Para este método, el Ganso
  # se comporta como un Pato
  def haz_nadar(pato)  
    pato.nadar  
  end  
  puts haz_nadar(Pato.new)  
  puts haz_nadar(Ganso.new)