def string_to_num(input_string)
    result = ""
    if (input_string.include?("."))
      result = input_string.to_f
    else  
      result=input_string.to_i
    end
    
    return result
  end