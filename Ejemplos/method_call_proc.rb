=begin  
  You cannot pass methods into other methods (but you can pass procs into methods),  
  and methods cannot return other methods (but they can return procs)  
=end  
  
def some_mtd some_proc  
  puts 'Start of mtd'  
  some_proc.call  
  puts 'End of mtd'  
end  
  
say = lambda do  
  puts 'Hello'  
end  

saludar = lambda do |nombre|
  puts "Hola #{nombre}"
end
  
some_mtd say 
#saludar.call 'Maryvi'


#Metodo que llama a un proc que recibe un parametro
def some_mtd2 (some_proc, param_1)
  puts 'Start of mtd2'  
  some_proc.call  param_1
  puts 'End of mtd2'  
end  

some_mtd2 saludar, "Maryvi" 