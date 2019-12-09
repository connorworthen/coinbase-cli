require 'pry'
require 'open-uri'
require 'nokogiri'

class Scraper
  
  def self.scrape_coin_page
    url = open("https://www.coinbase.com/price/bitcoin")
    url_2 = open("https://www.coinbase.com/price/ethereum")
    url_3 = open("https://www.coinbase.com/price/ripple")
    url_4 = open("https://www.coinbase.com/price/bitcoin-cash")
    url_5 = open("https://www.coinbase.com/price/litecoin")
    doc = Nokogiri::HTML(url)
    doc_2 = Nokogiri::HTML(url_2)
    doc_3 = Nokogiri::HTML(url_3)
    doc_4 = Nokogiri::HTML(url_4)
    doc_5 = Nokogiri::HTML(url_5)
    coins = []
    coin = doc.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
    coin_2 = doc_2.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
    coin_3 = doc_3.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
    coin_4 = doc_4.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
    coin_5 = doc_5.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
    coins << coin
    coins << coin_2
    coins << coin_3
    coins << coin_4
    coins << coin_5
  coins
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