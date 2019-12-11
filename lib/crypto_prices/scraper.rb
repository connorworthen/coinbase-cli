require 'pry'
require 'open-uri'
require 'nokogiri'

class Scraper
  
  def self.bitcoin
    url = open("https://www.coinbase.com/price/bitcoin")
    doc = Nokogiri::HTML(url)
    coin = doc.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
  end
  
  def self.ethereum
    url = open("https://www.coinbase.com/price/ethereum")
    doc = Nokogiri::HTML(url)
    coin = doc.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
  end
  
  def self.ripple
    url = open("https://www.coinbase.com/price/ripple")
    doc = Nokogiri::HTML(url)
    coin = doc.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
  end
  
  def self.bitcoin_cash
    url = open("https://www.coinbase.com/price/bitcoin-cash")
    doc = Nokogiri::HTML(url)
    coin = doc.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
  end
  
  def self.litecoin
    url = open("https://www.coinbase.com/price/litecoin")
    doc = Nokogiri::HTML(url)
    coin = doc.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
  end
  
  def self.bitcoinprice
    url = open("https://www.coinbase.com/price/bitcoin")
    doc = Nokogiri::HTML(url)
    price = doc.css(".ChartPriceHeader__BigAmount-sc-9ry7zl-4.dKeshi").text
  end
  
  def self.ethereumprice
    url = open("https://www.coinbase.com/price/ethereum")
    doc = Nokogiri::HTML(url)
    price = doc.css(".ChartPriceHeader__BigAmount-sc-9ry7zl-4.dKeshi").text
  end
  
  def self.rippleprice
    url = open("https://www.coinbase.com/price/ripple")
    doc = Nokogiri::HTML(url)
    price = doc.css(".ChartPriceHeader__BigAmount-sc-9ry7zl-4.dKeshi").text
  end
  
  def self.bitcoincashprice
    url = open("https://www.coinbase.com/price/bitcoin-cash")
    doc = Nokogiri::HTML(url)
    price = doc.css(".ChartPriceHeader__BigAmount-sc-9ry7zl-4.dKeshi").text
  end
  
  def self.litecoincoinprice
    url = open("https://www.coinbase.com/price/litecoin")
    doc = Nokogiri::HTML(url)
    price = doc.css(".ChartPriceHeader__BigAmount-sc-9ry7zl-4.dKeshi").text
  end
  
end