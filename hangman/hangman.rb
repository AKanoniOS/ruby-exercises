class Game 

  word_list = File.readlines("1000Words.txt")

  pruned_word_list = word_list.filter{|word| word.length > 4 && word.length < 13}
  secret_word = word_list.sample
  secret_word.downcase!
  secret_word_array = secret_word.split("").pop

  moves_remaining = 5

  pp display_array = Array.new(secret_word.length, "_")

  while moves_remaining != 0
    puts "enter a letter to guess:"
    guess = gets.chomp
    guess.downcase!
    guess_word_array = guess.split("")

    
    puts moves_remaining

    guess_word_array.each_with_index {
      |item, index|

    }

    pp secret_word_array
    pp guess_word_array
    pp display_array



    moves_remaining -= 1
  end
end