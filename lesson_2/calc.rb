=begin
 Ask the user for two numbers
 ask the user for an operation to perform
 Perform the operation on two numbers
 output the result

 answer = Kernal.gets().chomp
 Kernal.puts() answer
=end
def prompt(message)
  puts "=>#{message}"
end

def number?(input)
  integer?(input) || float?(input)
end

def float?(input)
  input.to_f.to_s == input
end

def integer?(input)
  input.to_i.to_s == input
end

def operation_to_message(op)
  choice =  case op
            when "1"
              "additon" # Could add returns to these but you don't have to
            when "2"
              "subtraction"
            when "3"
              "multiplication"
            when "4"
              "division"
            end # Adding another expression like puts would nullify any previous returns
  puts "What up just checking"
  choice
end

prompt"Welcome to Calculator!  Enter your name:"
name = ""
loop do # main loop
  name = gets.chomp
  if name.empty?
    puts "Please enter your name. "
  else
    break
  end
end

puts "Hi #{name}!"
loop do
  num1 = ""
  num2 = ""
  loop do
    prompt "Enter first number: "
    num1 = gets.chomp
    puts num1.inspect
    if number? num1
      break
    else
      prompt "Try again fam"
    end
  end

  loop do
    prompt "Enter second number: "
    num2 = gets.chomp
    if number? num2
      break
    else
      prompt "Don't make me ask you again"
    end
  end

  operator_prompt = <<-MSG
  Which operation would you like to perform?
  1) addition
  2) subtraction
  3) multiplication
  4) division
  MSG
  prompt operator_prompt

  operator = ""
  loop do
    operator = gets.chomp
    if %w(1 2 3 4).include? operator # array of strings
      break
    else
      puts "Enter either 1,2,3, or 4"
    end
  end

  prompt "You chose #{operation_to_message(operator)}"
  result = case operator
           when "1"
             num1.to_f + num2.to_i
           when "2"
             num1.to_f - num2.to_i
           when "3"
             num1.to_f * num2.to_i
           when "4"
             num1.to_f / num2.to_i

           end
  prompt "The answer is: #{result}"
  prompt "Do you want to perform another calculation? "
  answer = gets.chomp
  break unless answer.downcase.start_with? "y"
end

prompt "Thank you for using the calculator"

=begin
answer=num1.to_i+num2.to_i if operation=="1"
answer=num1.to_i-num2.to_i if operation=="2"
answer=num1.to_i*num2.to_i if operation=="3"
answer=num1.to_f/num2.to_i if operation=="4"
=end

=begin
  result = case operator
           when "1"
             num1.to_i+num2.to_i
           when "2"
             num1.to_i-num2.to_i
           when "3"
             num1.to_i*num2.to_i
           when "4"
             num1.to_f/num2.to_i


=end
