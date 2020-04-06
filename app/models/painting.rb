class Painting

  attr_reader :title, :price, :gallery, :artist 

  @@all = []

  def initialize(title, price, gallery, artist )
    @title = title
    @price = price
    @gallery = gallery
    @artist = artist
    Painting.all << self
  end

  def self.all
    @@all
  end 

  def self.total_price #yay
    Painting.all.map do |pic|
      pic.price 
    end.sum 
  end 

end
