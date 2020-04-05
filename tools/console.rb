require_relative '../config/environment.rb'


a1 = Artist.new("Lei", 3)
a2 = Artist.new('Edgar', 2)

g1 =Gallery.new("Lot1", "NYC")
g2 =Gallery.new("Lot2", "Phily")

p1 = Painting.new("Title1", 25, a1, g1)
p2 = Painting.new("Title2", 76, a1, g1)
p3 = Painting.new("Title3", 56, a2, g1)
p4 = Painting.new("Title4", 84, a2, g1)

Artist.most_prolific


binding.pry

puts "Bob Ross rules."
