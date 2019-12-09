require 'pry'
require_relative './menu.rb'
require_relative './currentprices.rb'
require_relative './coin.rb'

class CryptoPrices::CLI

    def call
      Menu.new.menu
    end

end