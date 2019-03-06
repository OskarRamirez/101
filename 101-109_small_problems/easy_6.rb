#1
DEGREE = "\xC2\xB0"
#1 degree = 60 min
#1 min = 60 sec
def dms(degrees)
  degree = degrees.to_i
  remainder = degrees.to_f - degrees.to_i
  minutes = (remainder * 60).to_i
  remainder_of_seconds= (remainder*60) - (remainder*60).to_i
  seconds = remainder_of_seconds * 60

  min = sprintf '%02d', minutes
  sec = sprintf '%02d', seconds

  puts "#{degree}#{DEGREE}#{min}'#{sec}\""
end

#2
def remove_vowels(array)
  array.map do |element|
  element.delete("aeiouAEIOU")
end

#3
def find_fibonacci_index_by_length(fib_length)
  fib_array = [1, 1]
  fib_one = 1
  fib_two = 1
  fib = 0
  if fib_length == 1
    1
  else
    while fib.to_s.size < fib_length
      fib = fib_one + fib_two
      fib_array << fib
      fib_two = fib_one
      fib_one = fib
    end
    fib_array.size
  end
end

#4
def reverse_array(array)
  index = -1
  final_array = []
  while array[index] != nil
    final_array << array[index]
    index -= 1
  end
  final_array
end

def reverse_array!(array)
  array = [1,2,3,4]
  forward_index = 0
  reverse_index = -1
  if array.size.even?
  while reverse_index *(-1) <= (array.size/2)
    array[forward_index], array[reverse_index] = array[reverse_index], array[forward_index]

    forward_index += 1
    reverse_index -= 1
  end
  array
end

def reverse_array!(array)
  new_array = []
  index = -1
  while index * (-1) <= array.length
    new_array << array[index]
    index -= 1
  end
  index = 0
  while index < array.length
    array[index] = new_array[index]
    index += 1
  end
  array
end

#5 Should not modify original array
def reverse_array(array)
  new_array = []
  index = -1
  while index * (-1) <= array.length
    new_array << array[index]
    index -= 1
  end
  new_array
end

#6
def merge(array_one, array_two)
  new_array = array_one.concat(array_two).uniq
end

#7
def halvsies (array)
  new_array = []

  if array == []
    new_array = []
  elsif array.length.even?
    loop do
      new_array << array.shift
      break if new_array.length == array.length
    end
  else
    loop do
      new_array << array.shift
      break if new_array.length > array.length
    end
  end
    [new_array, array]
end

#8
def find_dup(array)
repeated_value = 0
new_array = []
  array.each do |element|
    repeated_value = element if new_array.include?(element)
    new_array << element
  end
  repeated_value
end

#9
def include?(array, value)
  index = 0
  some_val = false
  if array.empty? == true
    some_val
  else
  while index <= array.length
    some_val = true if array[index] == value
    index += 1
  end
  some_val
end
