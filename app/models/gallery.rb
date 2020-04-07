class Gallery

  attr_reader :name, :city

  @@all = []

  def initialize(name, city)
    @name = name
    @city = city

    Painting.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting| 
      painting.gallery == self
    end
  end

  def artists
    paintings.select do |painting| 
      painting.artist
    end
  end

  def artist_names
    artists.map do |artist|
      artist.name
    end
  end

  def most_expensive_painting
    arr_prices = []

    paintings.each do |painting|
      arr_prices << painting.price
    end
    arr_prices.max
  end

end

# Gallery#most_expensive_painting

# Returns an instance of the most expensive painting in a gallery