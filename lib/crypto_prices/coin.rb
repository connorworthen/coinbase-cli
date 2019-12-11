require 'pry'
require_relative './scraper.rb'

class Coin
  
  attr_accessor :price, :name, :description
  
  @@all = []
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def self.all
    @@all
  end
  
end

bitcoin = Coin.new("Bitcoin(BTC)")
bitcoin.description = (Scraper.bitcoin)
binding.pry 