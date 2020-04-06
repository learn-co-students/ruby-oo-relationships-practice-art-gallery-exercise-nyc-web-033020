class Artist

  attr_reader :name, :years_experience
  @@all = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    @@all << self
  end
  def self.all
    @@all
  end
  def paintings
    array = []
    Painting.all.select do |key|
      if key.artist == self
        array << key
      end
    end
    array
  end
  def galleries
    array = []
    Painting.all.select do |key|
      if key.artist == self
        array << key.gallery
      end
    end
    array
  end
  def cities
    array = []
    Painting.all.select do |key|
      if key.artist == self
        array << key.gallery.city
      end
    end
    array
  end
  def self.total_experience
    total = 0
    @@all.select do |key|
      total += key.years_experience
    end
    total
  end
  def self.most_prolific
    answer = nil
    num = 0
    @@all.select do |key|
      if  num < (key.paintings.count * 1.0 / key.years_experience * 1.0)
        num = key.paintings.count / key.years_experience
        answer = key
      end
    end
    answer
  end
  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
