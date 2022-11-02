my_array = [4,3,78,2,0,2]

def bubble_sort(array)

  result = array.map {|item| item}
  index = 0
  
  (array.length-1).times do
    (array.length-1).times do
      if result[index] > result[index+1]
        result[index], result[index+1] = result[index+1], result[index]
      end
      index += 1
      if index == array.length-1
        index = 0
      end
    end
  end
  p result
end

bubble_sort(my_array)