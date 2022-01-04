class Flight
    def initialize(capacity)
        @capacity = capacity
        @passengers = []
    end

    def add_passenger(name)
        if (open_seats <= 0) 
            return false
        end
        @passengers.append(name)
        true        
    end

    def open_seats
        @capacity - @passengers.size
    end
end

flight = Flight.new(3)
people = %w(Harry Ron Hermione Ginny)
people.each do |person|
    success = flight.add_passenger(person)
    if success
        puts "Added person #{person} to flight succesfully."
    else
        puts "No available seat for person #{person}"
    end
end
