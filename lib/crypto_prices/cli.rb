require "pry"

class CLI

  def start
    puts ""
    welcome
    intro
    menu_setting
  end

  def call
    puts "Welcome to my very own Coinbase CLI"
  end
  
  def intro
    puts ""
    puts "In this program, you will be able to view different tradeable cryptocurrencies from coinbase.com"
    puts "which will help to them with buying and selling decisions"
    puts ""
    puts "---------------------------"
    puts "Select a number from 1 - 4"
    puts "---------------------------"
    puts ""
    puts (" 1. ") + "See current rate for your chosen token ** BTC, XMR, ETH, BCH, XLM **"
    puts (" 2. ") + "See full library of exchanges together with their tokens and currencies"
    puts (" 3. ") + "See exchanges that trade in your chosen currency"
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
         current_rate_for_token
       when "2"
         show_all_exchanges_with_tokens_and_currencies
       when "3"
         show_exchanges_for_currency
       when "4"
         puts "Thank  you  for  using  my very own Coinbase CLI"
         break
         else
         puts "That option does not exist. Please select a number from 1 - 4 "
     end
   end
  end

end