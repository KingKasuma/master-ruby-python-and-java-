require_relative 'stock_quote'

def stock_price_selector(*symbol_array)
  symbol_array.each do |symbol|
    stock_price = StockClass.price_by_symbol(symbol)
    stock_written = StockClass.write_price_by_symbol(symbol, stock_price.latest_price,stock_price.company_name)
  end
end

stock_price_selector('AAPL', 'GOOG', 'MSFT')
