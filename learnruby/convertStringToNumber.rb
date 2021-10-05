def string_to_num(input_string)
  
  if (input_string.include? ".")
     input_string.to_f
  else
    input_string.to_i
  end

end
