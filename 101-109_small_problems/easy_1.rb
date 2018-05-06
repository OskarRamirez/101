#1.1-Repeat yourself
def repeat(str,int)
  int.times { puts str }
end

repeat("yo",5)

#1.2-odd
def is_odd?(int)
  int % 2 !== 0
end

puts is_odd?(5)

#3-List of Digits

def digit_list(int)
  array = []
  array = int.to_s.split("")
  array.map! {|num| num.to_i}
end

p digit_list(3333)

#4-How many?
vehicles = ['car', 'car', 'truck', 'car', 'SUV', 'truck', 'motorcycle', 'motorcycle', 'car', 'truck']

def count_occurences(array)
  counted_hash = Hash.new(0)
  array.each do |element|
      counted_hash[element]+=1
  end
  counted_hash.each do |element, quantity|   puts "#{element} => #{quantity}"
  end
end

#5-Reverse It (Part 1)
def reverse_sentence(string)
  split_string = []
  reversed = []
  split_string = string.split
  reversed << split_string[1], split_string[0]
  reversed.join(" ")
end
puts reverse_sentence('Hello World') == 'World Hello'

def reverse_sentence(string)
  string.split.reverse.join(" ")
end

#6-Reverse It (Part 2)
def reverse_words(string)
  split_string = string.split
  split_string.map do |element|
    if element.length > 4
      element.reverse!
    else
      element
    end
  split_string
  end
  split_string.join(" ")
end

#7-Stringy
  def stringy(number)
    string = ""
    loop do
    string << "1"
      break if string.length == number
    string << "0"
      break if string.length == number
    end
    string
  end

#8-Array Average
def average(array)
  numerator = array.sum
  numerator.to_f / array.size
end

#9-Sum of Digits
def sum(number)
addition = number.to_s.split("")
addition.map! { |num| num.to_i }
addition.sum
end

#10-What's my Bonus?
def calculate_bonus(salary, boolean)
  boolean == true ? salary / 2 : 0
end
