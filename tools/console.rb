require_relative '../config/environment.rb'

artist1 = Artist.new('one',10)
artist2 = Artist.new('two',20)
artist3 = Artist.new('three',21)

gallery1 = Gallery.new('Boston Gallery', "Boston")
gallery2 = Gallery.new('NY Gallery', "NYC")

painting1 = Painting.new('title1',1200,artist1,gallery1)
painting2 = Painting.new('title2',2200,artist1,gallery1)
painting3 = Painting.new('title3',1500,artist2,gallery1) 
painting4 = Painting.new('title4',20000,artist2,gallery2)
painting5 = Painting.new('title5',54000,artist3,gallery2)
painting6 = Painting.new('title6',900,artist3,gallery2)

painting7 = Painting.new('meow',1000,artist2,gallery2)
painting8 = Painting.new('mewww',600,artist2,gallery2)
painting9 = Painting.new('cats',1000,artist2,gallery1)

binding.pry

puts "Bob Ross rules."
