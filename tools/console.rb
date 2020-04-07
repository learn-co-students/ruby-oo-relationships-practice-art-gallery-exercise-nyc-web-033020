require_relative '../config/environment.rb'

artist1 = Artist.new("Shawn", 2)
artist2 = Artist.new("Gus", 4)
artist3 = Artist.new("Juliet", 7)
artist4 = Artist.new("Carton", 1)
artist5 = Artist.new("Henry", 6)

gallery1 = Gallery.new("Gallery 1", "Los Angeles")
gallery2 = Gallery.new("Gallery 2", "San Diego")
gallery3 = Gallery.new("Gallery 3", "Santa Barbara")
gallery4 = Gallery.new("Gallery 4", "San Fransisco")
gallery5 = Gallery.new("Gallery 5", "Newport Beach")

painting1 = Painting.new("Painting 1t", 200, artist1, gallery3)
painting2 = Painting.new("Painting 2t", 600, artist2, gallery3)
painting3 = Painting.new("Painting 3t", 100, artist2, gallery2)
painting4 = Painting.new("Painting 4t", 900, artist3, gallery5)
painting5 = Painting.new("Painting 5t", 1100, artist4, gallery1)



binding.pry

puts "Bob Ross rules."
