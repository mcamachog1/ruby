=begin
  Ruby program to check the Class of an object
=end

class Student
 def name
  puts "Hrithik"
 end
end

Obj1 = Student.new
Obj2 = "Includehelp.com"
Obj3 = 12

puts "The class of Obj1 is #{Obj1.class}"
puts "The class of Obj2 is #{Obj2.class}"
puts "The class of Obj3 is #{Obj3.class}"

if (Obj1.is_a?(Student) == true)
  puts "Obj1 is of Student class"
end

if (Obj2.is_a?(String) == true)
  puts "Obj2 is of String class"
end