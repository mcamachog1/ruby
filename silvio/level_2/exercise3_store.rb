class Product
    attr_accessor :name, :price

    def initialize(name=nil, price=0, discount=0 )
        @name = name
        @price = price
        self.discount = discount
    end

    def print
        puts 'Product Data: '
        puts "Name: #{name}"
        puts "Price: #{price}"
        puts "Discount: #{discount}"
        puts "Net Price: #{netPrice}"
    end

    def discount=(disc)
        disc = disc.to_f / 100.0
        if (0.0..1.0).include?disc
            @discount = disc
        else 
            puts "Invalid discount"
            @discount=nil
        end

        
    end
    
    def discount
        return @discount
    end

    def netPrice
        return (price - (price * discount)).round(2)
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

book = Book.new("Ruby Essentials", 10, 10, "Scifi")
game = Game.new("Monkey Island", 20, 20, "PC")

puts "Book Data"
book.print

puts "Game Data"
game.print