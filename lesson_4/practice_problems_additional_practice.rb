#1
flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
hash = {}
flintstones.each_with_index do |key, index|
  hash[key] = index
end

hash

#2
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }
sum = 0
age_summation = ages.each do |_, value|
  sum+=value
end

sum

#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.delete_if {|_,value| value > 100 }
ages

#4
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10, "Marilyn" => 22, "Spot" => 237 }

ages.values.min

#5
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
special_index = []
flintstones.each_with_index {|value,index|
  if value.start_with?("Be")
    special_index = index
  end
  }

#6
flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
flintstones.map! {|name| name[0..2]} #The question asked you to "amend" so you must use !

#7
statement = "The Flintstones Rock"
statement_array = statement.split("")
statement_array.delete(" ")
statement_array.each_with_object(Hash.new(0)) {|char,freq| freq[char]+=1}

#8
numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end #outputs/ prints 1 then 3
numbers = [1, 2, 3, 4]
#outputs 1 then 3
#more in depth
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end

#9
words = "the flintstones rock"
def cap_words(words)
words_array = words.split

words_array.map { |word| word.capitalize! }
words_array.join(" ")
end
#ORRRR:  words.split.map { |word| word.capitalize }.join(' ')

#10
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

munsters.map do |name, traits|
  case traits["gender"]  #This is the criteria that will be analyzed
  when "male"
    traits["royalty"] = "KING"
  else
    traits["royalty"] = "QUEEN"
  end
end 

munsters.each do |name, attributes|
  case attributes["age"]

  when 0..17
    attributes["age_group"] = "kid"
  when 18..64
    attributes["age_group"] = "adult"
  else
    attributes["age_group"] = "senior"
  end
end
