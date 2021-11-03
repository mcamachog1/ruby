def delete_element(input_array)
    evens = input_array.select {|n| n.even?}.reverse

    evens.delete 6
    return evens

  end