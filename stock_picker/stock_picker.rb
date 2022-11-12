
array = [17,3,6,9,15,8,6,1,10]

def stock_picker(array) 
  myHash = {}
  array.each_with_index {
    |item, index|
    array[index..-1].each do 
      |temp| 
      myHash[[item, temp]] = temp - item
    end
  }
  sorted_hash = myHash.sort_by{|k, v| [-v, k]}
  buy = sorted_hash[0][0][0]
  sell = sorted_hash[0][0][1]
  profit = sorted_hash[0][1]

  puts "the buy price is #{buy}, the sell price is #{sell}, and the profit is #{profit}"
end

stock_picker(array)