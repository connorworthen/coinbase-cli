require 'pry'
require_relative './crypto.rb'
require_relative './menu.rb'
require_relative './currentprices.rb'

class CryptoPrices::CLI

    def call
      Menu.new.menu
    end

end