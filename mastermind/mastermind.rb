class Game

  def initialize
    diffs = ["easy","hard"]
    @difficulty = diffs[0]
  end

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

    def display_guessed(input)
      array = input.split("")
      array.pop
      array.each_index {
        |i|
        if array[i] == @code_array[i]
          puts "🟩#{array[i]}" 
        elsif @code.include?(array[i])
          puts "🟧#{array[i]}"
        else
          puts "⬜️#{array[i]}"
        end
      }
    end

  end

  class Display
    def rules
      puts "\nTry to guess the computer's secret 4 digit code in less than 12 turns."
      puts "If you see a 🟩 next to your guess digit, that means it's correct AND in the correct spot."
      puts "If you see a 🟧, that means it's correct."
      puts "If you see a ⬜️, that means it's incorrect."
    end
  end

  def play
    
    turns = 0

    display = Display.new
    computer = Computer.new
    tries = []

    display.rules

    while turns < 13
      puts "\nGuess the computer's 4 number secret code:"
      p computer.unhide_code
      guess = gets
      tries.push(guess)
      computer.display_guessed(guess)

      if guess.to_i == (computer.code).to_i
        puts "you guessed it"
        exit
      end

      turns += 1

      def display_guesses(array)
        tries = array
        tries.each_with_index{
          |x, i|
          puts "#{i+1} #{x}"
        }
      end

      # display_guesses(tries)
    end
  end

end

game = Game.new

game.play