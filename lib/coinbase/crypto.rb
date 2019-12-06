require "pry"

class Crypto
  
  attr_accessor :name, :short_code, :price, :url, :market_cap, :description
  
  @@all = []
 
  def initialize(crypto_hash)
    crypto_hash.each do |feature, value|
      self.send("#{feature}=", value)
    end
    @@all << self
  end

  def self.list(crypto_hash_array)
    crypto_array.each do |crypto_hash|
    Crypto.new(crypto_hash)
    end
  end

  def self.description(single, description)
    if single.description.nil?
    single.description = description
    end
  end

  def self.name(shortcode)
    single = self.all.detect{|c| c.short_code == shortcode}
  end

  def self.all
    @@all
  end

end