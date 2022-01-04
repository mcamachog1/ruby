5.times do
  puts "Oh, hello!"
end

5.times { puts "hello!" }

5.times do |time|
  puts "#{time} vez"
end

5.times { |time| puts "#{time} hello!" }