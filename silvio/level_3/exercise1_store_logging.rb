
module Logging
    def log(message)
        puts "INFO #{message}"
    end

    def log(message, level)

        levels = {
            :DEBUG => 'DEBUG', 
            :INFO => 'INFO', 
            :WARN => 'WARN',
            :ERROR => 'ERROR',
            :FATAL => 'FATAL'            
        }
        begin
            levels.fetch(level)
            puts "#{levels[level]} #{message}"
        rescue
            puts 'Level Not Defined'
        end
        
    end
end

class Product

    include Logging

    attr_accessor :name, :price

    def initialize(name=nil, price=0, disc=0 )       
        begin
            @name = name
            @price = price
            self.discount = disc
            log("Product created successfully")
        rescue            
            log("Bad Initialization",:FATAL)
        end
        
    end

    def print
        puts 'Product Data: '
        puts "Name: #{name}"
        puts "Price: #{price}"
        puts "Discount: #{discount}"
        puts "Net Price: #{netPrice}"
    end

    def discount=(disc)
        begin
            disc = disc / 100.0
            if (0.0..1.0).include?disc
                @discount = disc
                log("Discount applied correctly")
            else 
                #puts "Invalid discount"
                @discount=nil
                log("Invalid discount")
            end
        rescue
            log("Incorrect Discount Format",:FATAL)
            
        end
        
    end
    
    def discount
        return @discount
    end

    def netPrice
        begin
            return (price - (price * discount)).round(2)
        rescue
            log("Incorrect net price calculation",:FATAL)            
        end
    end
    
    def self.method_missing(method_name, *args)
        message = "You called #{method_name} with #{args}. This method doesn't exist."
        log(message,:ERROR)
    end
end

class Book < Product

    def initialize(name="", price=0, discount=10, cat="" )
        @name = name
        @price = price
        self.discount = discount
        self.category = cat
    end
    
    def category=(cat)
        if ["Adventure","Romance","Scifi","Horror"].include?cat
            @category = cat
        else 
            puts "Invalid category"
            @category ="N/A"
        end
    end

    def category
        return @category
    end

    def print
        super
        puts "Category:" + category
    end

end

class Game < Product

    def initialize(name="", price=0, discount=10, plat="" )
        @name = name
        @price = price
        self.discount = discount
        self.platform = plat
    end

    def platform=(plat)
        if ["PS4","XBox","PC"].include?plat
            @platform = plat
        else 
            puts "Invalid platform"
            @platform ="N/A"
        end       

    end

    def platform
        return @platform
    end

    def print
        super
        puts "Platfom:" + platform
    end
    
end

if __FILE__ == $0
     
    book = Book.new("Ruby Essentials", 10, "10", "Scifi")
    game = Game.new("Monkey Island", 20, 20, "PC")

    puts "Book Data"
    book.print

    puts "Game Data"
    game.print
end