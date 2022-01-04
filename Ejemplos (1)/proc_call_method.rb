=begin  
  Un proc puede llamar a un metodo  
=end  
  
def say_hello name  
  "Hello #{name}"  
end  
  
say = lambda do  
  |nombre|
  puts say_hello nombre  
end  

say.call 'Maryvi'