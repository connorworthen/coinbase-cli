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
    puts (" 3. ") + "Return to main menu."
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
         all_bios
      when "2"
         puts ""
         price_bios
      when "3"
        puts ""
        menu
      when "4"
         puts "Thank  you  for  using  my very own Coinbase CLI"
         break
         else
         puts "That option does not exist. Please select a number from 1 - 4 "
     end
   end
  end
  
  def all_bios
    Coin.all.each.with_index(1) do |coin, index|
      puts "#{index}. #{coin.name}"
    end
    input = " "
    while input != '0'
      puts ""
      puts "Choose a Devil Fruit(#1-3) to see its abilities!"
      puts "If you would like to go back to the menu, type '0'"
      bios = Coin.all
      input = gets.strip.to_i
        if (1..Coin.all.length).include?(input)
          coins = bios[input - 1]
          puts "#{coins.description}"
          elsif input < 1 || input > 5
            break
        end
      end
  end
  
  def price_bios
    Coin.all.each.with_index(1) do |coin, index|
      puts "#{index}. #{coin.name}"
    end
    input = " "
    while input != '0'
      puts ""
      puts "Choose a Devil Fruit(#1-3) to see its abilities!"
      puts "If you would like to go back to the menu, type '0'"
      bios = Coin.all
      input = gets.strip.to_i
        if (1..Coin.all.length).include?(input)
          coins = bios[input - 1]
          puts "#{coins.price}"
          elsif input < 1 || input > 5
            break
        end
      end
  end
  
  def description
    puts "test"
  end
  
  def market_cap
    puts "test"
  end

end
  
