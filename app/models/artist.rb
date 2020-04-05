class Artist
  attr_reader :name, :years_experience, :gallery
  @@all = []
  @@test = []
  def initialize(name, years_experience)
    @name = name
    @years_experience = years_experience
    Artist.all << self
  end

  def self.all 
    @@all
  end

  def paintings
    Painting.all.select {|paintings| paintings.artist == self}
  end

  def galleries
    paintings.map{|project| project.gallery}
  end

  def cities
    galleries.map {|galleries| galleries.city}
  end

  def creat_painting(title, price, gallery)
    Painting.new(title, price, self, gallery)
  end

  def self.total_experience
    total = []
    Artist.all.each do |artist|
      total << artist.years_experience
    end
    total.sum
  end


  #paints/yrs
  def self.most_prolific
    Artist.all.sort_by do |artist| 
      (artist.paintings.count / artist.years_experience.to_f)
    end.last
  end

end
