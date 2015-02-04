require 'set'
set1 = Set.new [1, 2, 3]

ctr = set1.to_a.size
set2 = set1.to_a.permutation.to_a
set3 =[]
puts ctr
p set1.divide {|el| el%2 }


