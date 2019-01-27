#Easy_3

def prompt(message)
  puts "==> #{message}: "
end

#1
def question_one
  #repeating prompt method bc I feel like it okay
  def prompt(message)
    puts "==> #{message}: "
  end

  def suffix(number)
    if number == 1
      "st"
    elsif number == 2
      "nd"
    elsif number == 3
      "rd"
    else
      "th"
    end
  end

  index = 1
  array = []
  loop do
    break if index == 6
    prompt "Enter the #{index}#{suffix(index)} number"
    array << answer = gets.chomp.to_i
    index += 1
  end

  prompt "Enter the last number"
  last = gets.chomp.to_i
  if array.include?(last)
    prompt "The number #{last} appears in #{array}"
  else
    prompt "The number #{last} does not appear in #{array}"
  end
end

#2
prompt "Enter the first number"
first_num = gets.chomp.to_i
prompt "Enter the second number"
second_num = gets.chomp.to_i

prompt "#{first_num} + #{second_num} = #{first_num+second_num}"
prompt"#{first_num} - #{second_num} = #{first_num-second_num}"
prompt "#{first_num} * #{second_num} = #{first_num*second_num}"
prompt "#{first_num} / #{second_num} = #{first_num/second_num}"
prompt "#{first_num} % #{second_num} = #{first_num%second_num}"
prompt "#{first_num} ** #{second_num} = #{first_num**second_num}"
#3
def question_three
prompt "Please write word or multiple words"
entry = gets.chomp
array = entry.split("")
array.delete_if { |element| element == " " }
array.join.size
puts "There are #{array.size} characters in \"#{entry}\"."
end

#4
def multiply(num1, num2)
  num1 * num2
end
#5
def square(num)
  multiply(num,num)
end
#power
def power(num, n)
  multiply(num, num**(n-1))
end

=begin
 practice below
def power_to_nth(num,n)
  counter = 1
  if n == 0
    1
  elsif n == 1
    num
  else
    loop do
      break if counter == n
      multiply(num,num)
=end

#6
def xor?(arg1, arg2)
  if arg1 == true && arg2 == false
    true
  elsif arg1 == false && arg2 == true
    true
  else
    false
  end
end

#7
def oddities(array)
  new_array = []
  array.each_with_index do |element,index|
    new_array << element if index.even?
  end
  new_array
end
#8
def palindrome?(string)
  string == string.reverse
end

#9
def real_palindrome?(string)
new_string = string.downcase.split("").select do |letter|
  ("a".."z").include?(letter) || ("1".."9").include?(letter)
  end
  #new_string.join == new_string.join.reverse
  palindrome?(new_string.join)
end

#10
def palindromic_number?(integer)
  string_integer = '0%o' % integer
  loop do
    string_integer.slice!(0)
    break if string_integer.start_with?("0") == false
  end
    palindrome?(string_integer)
end
