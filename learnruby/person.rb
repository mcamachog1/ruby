class Person
  def initialize(name)
    @name = name
  end
  def name
    @name
  end
  def password=(password)
    @password = password
  end
  def greet(other)
    puts "Hi " + other.name + "! My name is " + name  + "."
  end
end
