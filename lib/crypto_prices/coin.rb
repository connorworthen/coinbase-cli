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
  
  def description=(description)
    @description = description
    
  end
  
end

  Bitcoin = Coin.new("Bitcoin")
  Bitcoin.price=(Scraper.scrape_price_page[0])
  Bitcoin.description=(Scraper.scrape_coin_page[0])
  binding.pry
  # Ethereum = Coin.new(Scraper.scrape_coin_page[1])
  
  
  # Ripple = Coin.new(Scraper.scrape_coin_page[2])
  
  
  # Bitcoin Cash = Coin.new(Scraper.scrape_coin_page[3])
  
  
  # Litecoin = Coin.new(Scraper.scrape_coin_page[4])
  
  
    