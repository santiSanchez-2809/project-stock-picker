def stock_picker(prices)
  max_profit = 0
  buying_day = 0
  selling_day = 0

  prices.each_with_index do |buying_price, day|

    remaining_days = prices[day, prices.length - day]

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

def stock_picker2(prices)
  min_price = prices[0]
  min_day = 0

  max_profit = 0
  buy_day = 0
  sell_day = 0

  prices.each_with_index |price, day|
    profit = price - min_price

    if profit > max_profit
      max_profit = max_profit
      buy_day = min_day
      sell_day = day
    end

    if price < min_price
      min_price = price
      min_day = day
    end
  end

  [buy_day, sell_day]
end