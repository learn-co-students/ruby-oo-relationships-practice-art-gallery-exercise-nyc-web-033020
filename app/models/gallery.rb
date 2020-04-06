class Gallery

  attr_reader :name, :city
  @@all = []
  def initialize(name, city)
    @name = name
    @city = city
    @@all << self
  end
  def self.all
    @@all
  end
  def paintings
    array = []
    Painting.all.select do |key|
      if key.gallery == self
        array << key
      end
    end
    array
  end
  def artists
    array = []
    Painting.all.select do |key|
      if key.gallery == self
        array << key.artist
      end
    end
    array
  end
  def artists_name
    array = []
    Painting.all.select do |key|
      if key.gallery == self
        array << key.artist.name
      end
    end
    array
  end
  def most_expensive_painting
    answer = nil
    pricey = 0
    Painting.all.select do |key|
      if key.gallery == self && key.price > pricey
        answer = key
        pricey = key.price
      end
    end
    answer
  end

end
