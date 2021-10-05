def sum_the_cols(nested_array)
  nested_array.collect {|e| e.sum}
end

numbers = [
  [1, 2, 3],
  [4, 5, 6],
  [7, 8, 9]
]