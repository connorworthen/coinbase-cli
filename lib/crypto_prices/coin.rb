require 'pry'

class Coin
  
  attr_accessor :price, :name, :description
  
  @@all = []
  
  def initialize(price, name, description)
    @price = price
    @name = name
    @description = description
    @@all << self
  end
  
  def price=(price)
  
  end
  
  def name=(name)
    
  end
  
  def description=(description)
    
  end
  
end
 
    