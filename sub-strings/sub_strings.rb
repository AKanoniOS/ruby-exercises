dictionary = ["be","be","be","below","below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
input = "below"



def sub_string(input, array)
  result = Hash.new
  
  array.each {
    |item|

    if result.include?(item)
      result[item] += 1
    else
      result[item] = input.scan(item).count if input.scan(item).count > 0
    end
  }

  puts result
end

sub_string(input, dictionary)