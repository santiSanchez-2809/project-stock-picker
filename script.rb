def stock_picker(stock_prices)
  max_profit = 0
  buying_day = 0
  selling_day = 0

  stock_prices.each_with_index do |buying_price, day|

    remaining_days = stock_prices[day, stock_prices.length - day]

    max_profit_for_day = 0
    best_selling_day = 0

    remaining_days.each_with_index do |selling_price, selling_day|
      if selling_price - buying_price > max_profit_for_day
        max_profit_for_day = selling_price - buying_price
        best_selling_day = selling_day
      end
    end

    if max_profit_for_day > max_profit
      max_profit =  max_profit_for_day
      buying_day = day
      selling_day = best_selling_day + best_selling_day
    else
    end
  end

  [buying_day, selling_day]
end