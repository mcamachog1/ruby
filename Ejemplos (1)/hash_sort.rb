myhash={uno: "z", dos:"y" , tres:"x" }
puts myhash.sort.to_h
puts myhash.sort_by {|x,y| y}.to_h
puts myhash.sort_by {|x,y| y}.reverse.to_h


hash = {"w"=>2, "k"=>1, "l"=>2, "v"=>5, "d"=>2, "h"=>4, "f"=>1, "u"=>1, "p"=>1, "j"=>1}