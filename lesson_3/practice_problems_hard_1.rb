#1
# Returns nil


#2
# greetings prints "hi there

#3
=begin
A)
prints "one is: one"
       "two is: two"
       "three is: three"
B)
prints "one is: one"
       "two is: two"
       "three is: three"
C)
prints "one is: two"
       "two is: three"
       "three is: one"
=end

#4

def dot_separated_ip_address?(input_string)
  dot_separated_words = input_string.split(".")
  return false unless dot_separated_words.size == 4

  while dot_separated_words.size > 0 do
    word = dot_separated_words.pop
    false unless is_an_ip_number?(word)
  end
  true
end

dot_separated_ip_address?("12.2.1.11")
