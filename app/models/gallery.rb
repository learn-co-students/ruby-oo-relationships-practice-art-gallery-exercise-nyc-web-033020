class Gallery

  attr_reader :name, :city
  @@all = []

  def initialize(name, city)
    @name = name
    @city = city
    Gallery.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select {|paintings| paintings.gallery == self}
  end

  def artists
    paintings.map {|paintings| paintings.artist}
  end

  def artist_names
    artists.map {|artists| artists.name}
  end

  def prices
    result = []
    paintings.map do |paintings| 
      # binding.pry
      paintings.price
    end
  end

  def most_expensive_painting
      prices.max do |painting1, painting2|
      painting1 <=> painting2
    end
  end
end
