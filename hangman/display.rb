
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

  def main(mr, display_array)
    %{
                __________    #{display_array}
               |          |
               O          |
              /|\\       ██   ██  █████  ███    ██  ██████  ███    ███  █████  ███    ██ 
               |        ██   ██ ██   ██ ████   ██ ██       ████  ████ ██   ██ ████   ██ 
              / \\       ███████ ███████ ██ ██  ██ ██   ███ ██ ████ ██ ███████ ██ ██  ██ 
      Moves             ██   ██ ██   ██ ██  ██ ██ ██    ██ ██  ██  ██ ██   ██ ██  ██ ██ 
      Remaining: #{mr}      ██   ██ ██   ██ ██   ████  ██████  ██      ██ ██   ██ ██   ████ 
    }
  end
end