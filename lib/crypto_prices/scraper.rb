require 'pry'
require 'open-uri'
require 'nokogiri'

class Scraper
  
  # def current_rate_page
  #   html = "https://www.coinbase.com/price"
  # end
  
  # def current_rate 
  #   url = open(self.current_rate_page)
  #   coin = Nokogiri::HTML(url)
  #   current_prices = coin.css.("span > h4").text.strip
  #   current_prices.shift
  #   new_prices = current_prices
  # end
  
  # def self.coin_bio
  #   url = open("https://www.coinbase.com/price/bitcoin")
  #   coin = Nokogiri::HTML(url)
  #   coin.css(".AssetInfo__DescripAtionText-sc-4v99na-3.hnkcSy").text
  # end
  
  
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
  
  

    
  # def self.scrape_index_page
  #   price_page = Nokogiri::HTML(open("https://www.coinbase.com/price"))
  #   coins = []
  #   price_page.css("tr")[1..6].each do |coin|
  #     coin_name = coin.css("span > h4").text.strip
  #     coin_price = coin.css("div > h4").text.strip
  #     coin_market_cap = coin.css("span > h4").text.strip
  #     coin_url = "https://www.coinbase.com" + coin.at_css("td a[href]")['href']
  #     coin_shortcode = coin.css("div > h4").text.strip
  #     coin_percent_change = coin.css("tr > h4").text.strip
  #     coins << {name: coin_name, short_code: coin_shortcode, url: coin_url, price: coin_price, market_cap: coin_market_cap}
  #   end
  #   coins
  # end

  #   def self.scrape_description(url)
  #     single_page = Nokogiri::HTML(open(url))
  #     coin_description = single_page.css("div.AssetInfo__DescriptionText-ezdzBo.gwIDYx").text
  #     coin_description
  #   end
    
end