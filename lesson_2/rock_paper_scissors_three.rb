VALID_CHOICES = %w(rock paper scissors spock lizzard)

def prompt(message)
  puts("=> #{message}")
end

def win?(first, second)
  (first == "rock" && second == "scissors") ||
    (first == "paper" && second == "rock") ||
    (first == "rock" && second == "lizard") ||
    (first == "spock" && second == "rock") ||
    (first == "scissors" && second == "paper") ||
    (first == "scissors" && second == "lizzard") ||
    (first == "spock" && second == "scissors") ||
    (first == "lizzard" && second == "spock") ||
    (first == "paper" && second == "spock") ||
    (first == "lizzard" && second == "paper")
end

def display_results(player, computer)
  if win?(player, computer)
    prompt "YOU WIN!"
  elsif win?(computer, player)
    prompt "Computer won."
  else
    prompt "It's a draw."
  end
end

=begin
def first_to_five(user,cpu)
index = 1
while index >=5
  if win?(user,cpu)
  index+=1
  end
end
=end

loop do
  choice = ""
  loop do
    prompt("Choose one: #{VALID_CHOICES.join(', ')}")
    choice = gets.chomp

    if choice.downcase.start_with?("r")
      choice = "rock"
    elsif choice.downcase.start_with?("p")
      choice = "paper"
    elsif choice.downcase.start_with?("l")
      choice = "lizzard"
    elsif choice =~ /sp/
      choice = "spock"
    elsif choice =~ /sc/
      choice = "scissors"
    end

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
