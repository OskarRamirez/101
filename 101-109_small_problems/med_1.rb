#medium_1

#1
def rotate_array(array)
  new_array = []
  new_array += array
  a = new_array.shift
  new_array.push(a)
end

#2

def rotate_rightmost_digits(number, n)
  array = number.to_s.chars
  if n == 1
    array
  else
    (array[0..-(n+1)] + array[-(n-1)..-1] + [array[-n]]).join.to_i
  end
end

end
def rotate_rightmost_digits(number, n)
  array = number.to_s.chars.map { |el| el.to_i }
  if n == 1
    number
  else
    a = array.slice!(-n)
    array.push(a).join.to_i
  end
end

#3
def max_rotation(number)
  array = rotate_array(number.to_s.chars)
  index = 1
  loop do
    array = rotate_rightmost_digits(array.join.to_i, (array.size - index))
    array = array.to_s.chars
    index += 1
    break if index > (array.size - 2)
  end
  array.join.to_i
end

#4
=begin
def thousand_lights(n)
  array = [true] * n
  index = 2
  toggle1 = 2
  toggle2 = 4
  toggle3 = 6
  if n == 1
    array
  else
    loop do
      array = array.each_with_index.map do |val, i|
      if i == (toggle1-1)
        val = !val
      elsif i == (toggle2-1)
        val = !val
      elsif i == (toggle3-1)
          val = !val
      else
          val
      end
    end
    toggle1 += 1
    toggle2 += 2
    toggle3 += 3
    index += 1
      break if index > n
    end
    new_array = []
    array.each_with_index do |bool,index|
      new_array << index+1 if bool == true
    end
    new_array
  end
=end
def initialize_lights(n)
  array = [true] * n
end

def toggle_lights(array)
  index = 1
  counter = 0
  digit = 2
   loop do
    while (index+counter) < array.size
      array[index+counter] = !array[index+counter]
      counter += digit
    end
    index += 1
    counter = 0
    digit+= 1
    break if index > array.size
  end
  array
end

def print_array(array)
  new_array = []
  array.each_with_index do |bool,index|
    new_array << index+1 if bool == true
  end
  new_array
end

def thousand_lights(n)
  lights = initialize_lights(n)
  boolean_list_of_lights = toggle_lights(lights)
  print_array(boolean_list_of_lights)
end

#5
def push_reg()


def minilang(string)
  reg = 0
  stack = []
  string_array = string.split
  array_w_num = string_array.map do |el|
    if el.match?( /\A[-+]?[0-9]*\.?[0-9]+\Z/)
      el.to_i
    else
      el
    end
  end
    if string.match?("PRINT") == false
      "nothing printed; no PRINT commands"
    else
      array_w_num.each do |command|
        case command
        when "PUSH" then stack.push(reg)
        when "ADD" then reg = stack.pop + reg
        when "SUB" then reg = reg - stack.pop
        when "MULT" then reg = stack.pop * reg
        when "DIV" then reg = reg / stack.pop
        when "MOD" then reg = reg % stack.pop
        when "POP" then reg = stack.pop
        when "PRINT" then p reg
        else        reg = command
        end
      end
    end
  end
    =begin
    index = 0
      loop do

        if array_w_num[index].is_a? Numeric
          reg = array_w_num[index]
        elsif array_w_num[index] == "PUSH"
          stack.push(reg)
        elsif array_w_num[index] == "ADD"
          reg = stack.pop + reg
        elsif array_w_num[index] == "SUB"
          reg = reg - stack.pop
        elsif array_w_num[index] == "MULT"
          reg = stack.pop * reg
        elsif array_w_num[index] == "DIV"
          reg = reg / stack.pop
        elsif array_w_num[index] == "MOD"
          reg = reg % stack.pop
        elsif array_w_num[index] == "POP"
          reg = stack.pop
        elsif array_w_num[index] == "PRINT"
          p reg
        else
          "nothing printed; no PRINT commands"
        end
        index += 1
        break if index >= array_w_num.size
      end
      =end
    end
  end

  #7
  NUMBERS = {"zero" => "0", "one" => "1", "two" =>"2", "three" => "3", "four" => "4", "five" => "5",
             "six" => "6", "seven" => "7", "eight" => "8", "nine" => "9"
            }
  def word_to_digit(string)
    string_sans_punc = string.chars.delete_if do |el|
      el.match?(/[\W&&[^\s]]/)
    end.join.split
    final_string = string_sans_punc.map do |word|
      if NUMBERS.keys.include?(word)
        word = NUMBERS[word]
      else
        word
      end
    end
        string.split.each_with_index do |el, i|
          final_string[i] += "." if el.include?(".")
        end
        final_string.join(" ")
end
#SHORTEN!!

#8
def fibonacci(n)
  return 1 if n == 1 || n == 2
  fibonacci(n-1) + fibonacci(n-2)
end

#9
def fibonacci(n)
  fib_one = 1
  fib_two = 1
  fib = 0
  index = 3
  if n == 1 || n == 2
    fib = 1
  else
    while index <= n
      fib = fib_one + fib_two
      index += 1
      fib_two = fib_one
      fib_one = fib
    end
  end
  fib
end

#10
def fibonacci_last(n)
  fib = fibonacci(n)
  fib.to_s.chars.last.to_i
end

def fibonacci_last(n)
  fib_one = 1
  fib_two = 1
  fib = 0
  index = 3
  if n == 1 || n == 2
    fib = 1
  else
    while index <= n
      fib = (fib_one + fib_two) % 10
      index += 1
      fib_two = fib_one
      fib_one = fib
    end
  end
  fib
end
