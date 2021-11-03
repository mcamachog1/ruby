def even_reversed(input_array)
    evens = input_array.select {|n| n.even?}
    evens.reverse
    
  end