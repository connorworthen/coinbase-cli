require "pry"
require 'open-uri'

class Scraper

  def self.scrape_index_page
    price_page = Nokogiri::HTML(open("https://www.coinbase.com/price"))
    coins = []
    price_page.css("tr.AssetRow__Wrapper-gHxsGo")[1..13].each do |coin|
      coin_name = coin.css("span.AssetRow__BrandedTitle-kQVjGE.yfMRP").text
      coin_price = coin.css("div.Flex-NZkZp.gICBdl").text
      coin_market_cap = coin.css("td.AssetRow__Td-gjXXut.AssetRow__Cap-ciIRMg.dJJSHO").text
      coin_url = "https://www.coinbase.com" + coin.at_css("td a[href]")['href']
      coin_shortcode = coin.css("div > h4").text
      coin_percent_change = coin.css("tr").text
      coins << {name: coin_name, short_code: coin_shortcode, url: coin_url, price: coin_price, market_cap: coin_market_cap}
    end
    coins
  end

    def self.scrape_description(url)
      single_page = Nokogiri::HTML(open(url))
      coin_description = single_page.css("div.AssetInfo__DescriptionText-ezdzBo.gwIDYx").text
      coin_description
    end
    
end