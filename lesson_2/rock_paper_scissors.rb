VALID_CHOICES = %w("rock", "paper", "scissors")

def test_method
  prompt('test message')
end

def prompt(message)
  puts("=> #{message}")
end

def display_results(player, computer)
  if (player == "rock" && computer == "scissors") ||
     (player == "paper" && computer == "rock") ||
     (player == "scissors" && computer == "paper")
    prompt "YOU WIN!"
  elsif (player == "scissors" && computer == "rock") ||
        (player == "rock" && computer == "paper") ||
        (player == "paper" && computer == "scissors")
    prompt "Computer won."
  else
    prompt "It's a draw."
  end
end

loop do
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp
    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("Not a valid choice.")
    end
  end
  computer_choice = VALID_CHOICES.sample

  prompt("You chose #{choice}, the computer chose #{computer_choice}.")

  display_results(choice, computer_choice)

  prompt("play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?("y")
end

prompt "Thanks for playing."
