class StringSimilarity

  attr_accessor :s1

  def initialize(string1)  
        @s1 = string1  
  end

  def distance_to(t) 
    if(!block_given?)
      m = @s1.length
      n = t.length
      return m if n == 0
      return n if m == 0
      d = Array.new(m+1) {Array.new(n+1)}

      (0..m).each {|i| d[i][0] = i}
      (0..n).each {|j| d[0][j] = j}
      (1..n).each do |j|
        (1..m).each do |i|
          d[i][j] = if @s1[i-1] == t[j-1]  # adjust index into string
            d[i-1][j-1]       # no operation required
          else
            [ d[i-1][j]+1,    # deletion
            d[i][j-1]+1,    # insertion
            d[i-1][j-1]+1,  # substitution
            ].min
          end
        end
      end
      d[m][n]
    else
      #block.call(t)
      yield t
    end
  end
end

=begin 
[   
  ['bananas','ananas'],
  ['parrot','parrot'],
  ['parrot','torrap']
].each do |s,t|
  puts "distance_to('#{s}', '#{t}') = #{StringSimilarity::distance_to(s, t)}"
end 
=end

string1 = StringSimilarity.new('bananas')
puts string1.distance_to('ananas')
string1 = StringSimilarity.new('parrot')
puts string1.distance_to('parrot')
string1 = StringSimilarity.new('parrot')
puts string1.distance_to('torrap')

string1 = StringSimilarity.new('bananas')
puts (string1.distance_to('ananas') do |other|
  other.reverse
end)