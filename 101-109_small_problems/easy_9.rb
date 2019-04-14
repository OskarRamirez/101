#1
def greetings(array, hash)
    puts "Hello #{array.join(" ")}!
    Nice to have a #{hash[:title]} #{hash[:occupation]} around"
end

#2
def twice(number)
  array = number.to_s.chars
  new_array = []
  index = 0
  loop do
    new_array << array[index]
    index += 1
    break if index >= (array.size/2)
  end
  if new_array * 2 == array
      array.join.to_i
    else
      number * 2
    end
  end

  #3
  def negative(number)
    number > 0 ? number * -1 : number
  end

#4
def sequence(number)
  array = []
  for n in 1..number
    array << n
  end
  array
end

#5
def uppercase?(string)
  array = string.each_char.select do |letter|
    letter.match?(/[a-z]/i)
  end
  array.all? { |let| let == let.upcase }
end

#6
def word_lengths(string)
  string.split.map do |word|
    "#{word} #{word.size}"
  end
end

#7
def swap_name(name)
  array = name.split
  "#{array[1]}, #{array[0]}"
end

#8
def sequence(count, number)
  index = 0
  array = []
  if count > 0
    loop do
      array << (number + (index * number))
      index += 1
      break if index >= count
    end
  end
  array
end

def sequence(count, number)
  (1..count).map do |num|
    number + ((num-1) * number)
  end
end

#9
def get_grade(grade1, grade2, grade3)
  array = []
  array << grade1 << grade2 << grade3
  grade = array.sum / array.size
  hash = { "A" => (90..100).to_a, "B" => (80..89).to_a,
     "C" => (70..79).to_a, "D" => (60..69).to_a,
     "F" => (0..59).to_a }
     place_holder = ""
     hash.select do |key, value_array|
      value_array.select do |num|
      place_holder += key if num == grade
      end
     end
     place_holder
   end

#10
def buy_fruit(array)
  list = []
  array.each do |sub_array|
    index = 0
    loop do
      list << sub_array[0]
      index += 1
      break if index == sub_array[1]
    end
  end
  list
end
#or
def buy_fruit(array)
  array.map do |sub_array|
    [sub_array[0]] * sub_array[1]
  end.flatten
end

#101 problem 
arr.select do |hash|
  hash.each_value.all? do |array|
    array.all? do |num|
        num % 2 == 0
      end
    end
  end

  
