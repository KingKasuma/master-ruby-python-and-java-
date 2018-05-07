# get stock_quote gem to get stock prices
require 'stock_quote'

class StockClass
  def self.price_by_symbol(symbol)
    client = StockQuote::Stock
    return client.quote(symbol)
  end
  def self.write_price_by_symbol(symbol, price, name)
    filename = "#{symbol}.csv"
    todays_date = Time.now.strftime("%Y-%m-%d")
    File.open(filename, "a") do |file|
      file << "#{name},#{todays_date}, #{price}\n"
    end
  end
end
