
class Burger
    def cost
        50
    end
    def calories
        200
    end
end

=begin
class BurgerWithCheese < Burger
    def cost
        60
    end
end

class LargeBurger < Burger
    def cost
        65
    end
end

# With Modules
module CheeseBurger
    def cost
      super + 10
    end
end

module LargeBurger
    def cost
      super + 15
    end
end

burger = Burger.new         #=> cost = 50
burger.extend(CheeseBurger) #=> cost = 60
burger.extend(LargeBurger)  #=> cost = 75


# decorator

class LargeBurger
    def initialize(burger)
      @burger = burger
    end
  
    def cost
      @burger.cost + 15
    end
end

class BurgerWithCheese
    def initialize(burger)
      @burger = burger
    end
  
    def cost
      @burger.cost + 10
    end
end


burger = Burger.new
large_burger = LargeBurger.new(burger)
extra_large_burger = LargeBurger.new(large_burger)
=end

class BurgerDecorator < SimpleDelegator
    def initialize(burger)
      @burger = burger
      super
    end
end

class BurgerWithCheese < BurgerDecorator
    def cost
      @burger.cost + 10
    end
end

class LargeBurger < BurgerDecorator
    def cost
      @burger.cost + 15
    end
end