class Scraper

  def self.firstscrape
    url = open("https://www.coinbase.com/price")
    doc = Nokogiri::HTML(url)
    coin_rows = doc.css(".AssetTableRow__Wrapper-sc-1e35vph-0")[0..4]
    coin_rows.each do |row|
      name = row.css("h4.Header__StyledHeader-sc-1q6y56a-0")[1].text
      shortcode = row.css("h4.Header__StyledHeader-sc-1q6y56a-0")[2].text
      coin = Coin.new(name, shortcode)
      coin.price = row.css("h4.Header__StyledHeader-sc-1q6y56a-0")[3].text
      coin.url = row.css("a")[0].attributes["href"].value
    end
  end

  def self.scrape_description(coin_object)
    url = open("https://www.coinbase.com/#{coin_object.url}")
    doc = Nokogiri::HTML(url)
    coin_object.description = doc.css(".AssetInfo__DescriptionText-sc-4v99na-3.hnkcSy").text
  end

end
