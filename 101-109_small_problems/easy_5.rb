#1
def ascii_value(string)
  string_value = 0
  string.split("").each { |char| string_value += char.ord }
  string_value
end

#2
def time_of_day(minutes)
  if minutes >= 0
  total_hours, min = minutes.divmod(60)
  days, hr = total_hours.divmod(24)
    h = sprintf '%02d', hr
    m = sprintf '%02d', min
  else
    total_hours, min = (minutes * (-1)).divmod(60)
    days, hr = total_hours.divmod(24)
    h = sprintf '%02d', (23 - h )
    m = sprintf '%02d', (60 - min)
  end
    p "#{h}:#{m}"
end

#3
def after_midnight(clock_time)
  array = clock_time.split("")
  hr = (array[0] + array[1]).to_i * 60
  min = (array[3] + array[4]).to_i
  if hr < 1440   # 24*60 i.e. is it smaller than 24
  hr + min
  else
    min
  end
end

def before_midnight(clock_time)
  array = clock_time.split("")
  if array[0] + array[1] == "24"
    hr = 0
    min = 0
  else
    hr = (23 - (array[0] + array[1]).to_i) * 60
    min = 60 - (array[3] + array[4]).to_i
    hr = 0 if hr == 1380  # 23*60
    min = 0 if min == 60
    if hr < 1440   # 24*60 i.e. is it smaller than 24
    hr + min
    else
      min
    end
  end
end

#4
def swap(string)
  array = string.split
  first_and_last = []
  index = 0
  array.each do |word|
    first_and_last << word[0]
    first_and_last[index] << word[-1]
    index += 1
  end
  index = 0
  array.map do |word|
    word[0], word[-1] = first_and_last[index][1], first_and_last[index][0]
    index += 1
  end
  array.join(" ")
end

#5
#Make a constant LETTERS = ["A"...]
LETTERS = []
for n in "a".."z"
  letters << n
end

def cleanup(string)
  array = string.split("").map do |char|
    if LETTERS.include?(char) == true
      char
    else
      char = " "
    end
  end
  final_string = array.join.split.join(" ")
  final_string.prepend(" ") if array.first == " "
    final_string << " " if array.last == " "
end

#6
def word_sizes(string)
  word_sizes = Hash.new(0)
  string.split.each do |word|
    word_sizes[word.size] += 1
  end
    word_sizes
  end
#7 #Ignore non-alphabetical letters in count
def word_sizes(string)
  word_sizes = Hash.new(0)
  #array = []
  #string.split.each do |word|
    #array << word.gsub(/[^a-z]/i, '')
  #array.each...
  string.split.each do |word|
    word_sizes[word.gsub(/[^a-z]/i, '').size] += 1
  end
    word_sizes
  end
#8
NUMBERS = { zero: 0, one: 1, two: 2, three: 3, four: 4, five: 5, six: 6, seven: 7,
   eight: 8, nine: 9, ten: 10, eleven: 11, twelve: 12, thirteen: 13, fourteen: 14,
 fifteen: 15, sixteen: 16, seventeen: 17, eighteen: 18, nineteen: 19 }

def alphabetic_number_sort(array)
    some_hash = NUMBERS.select do |k,v|
      array.include?(v)
        k
    end
    sorted_hash = some_hash.sort_by { |k,_| k }
    sorted_hash.map do |array|
      array[1]
    end
end

#9
def crunch(string)
  comparative_char = ""
  array = []
  string.chars.each do |char|
    array << char unless char == comparative_char
    comparative_char = char
  end
  array.join
end

#10
def print_in_box(string)
  printed_string = "| #{string} |"
  p "+--------------------------------------------+"
  p "|                                            |"
  p printed_string.center(22)
  p "|                                            |"
  p "+--------------------------------------------+"
end

def print_in_box(string)
  #3 types of lines being printed: +'s, ||s, and line containing string
  plus_signs = "+-#{"-" * string.length}-+"
  empty_space = "| #{" " * string.size} |"
  print_statement = "| #{string} |"

  puts plus_signs
  puts empty_space
  puts print_statement
  puts empty_space
  puts plus_signs
end
