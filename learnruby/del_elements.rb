def del_elements
  words = ["one", "two", "three", "four", "five"]
  
  words = words.collect do |element|
          if (element=="one" || element=="three" || element == "five")
            element
          end
        end
  words.compact.collect do |e| 
            element = e.capitalize
            element + " <3"  
          end
end