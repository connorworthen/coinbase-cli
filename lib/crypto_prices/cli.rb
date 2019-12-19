class CryptoPrices::CLI

    def call
      Logo.new.logo
      Scraper.firstscrape
      Menu.new.menu
    end

end
