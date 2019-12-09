require 'pry'

class Coin
  
  attr_accessor :price, :name, :description
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def price=(price)
    @price = price
  end
  
  def name=(name)
    @name = name
  end
  
  def self.description
    Scraper.scrape_coin_page.each |description|
    Coin.new(description)
    @@all << self
   end
end

binding.pry 