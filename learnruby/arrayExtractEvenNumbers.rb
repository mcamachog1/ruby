def even_elements(input_array)
=begin
    new_array = []
    input_array.each do |x|
        if (x.even?)
            new_array << x
        end
    end
    return new_array
=end
  result = input_array.select { |number| number.even? }
  return result

end


