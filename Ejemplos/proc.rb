# Blocks are not objects  
# they can be converted into objects of class Proc by calling lambda method  

myproc = lambda {puts 'Hello'}  
# method call invokes the block  
myproc.call  
  
# another example  
toast = lambda do  
  'Cheers'  
end  
puts toast.call  

# con parametros  
a_Block = lambda { |x| "Hello #{x}!" }  
puts a_Block.call 'World'  
# output is: Hello World!  

# con parametros  
saludar = lambda do |nombre| 
  "Hello #{nombre}!" 
end

puts saludar.call "Maryvi"
#puts a_Block.call 'Maryvi'  
# output is: Hello Maryvi!  