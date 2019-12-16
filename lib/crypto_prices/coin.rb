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
ethereum = Coin.new("Ethereum(ETH)")
ethereum.description = (Scraper.ethereum)
ripple = Coin.new("Ripple(XRP")
ripple.description = (Scraper.ripple)
bitcoin_cash = Coin.new("Bitcoin cash(BCH")
bitcoin_cash.description = (Scraper.bitcoin_cash)
litecoin = Coin.new("Litecoin(LTC)")
litecoin.description = (Scraper.litecoin)

bitcoin.price = (Scraper.bitcoinprice)
ethereum.price = (Scraper.ethereumprice)
ripple.price = (Scraper.rippleprice)
bitcoin_cash.price = (Scraper.bitcoincashprice)
litecoin.price = (Scraper.litecoinprice)
#binding.pry 