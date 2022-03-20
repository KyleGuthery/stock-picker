def stock_picker(stocks)
  biggest_change = 0
  new_arr = Array.new
  stocks.each_index do |index|
    stocks.each_index do |comparison|
      if comparison > index
        change = stocks[comparison] - stocks[index]
        if change > biggest_change
          biggest_change = change
          new_arr = [index, comparison]
        end
      end
    end
  end
  p "Best change is #{biggest_change}"
  p "New array is #{new_arr}"
  return new_arr
end

stock_picker([17,3,6,9,15,8,6,1,10])