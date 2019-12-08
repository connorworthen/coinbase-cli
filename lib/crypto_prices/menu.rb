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
    puts (" 1. ") + "See current rate for your chosen token ** BTC, ETH, XRP, BCH, LTC **"
    puts (" 2. ") + "See description"
    puts (" 3. ") + "See market cap"
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
         current_rate
       when "2"
         puts ""
         description
       when "3"
         puts ""
         market_cap
       when "4"
         puts "Thank  you  for  using  my very own Coinbase CLI"
         break
         else
         puts "That option does not exist. Please select a number from 1 - 4 "
     end
   end
  end
  
  def current_rate
    Scraper.new.current_rate
      puts "Choose one of the following currencies to get the current rate and descriptionv** BTC, ETH, XRP, BCH, LTC **!"
      input = gets.strip.to_i
    end
  end
  
  def description
    puts "test"
  end
  
  def market_cap
    puts "test"
  end
  
end