def random_hello(name)
    lang = ["Hello", "Hi", "Ohai", "ZOMG"]
    index = rand(4)
    
    puts "#{lang[index]} #{name}"
    "#{lang[index]} #{name}"
end
