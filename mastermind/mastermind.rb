class Game

  class Computer
    def initialize
      @code = 4.times.map { (0..9).to_a.sample }.join
      @code_array = @code.split("")
    end
    
    attr_reader :code, :code_array
  end

  class Guesser(source)
    def initialize
      @code = source.code
      @code_array = source.code_array
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
  end

  class Round
    turns = 0
    computer = Computer.new
    guesser = Guesser.new(computer)
    while turns < 13
      puts "Guess the code:"
      guess = gets.chomp
      guesser.guess_easy(guess)

      if guess.to_i == (computer.code).to_i
        puts "you guessed it"
        exit
      end

      turns += 1
    end
  end

  def play
    round = Round.new
  end
end

game = Game.new

game.play