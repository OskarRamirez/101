#1
def teddys_age
puts "enter name"
name = gets.chomp
name = "Teddy" if name == ""
"#{name} is #{rand(20..200)} years old!"
end

#2
SQMETERS_TO_SQFEET = 10.7639
#round method (a method of the Float class), which is used to round our
# results to the nearest 2 decimal places. (You can also use Kernel#format
# to format the results, but format is harder to use.)

def room_size
  puts "Enter the length of the room in meters:"
  length = gets.chomp.to_i
  puts "Enter the width of the room in meters:"
  width = gets.chomp.to_i
  square_meters = length * width
  square_feet = square_meters * 10.7639
  puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
end

#3-Tip calculator
def prompt(message)
  puts "=> #{message}"
end

def tip_calculator
  puts "what is the bill amount?"
  bill = gets.chomp.to_i
  puts "What is the tip percentage?"
  tip_percentage = gets.chomp.to_f
  tip = (bill * (tip_percentage / 100)).round(2)
  total = (tip+bill).round(2)
  puts "The tip is $#{tip}."
  puts "The total is $#{total}"
end

#4-When will I Retire?
def retirement
  puts "What is your age?"
  age = gets.chomp.to_i
  puts "At what age do you want to retire?"
  retirement_age = gets.chomp.to_i
  birth_year = (2018 - age)
  puts "It's 2018, you will retire in #{birth_year+retirement_age}"
  puts "You only have #{retirement_age - age} years to go!"
end

#5
def greeting
  puts "What is your name"
  name = gets.chomp
  if name[-1] == "!"  #not name.include?("!") because position matters in this problem
    puts "HELLO #{name.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{name}."
  end
end

#6-Odd Numbers
(0..100).select { |number| puts number if number.odd? }

#7-Even Numbers
(0..100).select { |num| puts num if num.even? }

#8-Sum or Product of Consecutive Integers

def sum_or_product
  multiply = 1
  p ">> Please enter an integer greater than 0:"
  number = gets.chomp.to_i
  p ">> Enter 's' to compute the sum, 'p' to compute the product."
  operation = gets.chomp
  if operation == "s"

    puts "The sum of the integers between 1 and #{number} is #{(1..number).sum}"
  elsif operation == "p"
    (1..number).each { |num| multiply*=num}
    multiply
    puts "The product of the integers between 1 and #{number} is #{multiply}"
  end
end

#9
name = 'Bob'
save_name = name
name = 'Alice'
puts name, save_name
#Prints
# Alice
# Bob
name = 'Bob'
save_name = name
name.upcase!
puts name, save_name #Each print BOB

#10
array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

#Both array 1 and array 2 would print out these names with modified values
#since they share the same references.   
