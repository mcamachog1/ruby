def sum_the_cols(nested_array)
  lines = nested_array.collect do |e|
            line = e.collect {|n| "*"*n}
            line.join(" ")
          end
end

numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]

sum_the_cols(numbers)
lines.each { |line| puts line }