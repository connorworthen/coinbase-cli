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
    puts "their current rates, descriptions, and facts about cryptocurrencies."
    puts ""
    puts "---------------------------"
    puts "Select a number from 1 - 5"
    puts "---------------------------"
    puts ""
    puts (" 1. ") + "Enter 1, to see current prices of the top 5 cryptocurrencies."
    puts (" 2. ") + "Enter 2, to see the description of the top 5 cryptocurrencies."
    puts (" 3. ") + "Enter 3, to see 3 facts about cryptocurrencies"
    puts (" 4. ") + "Enter 4, to see where to buy and trade cryptocurrencies."
    puts (" 5. ") + "Enter 5, to return to the menu."
    puts (" 6. ") + "Enter 6, to exit the program."
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
         price_bios
      when "2"
         puts ""
         all_bios
      when "3"
        puts ""
        facts
      when "4"
        buy
      when "5"
        menu
      when "6"
         puts "Thank  you  for  using  my very own Coinbase CLI and happy trading!"
         exit
        # break
        # else
        # puts "That option does not exist. Enter 5, to return to the main menu or 6 to exit the program! "
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
      puts "Enter the coins number to see the coins description"
      puts "or if you would like to go back to the menu, press enter, then type '5'"
      input = gets.strip.to_i
        if (1..Coin.all.length).include?(input)
          coin = Coin.all[input - 1]
          Scraper.scrape_description(coin)
          puts "#{coin.description}"
          elsif input < 1 || input > 5
            break
            else
         puts "That option does not exist. Enter 5, to return to the main menu or 6 to exit the program! "
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
      puts "Enter the coins number to see the coins current rates"
      puts "or if you would like to go back to the menu, press enter, then type '5'"
      bios = Coin.all
      input = gets.strip.to_i
        if (1..Coin.all.length).include?(input)
          coins = bios[input - 1]
          puts "#{coins.price}"
          elsif input < 1 || input > 5
            break
            else
         puts "That option does not exist. Enter 5, to return to the main menu or 6 to exit the program! "
        end
      end
  end

  def facts
    puts "1. Cryptocurrencies are extremly volatility which is one of the reasons why many investors choose to steer away from the Crypto-verse. If the value can swing dramatically, it means that you can potentially make large profits, but also large losses."
    puts ""
    puts "2. We all know that the creation of Bitcoin is credited to Satoshi Nakamoto, although we have no idea whatsoever if there’s a single person or a whole group of people behind the pseudonym. The thing is, the mysterious Satoshi Nakamoto never claimed the ownership of the original code, which means that it belongs to everyone… and no-one"
    puts ""
    puts "3. Remember, there’s no way back if you lose your private key(crypto wallet). Once lost, your digital funds will disappear into the giant Crypto-void. Unless hacked, which is virtually impossible considering the structure of blockchain technology, your abandoned e-wallet will be lingering out there somewhere."
    puts ""
    puts "Enter 5, to return to the main menu or 6 to exit the program! "
    puts ""
  end

  def buy
    puts "You can purchase different Cryptocurrencies from coinbase.com! Coinbase offers fiat onramps, or the ability to purchase coins with traditional fiat currencies. Bitcoin, Ethereum, Litecoin, and many more can all be purchased with fiat currencies on Coinbase."
    puts ""
    puts "Enter 5, to return to the main menu or 6 to exit the program! "
    puts ""
  end

end
