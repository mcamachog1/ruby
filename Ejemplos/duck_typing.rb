class Duck  
  def quack  
    'Quack!'  
  end  
  
  def swim  
    'Paddle paddle paddle...'  
  end  
end  
  
class Goose  
  def honk  
    'Honk!'  
  end  
  def swim  
    'Splash splash splash...'  
  end  
end  
  
class DuckRecording  
  def quack  
    play  
  end  
  
  def play  
    'Quack!R'  
  end  
end  
  
def make_it_quack(duck)  
  duck.quack  
end

puts make_it_quack(Duck.new)  
puts make_it_quack(DuckRecording.new)  
  
def make_it_swim(duck)  
  duck.swim  
end  
puts make_it_swim(Duck.new)  
puts make_it_swim(Goose.new) 

#Pido una respuesta al objeto
#Dependiendo del objeto, la respuesta es diferente
#Si el objeto es duck y le pido duck.swin ==> Paddle
#Si el objeto es goose y le pido goose.swin ==> Splash
#La funcion que le pide 'hablar' recibe un objeto
#El objeto llama al método 'hablar' que está definido en las dos clases
#la respuesta depende de la clase que instancia el objeto