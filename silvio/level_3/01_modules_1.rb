
module Bootcamp
  def ruby 
    'Ruby Bootcamp'
  end
  def rubyOnRails
    'Ruby on Rails Bootcamp'
  end
end

class TopTalentPool

  attr_accessor :trainer,:trainee 
  
  def initialize
    @trainer = 0
    @trainee = 0
  end

  def method_missing(method_name, *args)
    message = "You called #{method_name} with #{args}. This method doesn't exist."
    puts message
  end
  
end 

class Aircraft
  attr_accessor :passengers

  def initialize
    @passengers = 0
  end

  def method_missing(method_name, *args)
    message = "You called #{method_name} with #{args}. This method doesn't exist."
    puts message
  end
end

['Ruby', 'Ruby on Rails'].each do |bootcamp|
  puts "#{bootcamp} Bootcamp"
end

TopTalentPool = Proc.new {['Ruby', 'Ruby on Rails'].each do |bootcamp|
                                                      puts "#{bootcamp} Bootcamp"
                                                    end}
TopTalentPool.call 