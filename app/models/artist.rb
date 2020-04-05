class Artist
  @@all = []
  attr_reader :name, :years_experience

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end

  def self.all
    @@all
  end
  
  def self.total_experience
    Artist.all.map{ |artist| artist.years_experience }.sum
  end

  def self.most_prolific
    Artist.all.sort_by{ |artist| (artist.paintings.length.to_f / artist.years_experience.to_f) }[-1]
  end

  def create_painting title, price, gallery
    Painting.new(title,price,self,gallery)
  end

  def paintings
    Painting.all.select{ |painting| painting.artist == self }
  end

  def galleries
    paintings.map{ |painting| painting.gallery }
  end

  def cities
    galleries.map{ |gallery| gallery.city }.uniq
  end

end
