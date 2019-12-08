require 'pry'
require_relative './scraper.rb'
require_relative './menu.rb'

class CurrentPrices

attr_accessor :coin, :coin_name

@@all = []

  def initialize(coin, coin_name)
    @coin = coin
    @coin_name = coin_name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.prices  
    current_prices = ["Bitcoin", "Ethereum", "XRP", "Bitcoin Cash", "Litecoin"]
    current_prices.each.with_index(1) do |coin, index|
      puts "#{index}. #{coin}"
    end
  end
  
end