#1
arr = ['10', '11', '9', '7', '8']

arr.map! do |num|
  num.to_i
end

arr.sort! do |el1, el2|
  el2 <=> el1
end

arr.map! {|num| num.to_s }
#WAY TOO LOOOONG

arr.sort! do |num1, num2|
  num2.to_i <=> num1.to_i
end

#2
books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]


books.map! do |hash|
  hash.map do |key, value|
    if value.size < 5
      value.to_i
    else
      value
    end
  end
end


books.sort_by do |key,value|
key[:published].to_i
end

#3 Reference "g"
arr1 = ['a', 'b', ['c', ['d', 'e', 'f', 'g']]]
arr1[2][1][3]

arr2 = [{first: ['a', 'b', 'c'], second: ['d', 'e', 'f']}, {third: ['g', 'h', 'i']}]
 arr2[1][:third][0]

arr3 = [['abc'], ['def'], {third: ['ghi']}]
arr3[2][:third][0][0]

hsh1 = {'a' => ['d', 'e'], 'b' => ['f', 'g'], 'c' => ['h', 'i']}
hsh1['b'][1]

hsh2 = {first: {'d' => 3}, second: {'e' => 2, 'f' => 1}, third: {'g' => 0}}
hsh2[:third].keys[0]

#4
arr1 = [1, [2, 3], 4]
arr1[1][1]=4

arr2 = [{a: 1}, {b: 2, c: [7, 6, 5], d: 4}, 3]
arr2[2]=4

hsh1 = {first: [1, 2, [3]]}
hsh1.values[0][2][0] = 4
hsh1[:first][2][0] = 4

hsh2 = {['a'] => {a: ['1', :two, 3], b: 4}, 'b' => 5}
hsh2.values[0][:a][2]= 4

#5
munsters = {
  "Herman" => { "age" => 32, "gender" => "male" },
  "Lily" => { "age" => 30, "gender" => "female" },
  "Grandpa" => { "age" => 402, "gender" => "male" },
  "Eddie" => { "age" => 10, "gender" => "male" },
  "Marilyn" => { "age" => 23, "gender" => "female"}
}

sum = 0
index = 0
loop do
  if munsters.values[index]["gender"] == "male"
    sum += munsters.values[index]["age"]
  end
    index+=1
  break if index == munsters.size
end
sum

sum = 0
munsters.each_value do |val|
  sum += val["age"] if val["gender"]== "male"
end
sum

#6
index = 0
while index < munsters.size
puts "#{munsters.keys[index]} is a #{munsters.values[index]["age"]}-year-old #{munsters.values[index]["gender"]}."
index += 1
end

index = 0
munsters.each do |key, value|
  puts "#{key} is a #{value["age"]}-year-old #{value["gender"]}."
end

#7
a = 2
b = [5, 8]
arr = [a, b]

arr[0] += 2
arr[1][0] -= a
#a does not change bc we do not reference it when we modify arr
#b does change bc b is an array and we are modifying the array at the bottom

#8
vowels = %w(i a e o u)
hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}
hsh.values.join.split("").each do |val|
  vowels.each do |vowel|
  if val == vowel
    puts val
  end
end
end

#9
arr = [['b', 'c', 'a'], [2, 1, 3], ['blue', 'black', 'green']]
arr.map do |sub_array|
  sub_array.sort do |thing_one, thing_two|
    thing_two <=> thing_one
  end
end

#10
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}]

#We need an array of hashes so creating a new_hash = {} here would make
#one giant array instead of the three that we need.
[{a: 1}, {b: 2, c: 3}, {d: 4, e: 5, f: 6}].each do |sub_array|
  new_hash = {}
  sub_array.map do |key, val|
    new_hash = sub_array[key]+1
  end
end

#11
arr = [[2], [3, 5, 7], [9], [11, 13, 15]]
arr.map do |sub_arrays|
  sub_arrays.select do |num|
    num %3 == 0
  end
end

#12
arr = [[:a, 1], ['b', 'two'], ['sea', {c: 3}], [{a: 1, b: 2, c: 3, d: 4}, 'D']]
hashh = Hash[arr]

#orrr
hsh = {}
arr.each do |item|
  hsh[item[0]] = item[1]
end

#13
arr = [[1, 6, 7], [1, 4, 9], [1, 8, 3]]

new_arr = arr.sort do |index_1 , index_2|
    index_1[2] <=> index_2[2]
end
end

#14
hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}
##########################################
new_array = []
hsh.each_value do |attribute|
  if attribute[:type]== "fruit"
  color_cap = attribute[:colors].map do |color| #Map creates the array you need!
      color.capitalize
    end
    new_array << color_cap
  elsif attribute[:type] == "vegetable"
  new_array << attribute[:size].upcase
  end
end
##########################################

hsh.map do |_, attribute|
  if attribute[:type]== "fruit"
    attribute[:colors].map do |color|
      color.capitalize
    end
  elsif attribute[:type] == "vegetable"
  attribute[:size].upcase
  end
end

#15
arr = [{a: [1, 2, 3]}, {b: [2, 4, 6], c: [3, 6], d: [4]}, {e: [8], f: [6, 10]}]

hashh = {}
arr.select do |sub_array|
   sub_array.all? do |key,value|
     value.all? do |num|
       num % 2 == 0
     end
   end
   end

  #16
def uuid
    section_of_eight = [*('a'..'f'),*('0'..'9')].shuffle[0,8].join
    section_of_four = [*('a'..'f'),*('0'..'9')].shuffle[0,4].join
    section_of_twelve = [*('a'..'f'),*('0'..'9')].shuffle[0,12].join
   p "#{section_of_eight}-#{section_of_four}-#{section_of_four}-#{section_of_four}-#{section_of_twelve}"
 end

def uuid_two
 characters = []
 ("a".."f").each do |val|
   characters << val
 end

 ("1".."9").each do |val|
   characters << val
 end

 section_eight = characters.sample(8).join
 section_four = characters.sample(4).join
 section_twelve = characters.sample(12).join
 p "#{section_eight}-#{section_four}-#{section_four}-#{section_four}-#{section_twelve}"
end
