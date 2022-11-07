class Game

  def initialize

  end

  class Board
    def initialize
      @spaces = [1,2,3,4,5,6,7,8,9]
      #Naturally, an object (instance of a class) can't see instance variables of another object (the class). 
      #Instead, you can set it on the instance level
    end
    
    attr_reader :spaces

    def draw
      puts "__________________"
      puts "|     |     |     |"
      puts "|  #{@spaces[0]}  |  #{@spaces[1]}  |  #{@spaces[2]}  |"
      puts "|_____|_____|_____|"
      puts "|     |     |     |"
      puts "|  #{@spaces[3]}  |  #{@spaces[4]}  |  #{@spaces[5]}  |"
      puts "|_____|_____|_____|"
      puts "|     |     |     |"
      puts "|  #{@spaces[6]}  |  #{@spaces[7]}  |  #{@spaces[8]}  |"
      puts "|_____|_____|_____|"

    end

    def update(input, symbol)
      @spaces.each_index {
        |i|
        if input == @spaces[i]
          @spaces[i] = symbol
        end
      }
    end
  end

  class Player
    def initialize(symbol)
      @symbol = symbol
    end
  end

  def play_game
    board = Board.new
    turn_count = 1

    def find_winner(board, symbol)
      array = board.spaces
      if symbol == "X"
        if array[0] == "X" && array[1] == "X" && array[2] == "X"
          puts "Player 1 is the winner"
          exit
        end
        if array[3] == "X" && array[4] == "X" && array[5] == "X"
          puts "Player 1 is the winner"
          exit
        end
        if array[6] == "X" && array[7] == "X" && array[8] == "X"
          puts "Player 1 is the winner"
          exit
        end
        if array[0] == "X" && array[3] == "X" && array[6] == "X"
          puts "Player 1 is the winner"
          exit
        end
        if array[1] == "X" && array[4] == "X" && array[7] == "X"
          puts "Player 1 is the winner"
          exit
        end
        if array[2] == "X" && array[5] == "X" && array[8] == "X"
          puts "Player 1 is the winner"
          exit
        end
        if array[0] == "X" && array[4] == "X" && array[8] == "X"
          puts "Player 1 is the winner"
          exit
        end
        if array[2] == "X" && array[4] == "X" && array[6] == "X"
          puts "Player 1 is the winner"
          exit
        end
      else
        if array[0] == "O" && array[1] == "O" && array[2] == "O"
          puts "Player 2 is the winner"
          exit
        end
        if array[3] == "O" && array[4] == "O" && array[5] == "O"
          puts "Player 2 is the winner"
          exit
        end
        if array[6] == "O" && array[7] == "O" && array[8] == "O"
          puts "Player 2 is the winner"
          exit
        end
        if array[0] == "O" && array[3] == "O" && array[6] == "O"
          puts "Player 2 is the winner"
          exit
        end
        if array[1] == "O" && array[4] == "O" && array[7] == "O"
          puts "Player 2 is the winner"
          exit
        end
        if array[2] == "O" && array[5] == "O" && array[8] == "O"
          puts "Player 2 is the winner"
          exit
        end
        if array[0] == "O" && array[4] == "O" && array[8] == "O"
          puts "Player 2 is the winner"
          exit
        end
        if array[2] == "O" && array[4] == "O" && array[6] == "O"
          puts "Player 2 is the winner"
          exit
        end
      end
    end

    player_1 = "X"
    player_2 = "O"

    while board.spaces.any? {|item| item.is_a? Numeric}
      if turn_count.odd? #if player 1
        board.draw
        puts "Player 1, where would you like to go?"
        board.update(gets.to_i, "X")
        board.draw
        turn_count += 1
        find_winner(board, "X")
      else #if player 2
        board.draw
        puts "Player 2, where would you like to go?"
        board.update(gets.to_i, "O")
        board.draw
        turn_count += 1
        find_winner(board, "O")
      end
    end
    
  end

end

game = Game.new
game.play_game