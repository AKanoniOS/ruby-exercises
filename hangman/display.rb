require 'colorize'

class Display
  def initialize
    @hearts3 = "♥♥♥"
    @hearts2 = "♥♥♥"
    @hearts1 = "♥♥♥"
  end

  def loselife
    if @hearts1.include?("♥")
      @hearts1.slice!("♥")
      @hearts1 += " "
    elsif @hearts2.include?("♥")
      @hearts2.slice!("♥")
      @hearts2 += " "
    else
      @hearts3.slice!("♥")
      @hearts3 += " "
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
        #{@hearts3.red}
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