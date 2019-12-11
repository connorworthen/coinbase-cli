require 'pry'
require_relative './menu.rb'
require_relative './currentprices.rb'
require_relative './coin.rb'
require_relative './logo.rb'

class CryptoPrices::CLI

    def call
      Logo.new.logo
      Menu.new.menu
    end

end