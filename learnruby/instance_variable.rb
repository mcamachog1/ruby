class Employee   
    def initialize(name)   
       @employee_name = name     
    end   
   
    def print()   
      puts "Employee name: #{@employee_name}"   
    end   
 end   
 
 # Create Objects   
 e1 = Employee.new("Emma")   
 e2 = Employee.new("David") 
 e3 = Employee.new("Harris") 
   
 # Call Methods   
 e1.print()   
 e2.print()   
 e3.print()  