class Coin

  attr_accessor :price, :name, :description, :shortcode, :url

  @@all = []

  def initialize(name, shortcode)
    @name = name
    @shortcode = shortcode
    @@all << self
  end

  def self.all
    @@all
  end

end

