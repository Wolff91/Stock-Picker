def buying_stock(prices)
    buy = 0 
    sell = 0
    profit = 0
    prices.each_with_index do |buy_price, buy_day|
      prices.each_with_index do |sell_price, sell_day|
        if sell_day > buy_day
          if sell_price - buy_price > profit
            profit = sell_price - buy_price
            buy = buy_day
            sell = sell_day
          end
        end
      end
    end
    puts "For maximum profit, buy on day #{buy} and sell on day 
    #{sell} which will give you a profit of #{profit}"
    
    
    end
    
    buying_stock([17,3,6,9,15,8,6,1,10])