require 'pry'
require_relative './crypto.rb'
require_relative './menu.rb'

class CryptoPrices::CLI

    def call
      Menu.new.menu
    end

end