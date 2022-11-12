require 'colorize'

class Display
  def initialize
    @hearts2 = "♥♥♥♥♥"
    @hearts1 = "♥♥♥♥♥"
  end

  def loselife
    if @hearts1.include?("♥")
      @hearts1.chop!
      @hearts1 += " "
    else
      @hearts2.chop!
      @hearts2 += " "
    end
  end
  

  def title
    %{
    ██   ██  █████  ███    ██  ██████  ███    ███  █████  ███    ██ 
    ██   ██ ██   ██ ████   ██ ██       ████  ████ ██   ██ ████   ██ 
    ███████ ███████ ██ ██  ██ ██   ███ ██ ████ ██ ███████ ██ ██  ██ 
    ██   ██ ██   ██ ██  ██ ██ ██    ██ ██  ██  ██ ██   ██ ██  ██ ██ 
    ██   ██ ██   ██ ██   ████  ██████  ██      ██ ██   ██ ██   ████ 
    }
  end

  def main(mr, display_array, alphabet)
    %{
        #{@hearts2.red}   __________    #{display_array}  (#{display_array.split(" ").length} letter word)
        #{@hearts1.red}  |          |                                                                     
               O          |                                                                    
              /|\\       ██   ██  █████  ███    ██  ██████  ███    ███  █████  ███    ██       
               |        ██   ██ ██   ██ ████   ██ ██       ████  ████ ██   ██ ████   ██        
              / \\       ███████ ███████ ██ ██  ██ ██   ███ ██ ████ ██ ███████ ██ ██  ██        
      Moves             ██   ██ ██   ██ ██  ██ ██ ██    ██ ██  ██  ██ ██   ██ ██  ██ ██        
      Remaining: #{mr.to_s.red}      ██   ██ ██   ██ ██   ████  ██████  ██      ██ ██   ██ ██   ████ 

      #{alphabet.join(" ")}
    }
  end
end