def prompt(message)
  puts "=> #{message}"
end

apr = ""
n = ""
p = ""

def calc(p, j, n)
  m = p.to_f * (j / (1 - (1 + j)**-n.to_i))
end

def monthly_interest_rate(percentage)
  percentage.to_f / 100 / 12
end

prompt "Welcome to The Mortgage/Loan Calculator."

loop do
  prompt "Please enter a loan amount: "
  p = gets.chomp
  if p.empty? || p.to_f < 0
    prompt "Please enter an amount in dollars and/or cents"
  else
    break
  end
end

loop do
  prompt "Please enter your desired annual percentage rate: "
  apr = gets.chomp
  if apr.empty? || apr.to_f < 0
    prompt "Please enter valid percentage"
  else
    break
  end
end

loop do
  prompt "Lastly, please enter the loan duration in months: "
  n = gets.chomp
  if n.empty? || n.to_i < 0
    prompt "Please enter a valid percentage"
  else
    break
  end
end

j = monthly_interest_rate apr

result = calc(p, j, n)
puts "Congratulations, your monthly payment is only $#{result}!!"
