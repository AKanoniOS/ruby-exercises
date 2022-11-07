class Player
  def initialize(name, symbol)
    @name = name
    @symbol = symbol
  end

  attr_reader :name
  attr_reader :symbol
end

class Board
  def initialize
    @spaces = [1,2,3]
  end

  public
  def draw_board
    puts "___________________"
    puts "|     |     |     |"
    puts "|  #{@spaces[0]}  |  #{@spaces[1]}  |  #{@spaces[2]}  |"
    puts "|_____|_____|_____|"
  end

  public
  def update_space(space, symbol)
    @spaces.each_index {
      |i|
      if @spaces[i] == space
        @spaces[i] = symbol
        p @spaces
      end
    }
  end
end

$board = Board.new

def play_game
  puts "Player 1, what is your name?"
  name = gets
  puts "#{name}, what is your symbol?"
  symbol = gets
  player_1 = Player.new(name, symbol)

  puts "Player 2, what is your name?"
  name = gets
  puts "#{name}, what is your symbol?"
  symbol = gets
  player_2 = Player.new(name, symbol)

  $board.draw_board
  puts "#{player_1.name}, where would you like to go?"
  $board.update_space(gets.chomp, "S")
  $board.draw_board
  puts "#{player_2.name}, where would you like to go?"
  $board.update_space(gets.chomp, player_2.symbol)
  $board.draw_board
  
end

play_game()