require 'stock_quote'

class HistoricalStockQuote
  STOCK_CLASS = StockQuote::Stock
  def self.historical_price(symbol)
    data = STOCK_CLASS.history(symbol, Time::now-(24*60*60*365), Time.now)
    quotes = data[:history].map do |historical_quote|
      [historical_quote[:date], historical_quote[:close]]
    end
  end

  def self.write_price_by_symbol(symbol, quotes)
    filename = "#{symbol}.csv"
    CSV.open(filename, "w") do |file|
      quotes.each do |quote|
        file << quote
      end
    end
  end
end

price_array = historical_price('AAPL')
write_price_by_symbol('AAPL', price_array)
