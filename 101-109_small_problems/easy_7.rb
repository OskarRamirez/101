#Easy 7
#1
def interleave(array_one, array_two)
  alternating_array = []
  counter = 0
  loop do
    alternating_array << array_one[counter] << array_two[counter]
    counter += 1
    break if counter == array_one.size
  end
  alternating_array
end

def interleave(array_one, array_two)
  array_one.zip(array_two).flatten
end

#2
def letter_case_count(string)
  characters_hash = {lowercase: 0, uppercase: 0, neither: 0 }
  string.chars.each do |char|
    if ("a".."z").include?(char)
      characters_hash[:lowercase] += 1
    elsif ("A".."Z").include?(char)
      characters_hash[:uppercase] += 1
    else
      characters_hash[:neither] += 1
    end
  end
  characters_hash
end

#3
def word_cap(string)
  string.downcase.split.map { |word| word.capitalize }.join(" ")
end

#4 look up full solution to make sure the downcase else works for everything
def swapcase(string)
  array = string.chars.map do |char|
    if char == char.downcase
      char.upcase
    else
      char.downcase
    end
  end
    array.join
  end

#5
def staggered_casse(string)
  index = 0
  array = string.chars.map do |char|
    if index % 2 ==0
      char.upcase
    else
      char.downcase
    end
    index += 1
  end
  array.join
  array = string.chars
  while index <= array.size
    if index % 2 == 0
      array[index].upcase
    else
      array[index].downcase
    end
    index += 1
  end
#******* 5 and 6
def staggered_case(string)
  array = []
  string.chars.each_with_index do |char, index|
    if /[^a-z]/i === char
      array << char
    elsif index.even? == true
      array << char.upcase
    else
      array << char.downcase
    end
  end
  array.join
end

#7
def show_multiplicative_average(array)
  multiplied_number = array.reject(&:zero?).inject(:*)
  answer = multiplied_number.to_f / array.size
  puts "The result is #{format("%.3f", answer)}

#8
def multiply_lists(array1, array2)
  index = 0
  final_array = []
  array1.each do |num|
    final_array << num * array2[index]
    index += 1
  end
  final_array
end
#Turn function below into a one line solution!!!!
def multiply_lists(array1, array2)
array3 = []
array1.zip(array2) { |a,b| array3 << a * b }
array3
end

#9
def multiply_all_pairs(array1, array2)
  array3 = []
  array1_index = 0
  loop do
    array2_index = 0
    loop do
      array3 << array1[array1_index] * array2[array2_index]
      array2_index += 1
      break if array2_index >= array2.size
    end
    array1_index += 1
    break if array1_index >= array1.size
  end
  array3.sort
end

#10
def penultimate(string)
    array = string.split
    array[-2]
end  
