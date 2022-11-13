require 'tty-prompt'

class Game

  def play
    prompt = TTY::Prompt.new

    prompt.select("What's your favorite kind of taco shell?", %w(Soft_taco Hard_taco Porque_no_los_dos?))      
  end
end

game = Game.new

game.play