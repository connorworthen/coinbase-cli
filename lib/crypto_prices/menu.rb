require "pry"

class Menu

  def menu
    puts "Welcome to my very own Coinbase CLI"
    start
  end
  
  def start
    puts ""
    intro
    menu_setting
  end
  
  def intro
    puts ""
    puts "In this program, you will be able to view different tradeable cryptocurrencies,"
    puts "their current rates, descriptions, and market cap."
    puts ""
    puts "---------------------------"
    puts "Select a number from 1 - 4"
    puts "---------------------------"
    puts ""
    puts (" 1. ") + "Enter 1, to see list of all different coins."
    puts (" 2. ") + "Enter 2, to see the current rate and description of a listed coin."
    puts (" 4. ") + "Exit"
    puts ""
    puts ""
  end
  
  def menu_setting
   input = " "
   while input
     input = gets.chomp
     case input
       when "1"
         puts ""
         current_rates
      when "2"
         puts ""
         all_coins   
      when "4"
         puts "Thank  you  for  using  my very own Coinbase CLI"
         break
         else
         puts "That option does not exist. Please select a number from 1 - 4 "
     end
   end
  end
  
  def current_rates
    puts "Bitcoin(BTC), Ethereum (ETH), Ripple (XRP), Bitcoin Cash(BCH), Litecoin(LTC) "
    all_bios
  end
  
  def all_bios
    input = " "
    while input != "exit"
      puts ""
      puts "Choose a shortcode"
        input = gets.strip
        if (1..Currentprices.new.prices.length).include?(input)
        coin = Scraper.scrape_coin_page[input - 1]
          puts "#{coin}"
        end
      end
  
  end
  
  def all_coins
    puts "What coin would you like to see Bitcoin(BTC), Ethereum (ETH), Ripple (XRP), Bitcoin Cash(BCH), Litecoin(LTC) "
  end
  
  def description
    puts "test"
  end
  
  def market_cap
    puts "test"
  end
  
end