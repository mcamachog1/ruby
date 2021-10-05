objects = [true, false, 0, 1, "", [], Object.new, Module.new]
true_aligned = "true".ljust(5)
false_aligned = "false".ljust(5)
puts "object".ljust(28) + " | !!object".ljust(5)                            
objects.each do |object|
  if object
    puts "#{object.to_s.ljust(28)} | #{true_aligned}"
  else
    puts "#{object.to_s.ljust(28)} | #{false_aligned}"
  end
end

