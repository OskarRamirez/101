#1
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 402, "Eddie" => 10 }
ages.fetch_values("Spot")
ages.key?("Spot")
ages.include?("Spot")

#2
munsters_description = "The Munsters are creepy in a good way."
p munsters_description.capitalize
p munsters_description.swapcase
p munsters_description.downcase
p munsters_description.upcase

#3
ages = { "Herman" => 32, "Lily" => 30, "Grandpa" => 5843, "Eddie" => 10 }
additional_ages = { "Marilyn" => 22, "Spot" => 237 }
# Combine the two hashes and store the result in the original
ages.merge!(additional_ages)

#4
advice = "Few things in life are as important as house training your pet dinosaur."
advice.include?("Dino") #or .match()

#5
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
flintones = %w(Fred Barney Wilma Betty BamBam Pebbles)

#6
flinstones.push("Dino") #or flintstones << "Dino"

#7
flintstones = ["Fred", "Barney", "Wilma", "Betty", "BamBam", "Pebbles"]
pets = %w(Dino Hoppy)

flintstones.concat(pets) #or flintstones.push("Dino").push("Hoppy")

#8
advice = "Few things in life are as important as house training your pet dinosaur."
advice.slice(0..38) #advice.slice!(0, advice.index('house'))

#9
statement = "The Flintstones Rock!"
statement.count('t')

#10
title = "Flintstone Family Members"
title.center(40)
