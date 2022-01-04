palabras = %w(a otra maslarga es)
puts palabras.sort
puts palabras.sort { |a,b| a.length <=> b.length }
puts palabras.sort_by(&:length)


times = [{:name=>"Layla", :time=>11.6, :type=>:concrete}, 
    {:name=>"Joe", :time=>13, :type=>:grass}
    ]
times.sort_by { |time| [time[:type], time[:time]] }