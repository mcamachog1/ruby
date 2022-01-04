module CoreExtensions
  module Hash
    module Merging
      def string_merge(other_hash, separator = " ")
        merge(other_hash) {|key, old, new| old.to_s + separator + new.to_s}
      end
    end
  end
end

Hash.include CoreExtensions::Hash::Merging

{}.string_merge({:class => "btn"}) # => {:class=>"btn"}

h = {:class => "btn"} # => {:class=>"btn"}
h.string_merge({:class => "btn-primary"}) # => {:class=>"btn btn-primary"}