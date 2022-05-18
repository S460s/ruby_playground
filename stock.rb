prices = [17, 3, 6, 9, 15, 8, 6, 1, 2]

def stock_picker(prices)
  best_combo = { profit: 0, buy: 0, sell: 0 }

  for i in 0...prices.length
    for j in i...(prices.length)
      next unless prices[j] - prices[i] > best_combo[:profit]

      best_combo[:buy] = i
      best_combo[:sell] = j
      best_combo[:profit] = prices[j] - prices[i]
    end
  end

  best_combo
end

p stock_picker(prices)
