stock_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(arr)
  max_profit = 0
  min_price = arr[0]
  min_index = 0
  sell_day = 0
  buy_day = 0

  arr.each_with_index do |current_price, index|
    
    if min_price > current_price
      min_price = current_price
      min_index = index
    end

    profit = current_price - min_price

    if profit > max_profit
      max_profit = profit
      sell_day = index
      buy_day = min_index
      
    end

  end
  
  return [buy_day, sell_day, "profit: #{max_profit}"]
end

p stock_picker(stock_array)