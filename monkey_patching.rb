
module CoreExtensions
  module Array
    module MathCalculations
      def average
        (0.0 + inject(&:+)) / size
      end
    end
  end
end

Array.include CoreExtensions::Array::MathCalculations

milista=[12,47,35,56,76]
milista.average

puts milista
puts milista.average
