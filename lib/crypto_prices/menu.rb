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
    puts (" 2. ") + "See description  ** BTC, ETH, XRP, BCH, LTC **"
    puts (" 3. ") + "See market cap  ** BTC, ETH, XRP, BCH, LTC **"
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
         create_from_full_list
       when "2"
         update_description
       when "3"
         find_by_name
       when "4"
         puts "Thank  you  for  using  my very own Coinbase CLI"
         break
         else
         puts "That option does not exist. Please select a number from 1 - 4 "
     end
   end
  end

end