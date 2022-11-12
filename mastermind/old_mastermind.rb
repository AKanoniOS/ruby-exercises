class Game

  class Player

  end

  class Computer
    def initialize
      @code = 4.times.map { (0..9).to_a.sample }.join
      @code_array = @code.split("")
    end
    
    attr_reader :code
    attr_accessor :unhide_code
  
    

    def unhide_code
      a = "****"
    end

    def guess_easy(input)
      array = input.split("")
      array.pop
      i = 0
      4.times do
        if array[i] == @code_array[i]
          puts "🟩#{array[i]}" 
        elsif @code.include?(array[i])
          puts "🟧#{array[i]}"
        else
          puts "⬜️#{array[i]}"
        end
        i += 1
      end
    end

    def guess_hard(input)
      array = input.split("")
      array.pop
      i = 0

      feedback = []

      4.times do
        if array[i] == @code_array[i]
          feedback << "🟩" 
        elsif @code.include?(array[i])
          feedback << "🟧"
        else
          feedback << "⬜️"
        end
        i += 1
      end

      result = feedback.shuffle
      puts "#{result[0]}#{result[1]}"
      puts "#{result[0]}#{result[1]}"

    end

  end

  class Display
    def initialize
      @name = display
    end

    def rules_easy
      puts "\nTry to guess the computer's secret 4 digit code in less than 12 turns."
      puts "If you see a 🟩 next to your guess digit, that means it's correct AND in the correct spot."
      puts "If you see a 🟧, that means it's correct."
      puts "If you see a ⬜️, that means it's incorrect."
    end

    def rules_hard
      puts "\nTry to guess the computer's secret 4 digit code in less than 12 turns."
      puts "If you see a 🟩 that means you got a number correct AND in the correct spot."
      puts "If you see a 🟧 that means you guessed a correct number."
      puts "If you see a ⬜️ that means you guessed an incorrect number."
    end
  end

  public
  def play_easy

    puts "do you want to be the code [1]breaker or [2]maker?"
    mode = gets.chomp

    if mode == "1"
      turns = 0

      display1 = Display.new
      computer = Computer.new

      display1.rules_easy

      while turns < 13
        puts "\nGuess the computer's 4 number secret code:"
        
        guess = gets

        computer.guess_easy(guess)

        if guess.to_i == (computer.code).to_i
          puts "you guessed it"
          exit
        end

        turns += 1
      end
    elsif mode == "2"
      puts "you chose maker"
      exit
    else
      puts "Error Error"
      exit
      
    end
  end  


  public
  def play_hard
    puts "do you want to be the code [1]breaker or [2]maker?"
    mode = gets.chomp

    if mode == "1"
      turns = 0

      display = Display.new
      computer = Computer.new

      display.rules_hard

      while turns < 13
        puts "\nGuess the computer's 4 number secret code:"
        
        guess = gets.chomp

        puts computer.code

        computer.guess_hard(guess)

        if guess.to_i == (computer.code).to_i
          puts "you guessed it"
          exit
        end
        turns += 1
      end

    elsif mode == "2"
      puts "you chose maker"
      exit
    else
      puts "error error"
      exit
    end

  end
  
end

game = Game.new
game.play_hard

puts "Which difficulty would you like? 1[easy] or 2[hard]."
difficulty = gets.chomp
if difficulty == "1"
  game.play_easy
elsif difficulty == "2"
  game.play_hard
else
  puts "error, goodbye"
  exit
end