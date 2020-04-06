require_relative '../config/environment.rb'


jojo = Artist.new("jordan", 50)
jotaro = Artist.new("kujo", 30)
lance = Artist.new("Lance", 10)
flo = Artist.new("FLorence", 15)
jimmy = Artist.new("Jimmy", 25)

gallery1 = Gallery.new("gallery1", "Queens")
gallery2 = Gallery.new("gallery2", "Queens")
gallery3 = Gallery.new("gallery3", "Brooklyn")
gallery4 = Gallery.new("gallery4", "Bronx")

jojo.create_painting("mona", 100, gallery1)
jojo.create_painting("la lune", 200, gallery1)
jojo.create_painting("le soleil", 550, gallery1)
lance.create_painting("la peau", 1000, gallery1)
lance.create_painting("cochon", 300, gallery2)
jotaro.create_painting("DIO", 1050, gallery1)
flo.create_painting("la quiche", 5400, gallery1)
flo.create_painting("tortilla", 900, gallery3)
jimmy.create_painting("confiance", 1000, gallery3)
jimmy.create_painting("la peur", 50, gallery3)
jojo.create_painting("lisa", 100000, gallery4)
jotaro.create_painting("avdol", 19900, gallery4)
jimmy.create_painting("gay", 800, gallery1)


binding.pry

puts "Bob Ross rules."
