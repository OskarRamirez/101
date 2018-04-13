#3
=begin
Prints "My string looks like this now: pumpkins"
prints "My array looks like this now:  ["pumpkin","rutabaga"]"

#4
prints "My string looks like this now: pumpkinsrutabaga"
prints "My array looks like this now: ["pumpkins"]
=end

def tricky_method_two(a_string_param, an_array_param)
  a_string_param << 'rutabaga'
  an_array_param = ['pumpkins', 'rutabaga']
  an_array_param
end

my_string = "pumpkins"
my_array = ["pumpkins"]
my_array = tricky_method_two(my_string, my_array)

puts "My string looks like this now: #{my_string}"
puts "My array looks like this now: #{my_array}"

#5
def color_valid(color)
  color == "blue" || color == "green" ? true : false
  end

def my_favorite_teams(team)
  team == "Jets" || team == "Mets"
end 
