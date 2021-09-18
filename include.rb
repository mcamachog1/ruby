module Animal

  def my_method
    puts "Hi, I am a #{self.class}"
  end

  def method_2
    puts "My dog's name is spike"
  end
end


class Dog
  include Animal

  def method_1
    puts "hey, I am faithful"
  end

end

