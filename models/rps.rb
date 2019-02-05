

class Rps

  def initialize(option1, option2)
    @option1 = option1.downcase
    @option2 = option2.downcase
  end

  def play()
    if (@option1 == "rock" && @option2 == "scissors") || (@option1 == "scissors" && @option2 == "paper") || (@option1 == "paper" && @option2 == "rock")
      return "Player 1 wins!"
    elsif (@option2 == "rock" && @option1 == "scissors") || (@option2 == "scissors" && @option1 == "paper") || (@option2 == "paper" && @option1 == "rock")
      return "Player 2 wins!"
    elsif (@option1 == "rock" && @option2 == "rock") || (@option1 == "paper" && @option2 == "paper") || (@option1 == "scissors" && @option2 == "scissors")
      return "It's a draw!"
    else
      return "Sorry, those are not valid choices - please try again!"
    end
  end
end
