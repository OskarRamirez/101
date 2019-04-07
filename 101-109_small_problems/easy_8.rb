#1
def sum_of_sums(array)
  sum = 0
  growing_array = []
  array.each do |integer|
    growing_array << integer
    sum += growing_array.sum
  end
  sum
end

#2
def mad_libs()
  puts "Enter a noun: "
  noun = gets.chomp
  puts "Enter a past-tense verb: "
  verb = gets.chomp
  puts "Enter an adjective: "
  adj = gets.chomp
  puts "Enter an adverb: "
  adverb = gets.chomp

  puts "Have you ever #{verb} a #{adj} #{noun} #{adverb}?"
end

#3
def substring_at_start(string)
  array = []
  index = 0
  loop do
    array.push(string[0..index])
    index += 1
    break if index >= string.size
  end
  array
end

#4
def substrings(string)
  final_array = []
  index = 0
  loop do
    final_array << substring_at_start(string[index..-1])
    index += 1
    break if index >= string.size
  end
  final_array.flatten
end

#5
def palindromes(string)
  full_array = substrings(string)
  array = []
  full_array.select do |substring|
    substring == substring.reverse && substring.size > 1
    end
  end

#6
def fizzbuzz(num1, num2)
  array = []
  for n in (num1..num2)
    array << n
  end
  array.map do |num|
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 3 == 0
      'Fizz'
    elsif num % 5 == 0
      'Buzz'
    else
      num
    end
  end
end

#7
def repeater(string)
  array = string.chars
  array.map { |char| char * 2 }.join
end


def double_consonants(string)
  array = string.chars.map do |char|
    if char =~ /[a-z]/i && char =~ /[^aeiou]/i
      char * 2
    else
      char
    end
  end
  array.join
end

#OR needs work
=begin
def double_consonants(string)
  array = string.chars.map do |char|
    if char =~ /[a-z] + [^aeiou]/i
      char * 2
    else
      char
    end
  end
  array.join
end
=end
#9
def reversed_number(number)
  number.to_s.chars.reverse.join.to_i
end

#10
def easy_of(string)
  if string.size.odd?
    string[string.size/2]
  else
    string[(string.size/2)-1] + string[string.size/2]
  end
end
