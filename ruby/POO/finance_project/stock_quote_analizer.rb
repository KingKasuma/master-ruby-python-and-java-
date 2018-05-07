require 'csv'

class StockQuoteAnalizer
  def self.symbol_lookup(symbol)
    begin
      CSV.read("#{symbol}.csv")
    rescue StandardError => e
      puts e
    end
  end

  def self.average_price(symbol)
    quotes = symbol_lookup(symbol)
    prices = quotes.map do |quote|
      quote[2].to_f
    end
    analysis = prices.inject(:+) / prices.length
    puts analysis
  end
end
StockQuoteAnalizer.average_price('MSFT')
