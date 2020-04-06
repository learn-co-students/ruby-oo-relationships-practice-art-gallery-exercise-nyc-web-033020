class Artist

  attr_reader :name, :years_experience
  @@all = [ ]

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self 
  end

  def self.all
    @@all
  end 


  def paintings #yay
  #Returns an array all the paintings by an artist
    Painting.all.select do |painting|
      painting.artist == self 
    end 
  end 


def galleries #yay
  #Returns an array of all the galleries that an artist has paintings in
    paintings.map do |painting|
      painting.gallery
  end
end 

def cities #yay
#Return an array of all cities that an artist has paintings in
 paintings.map do |painting|
  painting.gallery.city
 end 
end 

def self.years_of_experince 
  Artist.all.map do |artist|
  artist.years_experience  
   end
end 


def most_prolific
#Returns an instance of the artist with the highest amount of paintings per year of experience.

end 

def create_painting(title,price,gallery) #yay
  Painting.new(title, price, gallery, self)
end 
 
end
