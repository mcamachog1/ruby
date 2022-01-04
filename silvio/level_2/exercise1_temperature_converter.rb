class Temperature
    def initialize(temp)
        @c=@f=nil
        if(temp[:f]!=nil)
            @f=temp[:f]
        elsif(temp[:c]!=nil)
            @c=temp[:c]
        end
    end

    def to_fahrenheit        
        if(@f!=nil)
            return @f
        else
            return (@c * 9.0/5.0)+32        
        end
        #return (@f!=nil)?@f:(@c * 9.0/5.0)+32
    end

    def to_celsisus
        if(@c!=nil)
            return @c
        else
            return (@f - 32) * 5.0/9.0
        end
    end
end

if __FILE__ == $PROGRAM_NAME
    temperature1 = Temperature.new({f:20.00})
    puts temperature1.to_celsisus.floor(2)

    temperature2 = Temperature.new({:c => 50.00})
    puts temperature2.to_fahrenheit
end