def append_hearts
  words = ["one", "two", "three", "four", "five"]
  words = words.collect.with_index do |word, index|
    hearts = "<3" * (index + 1)
    word = "#{word.capitalize.ljust(5)} #{hearts}"
  end
  words = words.select.with_index {|word, index| index.even?}
  puts words.join("\n")
end