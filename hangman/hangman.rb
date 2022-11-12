require_relative("text.rb")

class Game 

  text = Text.new

  word_list = File.readlines("1000Words.txt")

  pruned_word_list = word_list.map{|word| word.length > 4 && word.length < 13}
  secret_word = word_list.sample
  secret_word.downcase!
  secret_word_array = secret_word.split("")
  secret_word_array.pop

  moves_remaining = 10

  display_array = Array.new(secret_word.length-1, "_")

  puts display_array.join(" ")

  while moves_remaining != 0
    puts "enter a letter to guess:"
    guess = gets.chomp
    guess.downcase!

    if guess == display_array.join(" ")
      puts "You guessed it"
      exit
    end
    
    puts moves_remaining

    secret_word_array.each_with_index {
      |item, index|
      if item == guess
        display_array[index] = item
      end
    }

    # pp secret_word_array.join(" ")
    pp display_array.join(" ")

    moves_remaining -= 1

    puts text.someText
  end
end