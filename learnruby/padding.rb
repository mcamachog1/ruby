def justifying_and_padding(input_string)
  pad = input_string.length + 6 # length of "<3<3<3" is equal to six
  result = input_string.just(pad,'<3')
  return result
end

justifying_and_padding("ruby")
