#1
10.times {|num| puts " " * num + "The Flintstones Rock!"}

#2
#40+2 is not a string.  Can use (40+2).to_s or #{40+2}"

#3
def factors(number)
  dividend = number
  divisors = []
while dividend > 0 do
    divisors << number / dividend if number % dividend == 0
    dividend -= 1
  end
  divisors
end

#4
#method 1 will mutate the input where as method 2 will not

#5
def fib(first_num, second_num, limit)
  limit = 15                            #limit was out of scope
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

#6
result = fib(0, 1)
puts "result is #{result}"
#or
def fib(first_num, second_num, limit)
 #limit was out of scope
  while second_num < limit
    sum = first_num + second_num
    first_num = second_num
    second_num = sum
  end
  sum
end

result = fib(0, 1, 15)
puts "result is #{result}"

#6
def less_tricky_method(a_string_param, an_array_param)
  a_string_param << " rutabaga"
  an_array_param << "rutabaga"
end

my_string = "pumpkins"
my_array = ["pumpkins"]
less_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#or
def not_so_tricky_method(a_string_param, an_array_param)
  a_string_param += " rutabaga"
  an_array_param += ["rutabaga"]

  return a_string_param, an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_string, my_array = not_so_tricky_method(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#7 anwer = 34

#8
#Yes, the method mutated the hash

#9 "paper" wins

#10 Bar returns "No" because foo always returns "yes"
