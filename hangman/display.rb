require 'colorize'

class Display

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
        #{"♥♥♥♥♥".red}   __________    #{display_array}  (#{display_array.split(" ").length} letter word)
        #{"♥♥♥♥♥".red}  |          |                                                                     
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