$global_var = "GLOBAL"  
non_global_var = "NON-GLOBAL"
 
def method1 
  puts "Global variable is #$global_var"   
end 

def method2 
  puts "Non-global variable is ", non_global_var    
end 

method1
method2