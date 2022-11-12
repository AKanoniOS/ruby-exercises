class Game 

  word_list = File.readlines("1000Words.txt")

  secret_word = word_list.sample {|word| word.length > 4 && word.length < 13}

  puts secret_word
end