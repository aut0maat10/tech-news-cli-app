class TechNews::Article

  attr_accessor :title, :url, :articles
  @@all = []

  def initialize
    @@all << self 
  end

  def self.all
    @@all 
  end

end
