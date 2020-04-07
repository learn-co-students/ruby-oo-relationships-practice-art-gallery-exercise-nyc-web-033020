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
    end.uniq
  end

  def cities
    galleries.map do |gallery|
      gallery.city
    end
  end

  def self.total_experience

    all_experience = []
    Artist.all.each do |artist|
      all_experience << artist.years_experience
    end
    all_experience.reduce(0) {|sum, n| sum + n}
  end

  def self.most_prolific
    # Artist.all.max_by do |artist|
    #   artist.years_experience.count
    # end
  end

  def create_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

end


# Artist.most_prolific

# Returns an instance of the artist with the highest amount of paintings per year of experience.