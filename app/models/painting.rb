class Painting

  attr_reader :title, :price, :artist, :gallery

  @@all = []

  def initialize(title, price, artist, gallery)
    @title = title
    @price = price
    @artist = artist
    @gallery = gallery

    Painting.all << self
  end

  def self.all
    @@all
  end

  def self.total_price
    total_price = []
    Painting.all.each do |painitng|
      total_price << painitng.price
    end
    total_price.reduce(0) {|sum, n| sum + n}
  end

end