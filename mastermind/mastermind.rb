class Game

<<<<<<< HEAD
=======
  def initialize
    diffs = ["easy","hard"]
    @difficulty = diffs[0]
  end

  class Player

  end

>>>>>>> 8cc3734641a3d55670590eab3260ad389f87a11a
  class Computer
    def initialize
      @code = 4.times.map { (0..9).to_a.sample }.join
      @code_array = @code.split("")
    end
    
<<<<<<< HEAD
    attr_reader :code, :code_array
  end

  class Guesser(source)
    def initialize
      @code = source.code
      @code_array = source.code_array
    end

    def guess_easy(input)
=======
    attr_reader :code
    attr_accessor :unhide_code

    

    def unhide_code
      a = "****"
    end

    def display_guessed(input)
>>>>>>> 8cc3734641a3d55670590eab3260ad389f87a11a
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
<<<<<<< HEAD
  end

  class Round
    turns = 0
    computer = Computer.new
    guesser = Guesser.new(computer)
    while turns < 13
      puts "Guess the code:"
      guess = gets.chomp
      guesser.guess_easy(guess)
=======

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
      
      guess = gets

      tries.push(guess)
      computer.display_guessed(guess)
>>>>>>> 8cc3734641a3d55670590eab3260ad389f87a11a

      if guess.to_i == (computer.code).to_i
        puts "you guessed it"
        exit
      end

      turns += 1
<<<<<<< HEAD
    end
  end

  def play
    round = Round.new
  end
=======

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

>>>>>>> 8cc3734641a3d55670590eab3260ad389f87a11a
end

game = Game.new

game.play