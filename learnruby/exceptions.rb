class PermissionDeniedError < StandardError
    attr_reader :action
    def initialize(message, action)
        super(message)
        @action = action
    end
end




#Dividir dos numeros positivos
puts "x:"
x = gets.to_i
puts "y:"
y = gets.to_i

#https://www.honeybadger.io/blog/a-beginner-s-guide-to-exceptions-in-ruby/
begin  
    raise PermissionDeniedError.new("Permission Denied", :delete)
    result = x/y
    if x < 0 || y < 0 
        raise "Negative numbers not allow."
    end

rescue ZeroDivisionError => e
    #puts "#{e.class}: #{e.message}"
    puts "Error: Division by 0."
    exit 1
rescue RuntimeError => e    
    puts "#{e.class}: #{e.message}"
    exit 1
end
puts "#{x} / #{y} = #{result}"


  