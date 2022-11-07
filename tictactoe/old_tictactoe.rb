class Player
  def initialize (name, symbol)
    @name = name
    @symbol = symbol
  end
end

class Board
  @one = 1
  @two = 2
  @three = 3
  @four = 4
  @five = 5
  @six = 6
  @seven = 7
  @eight = 8
  @nine = 9


  def draw_board
    puts "___________________"
    puts "|     |     |     |"
    puts "|  #{@one}  |  #{@two}  |  #{@three}  |"
    puts "|_____|_____|_____|"
    puts "|     |     |     |"
    puts "|  #{@four}  |  #{@five}  |  #{@six}  |"
    puts "|_____|_____|_____|"
    puts "|     |     |     |"
    puts "|  #{@seven}  |  #{@eight}  |  #{@nine}  |"
    puts "|_____|_____|_____|"
  end

  def update_board(symbol, space)
    @one = symbol if space == "1"
    @two = symbol if space == "2"
    @three = symbol if space == "3"
    @four = 4
    @five = 5
    @six = 6
    @seven = 7
    @eight = 8
    @nine = 9
  end
end

puts "Player 1, what is your name?"
player_1_name = gets
puts "#{player_1_name}, what is your symbol?"
player_1_symbol = gets

player_1 = Player.new(player_1_name, player_1_symbol)

puts "Player 2, what is your name?"
player_2_name = gets
puts "#{player_2_name}, what is your symbol?"
player_2_symbol = gets

player_2 = Player.new(player_2_name, player_2_symbol)

board = Board.new()

board.draw_board()

puts "Player 1, where do you want to move?"
board.update_board(player_1_symbol, gets)
board.draw_board()


