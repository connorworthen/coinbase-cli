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
    url_5 = open("https://www.coinbase.com/price/litecoin")
    doc = Nokogiri::HTML(url)
    coin = doc.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
  end
  
  def self.scrape_price_page
    url = open("https://www.coinbase.com/price/bitcoin")
    url_2 = open("https://www.coinbase.com/price/ethereum")
    doc = Nokogiri::HTML(url)
    doc_2 = Nokogiri::HTML(url)
    prices = []
    price = doc.css(".ChartPriceHeader__BigAmount-sc-9ry7zl-4.dKeshi").text
    price_2 = doc_2.css(".ChartPriceHeader__BigAmount-sc-9ry7zl-4.dKeshi").text
    prices << price
    prices << price_2
  end
    
end