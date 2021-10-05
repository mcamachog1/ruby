class Employee
	@@no_of_employees = 0
	def initialize(name)
		@employee_name = name
		@@no_of_employees += 1
	end

	def print()
		puts "Employee name: #{@employee_name}"
	end

	def total_no_of_employees()
		puts "Total number of employees: #{@@no_of_employees}"
	end

end

e1 = Employee.new("Emma")
e1.total_no_of_employees()
e2 = Employee.new("David")
e2.total_no_of_employees()
e3 = Employee.new("Harris")
e3.total_no_of_employees()

e1.print()
e2.print()
e3.print()

e1.total_no_of_employees()
e2.total_no_of_employees()
e3.total_no_of_employees()