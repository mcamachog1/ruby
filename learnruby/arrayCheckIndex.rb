def check_index(input_array, num)
    if (input_array.include? num)
        input_array.index(num)
    else
        -1
    end
end


