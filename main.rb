def stock_picker(array)
  profit = 0
  buy_day_index = 0
  sell_day_index = 0

  array.each_with_index do |day, index|
    array.each_with_index do |next_day, next_index| 
      if (next_day - day > profit) && (index < next_index)
        buy_day_index = index
        sell_day_index = next_index
        profit = next_day - day
      end
    end
  end

  [buy_day_index, sell_day_index]

end

p stock_picker([17,3,6,9,15,8,6,1,10])