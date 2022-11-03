def translate(str, num)
  count = num
  #turn str into array
  a = str.split("")
  #turn array into codes
  b = a.map{|item| item.ord}
  c = []
  #for each item, shift the code
  b.each {
    |item| 
    puts item
    if item > 96 && item < 123 #Lowercase Letters
      while count != 0 do
        
        if count > 0
          item += 1
          count -= 1
        elsif count < 0
          item -= 1
          count += 1
        end

        if item == 123
          item = 97
        end
        
        if item == 96
          item = 122
        end

      end
      count = num
    elsif item == 32 #Spaces
      item = 32
    elsif item > 64 && item < 91 #Capital Letters
      while count != 0 do
        
        if count > 0
          item += 1
          count -= 1
        elsif count < 0
          item -= 1
          count += 1
        end

        if item == 91
          item = 65
        end
        
        if item == 64
          item = 90
        end

      end
      count = num
    end
    c << item.chr
  }

  c.join("")
end

puts translate("Aa", 3)