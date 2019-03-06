#Easy 4

#1
def short_long_short(string_one, string_two)
  if string_one.length > string_two.length
    long = string_one
    short = string_two
  else
    long = string_two
    short = string_one
  end
  puts "#{short}#{long}#{short}"
end

#2
def century(year)
  if year < 101
    string_yr = "1"
  elsif year.to_s.split("").last(2) == ["0", "0"]
    string_yr = (year/100).to_s
  else
    string_yr = (year/100 + 1).to_s
  end

  teens = ["11", "12", "13", "14", "15", "16", "17", "18", "19"]
  if string_yr == "1"
    suffix = "st"
  elsif string_yr.end_with?("0") || teens.include?(string_yr.split("").last(2).join)
      suffix = "th"
    elsif string_yr.end_with?("1")
      suffix = "st"
    elsif string_yr.end_with?("2")
      suffix = "nd"
    elsif string_yr.end_with?("3")
      suffix = "rd"
    else
      suffix = "th"
    end
  string_yr + suffix
  end
#3

def leap_year?(year)
  true ? (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0): false
  end

#4
def leap_year?(year)
  if year < 1752
    true ? year % 4 == 0 : false
  else
    true ? (year % 4 == 0 && year % 100 != 0) || (year % 100 == 0 && year % 400 == 0): false
  end
end

#5
def multisum(num)
  n = 1
  multiples = []
  while 3*n <= num
    multiples << 3*n
    n += 1
  end
  n = 1
  while 5*n <= num
    multiples << 5*n
    n += 1
  end
  summation = multiples.uniq.sum
end

#6
def running_total(array)
  sum = 0
  final_array = []
  counter = 0

  while counter < array.length
    final_array << (sum += array[counter])
    counter +=1
  end
  final_array
end

#7
def string_to_integer(string)
  conversion = Hash.new
   (0..9).each { |num| conversion[num.to_s] = num }

  num_array = string.split("").map do |char|
    conversion[char] if conversion.keys.include?(char)
  end
  count = 0
  sum = 0
  exp = 1
  while count < num_array.length
    sum += (num_array.reverse[count] * exp)
    count += 1
    exp *= 10
  end
    sum
end

#8
def string_to_signed_integer(string)
  if string.include?("-")
    sans_sign = string.delete("-")
    string_to_integer(sans_sign) *(-1)
  elsif string.include?("+")
    sans_sign = string.delete("+")
    string_to_integer(sans_sign)
  else
    string_to_integer(string)a
  end
end

#9
def integer_to_string(number)
  conversion = Hash.new
   (0..9).each { |num| conversion[num.to_s] = num }
   array = []
   if number == 0
     array << 0
   else
     a, b = number.divmod(10)
     array << b
     loop do
       a,b = a.divmod(10)
          array << b
       break if a == 0

     end
   end

    string_array = array.map do |num|
      conversion.key(num) if conversion.values.include?(num)
    end

    string_array.join.reverse
end
#10
def signed_integer_to_string(number)
  if number < 0
    positive_number = number * (-1)
    "-" + integer_to_string(positive_number)
  elsif number > 0
    "+" + integer_to_string(number)
  else
    integer_to_string(number)
  end
end
