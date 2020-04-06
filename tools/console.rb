require_relative '../config/environment.rb'



g = Artist.new("Greg", 100)
e = Artist.new("Liz", "2 years")
k = Artist.new("Kenji", "one month")

b = Gallery.new("Art", "NY,NY")
c = Gallery.new("SMFA", "Boston")
d = Gallery.new("ugh", "Chicago")
i = Gallery.new("ok", "LA")
h = Gallery.new("hmmm", "Austin, TX")

p1 = Painting.new("Selfie part 1", 80, b, g)
p2 = Painting.new("Exploring Space and Time", 75, c, e)
p3 = Painting.new("The beauty of an orange cat", 5, d, k)
p4 = Painting.new("Selfie part 2: exploration of the devine", 100000000 , i, g)
p5 = Painting.new("Untitiled", 5, h, e)
p6 = Painting.new("Untitled 1", 8000000000, b, k)
p7 = Painting.new("Untitled 2", 25000000000, c, g)

binding.pry

puts "Bob Ross rules."
