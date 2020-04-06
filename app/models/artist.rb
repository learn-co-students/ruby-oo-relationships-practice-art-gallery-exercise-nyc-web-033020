class Artist

  attr_reader :name, :years_experience
  @@all = []

  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end

  def self.all
    @@all
  end

  def paintings
    Painting.all.select do |painting|
      painting.artist == self
    end
  end

  def galleries
    paintings.map do |painting|
      painting.gallery
    end
  end

  def cities
    galleries.map { |gallery| gallery.city }
  end

  def self.total_experience
    total = 0
    all.each { |artist| total += artist.years_experience }
    total
  end

  def self.most_prolific
    all.max_by do |artist|
       artist.paintings.count / artist.years_experience
    end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end
end
