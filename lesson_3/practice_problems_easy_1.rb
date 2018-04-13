#1
#Should print [1,2,2,3]

#2.1
# != means not equal and you can use it in conditionals

#2.2
# ! before an object make it the opposite of its boolean equivalent
#2.3
# ! after something can mutate it
#2.4
# ?: is the ternary operator for if/else conditionals
#2.5
# Part of a method
#2.6
# !! turns the object into it's boolean equivalent

#3
advice = "Few things in life are as important as house training your pet dinosaur."

new_advice = advice.split

new_advice.delete_at(6)

new_advice.insert(6, "urgent")
p new_advice.join(" ")
#Or just advice.gsub!('important', 'urgent') lol

#4
#  .delete(n) removes whatever n is i.e. number n or "n"
#  .delete_at(n) deletes the nth index

#5
range = (10..100)
range.select{|element| if element == 42
  puts "yes, #{element} exists in range"
  end
} #OR (10..100).cover?(42)

#6
famous_words = "seven years ago..."

puts "METHOD !"
split_words = famous_words.split
concat_words = ["four", "score", "and"].concat(split_words)
p concat_words.join(" ")

puts "METHOD 2"
puts "Four score and #{famous_words}"

#7
#42

#8

flintstones = ["Fred", "Wilma"]
flintstones << ["Barney", "Betty"]
flintstones << ["BamBam", "Pebbles"]
flintstones.flatten!

#9
flintstones = { "Fred" => 0, "Wilma" => 1, "Barney" => 2, "Betty" => 3, "BamBam" => 4, "Pebbles" => 5 }
flintstones.delete("Fred")
flintstones.delete("Wilma")
flintstones.delete("Betty")
flintstones.delete("BamBam")
flintstones.delete("Pebbles")

p flintstones.flatten

#or flintstones.assoc("Barney")
#=> ["Barney", 2]
