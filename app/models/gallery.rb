class Gallery

  attr_reader :name, :city
  @@all = [ ]

  def initialize(name, city)
    @name = name
    @city = city
    Gallery.all << self 
  end

  def self.all
    @@all
  end 

  def paintings #yay
  #Returns an array of all paintings in a gallery
   Painting.all.select do |pic|
    pic.gallery == self 
   end 
  end 
 
  def artists #cool 
  #Returns an array of all artists that have a painting in a gallery
  paintings.map {|pic| pic.artist }
  end 
  
  def artist_names #yay
  #Returns an array of the names of all artists that have a painting in a gallery
   artists.map{ |artist| artist.name }
  end 

  def most_expensive_painting
   #Returns an instance of the most expensive painting in a gallery
  end 

end
