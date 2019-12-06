require 'pry'

class CLI

  def call
    puts "Greetings fellow cyborgs and welcome to my very own Coinbase CLI! In this program, you will be able to view different tradeable cryptocurrencies from coinbase.com."
    start
  end
  
   def start
    puts ""
    make_coins
    display_coins
    more_detail
    closing_time
  end

  def make_coins
    if Coin.all.empty?
      coins_array = Scraper.scrape_index_page
      Coin.create_from_full_list(coins_array)
      Coin.all
    else
      Coin.all
    end
  end

  def display_coins
    Coin.all.each do |coin|
      puts "#{coin.name}" + " - (#{coin.short_code.upcase})"
      puts "  Price:" + " #{coin.price}"
      puts "--------"
    end
  end

  def coin_detail(input)
    single = Coin.find_by_name(input)
    description = Scraper.scrape_description(single.url)
    Coin.update_description(single, description)
    puts "#{single.name}" + " - (#{single.short_code.upcase})"
    puts " Price:" + " #{single.price}"
    puts " Market Cap" + " #{single.market_cap}"
    puts " Description:" + " #{single.description}"
    puts " Coin Website:" + " #{single.url}"
  end

  def more_detail
    puts "To view more specific information on a particular coin, enter the coins shortcode or enter ALL, to see the comprehensive list of all available cryptocurrencies! If you wish to exit the program, enter BYE."
    input = gets.strip.upcase
    if Coin.find_by_name(input)
      coin_detail(input)
    elsif input == "BYE"
      puts "Thank you for stopping by and may the odds be in your favor!"
      exit
    elsif input == "All"
      start
    else
      puts "I cannot understand your input, please try again using the coins shortcode."
      start
    end
  end

  def closing_time
      puts "To access more information on a particular coin enter Y, if not enter N."
      input = gets.strip.downcase
      if input == "y"
        start
      elsif input == "n"
        puts "Thank you for stopping by and may the odds be in your favor!"
        exit
      else
        puts "I cannot understand your input, please try again using the coins shortcode."
        start
      end
  end
  
end