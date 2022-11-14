require 'colorize'

class Display
  def initialize(secret_word = '', moves_remaining = 9)
    @secret_word = secret_word
    if moves_remaining == 9
      @hearts3 = '♥♥♥'
      @hearts2 = '♥♥♥'
      @hearts1 = '♥♥♥'
    elsif moves_remaining == 8
      @hearts3 = '♥♥♥'
      @hearts2 = '♥♥♥'
      @hearts1 = '♥♥ '
    elsif moves_remaining == 7
      @hearts3 = '♥♥♥'
      @hearts2 = '♥♥♥'
      @hearts1 = '♥  '
    elsif moves_remaining == 6
      @hearts3 = '♥♥♥'
      @hearts2 = '♥♥♥'
      @hearts1 = '   '
    elsif moves_remaining == 5
      @hearts3 = '♥♥♥'
      @hearts2 = '♥♥ '
      @hearts1 = '   '
    elsif moves_remaining == 4
      @hearts3 = '♥♥♥'
      @hearts2 = '♥  '
      @hearts1 = '   '
    elsif moves_remaining == 3
      @hearts3 = '♥♥♥'
      @hearts2 = '   '
      @hearts1 = '   '
    elsif moves_remaining == 2
      @hearts3 = '♥♥ '
      @hearts2 = '   '
      @hearts1 = '   '
    elsif moves_remaining == 1
      @hearts3 = '♥  '
      @hearts2 = '   '
      @hearts1 = '   '
    elsif moves_remaining == 0
      @hearts3 = '   '
      @hearts2 = '   '
      @hearts1 = '   '
    else
      @hearts3 = '   '
      @hearts2 = '   '
      @hearts1 = '   '
    end
  end

  def loselife
    if @hearts1.include?('♥')
      @hearts1.slice!('♥')
      @hearts1 += ' '
    elsif @hearts2.include?('♥')
      @hearts2.slice!('♥')
      @hearts2 += ' '
    else
      @hearts3.slice!('♥')
      @hearts3 += ' '
    end
  end

  def title
    %(
    ██   ██  █████  ███    ██  ██████  ███    ███  █████  ███    ██ 
    ██   ██ ██   ██ ████   ██ ██       ████  ████ ██   ██ ████   ██ 
    ███████ ███████ ██ ██  ██ ██   ███ ██ ████ ██ ███████ ██ ██  ██ 
    ██   ██ ██   ██ ██  ██ ██ ██    ██ ██  ██  ██ ██   ██ ██  ██ ██ 
    ██   ██ ██   ██ ██   ████  ██████  ██      ██ ██   ██ ██   ████ 
    ).red
  end

  def main(mr, display_array, alphabet)
    %{
        #{@hearts3.red}
        #{@hearts2.red}     ________    #{display_array}  (#{display_array.split(' ').length} letter word)
        #{@hearts1.red}    |        |
               O        |
              /|\\       #{'██   ██  █████  ███    ██  ██████  ███    ███  █████  ███    ██'.red}
               |        #{'██   ██ ██   ██ ████   ██ ██       ████  ████ ██   ██ ████   ██'.red}
              / \\       #{'███████ ███████ ██ ██  ██ ██   ███ ██ ████ ██ ███████ ██ ██  ██'.red}
      Moves             #{'██   ██ ██   ██ ██  ██ ██ ██    ██ ██  ██  ██ ██   ██ ██  ██ ██'.red}
      Remaining: #{mr.to_s.red}      #{'██   ██ ██   ██ ██   ████  ██████  ██      ██ ██   ██ ██   ████'.red}

      #{alphabet.join(' ')}
    }
  end

  def reveal
    "the word was #{@secret_word.upcase!.blue}"
  end

  def win
    'YOU WIN!!!'.green
  end
end
