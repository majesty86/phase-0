# CLIENT DETAILS

# Designer will enter the following about the given client:
# Name
# Age
# Rooms in home to decorate
# Children yes/no
# Number of Children
# Decor theme
# High-efficiency lighting yes/no
# Paint colors that are absolutely forbidden

# All keys are symbols unless a string is needed for user-friendliness

puts "What's the client's name?"
client_name = gets.chomp

puts "What is the client's age?"
age = gets.to_i

puts "How many rooms would the client like decorated?"
rooms = gets.to_i
puts "Name the rooms, one at time."

which_rooms = []
while rooms > 0
  room_input = gets.chomp
  rooms -= 1
  which_rooms << room_input
end

puts "Does the client have children?"
children = gets.chomp
  if children == "yes"
    children = true
  elsif children == "Yes"
    children = true
  elsif children == "y"
    children = true
  end

if children == true
puts "How many do they have?"
no_of_children = gets.chomp
end 

puts "What does the client want the theme to be?"
theme = gets.chomp

puts "Does the client want high-efficiency lighting?"
h_e = gets.chomp

puts "Are there any colors the client absolutely loathes?"
forbidden_colors = gets.chomp


post = {
  client_name: client_name ,
  age: age ,
  rooms: rooms ,
  which_rooms: which_rooms ,
  children: children ,
  no_of_children: no_of_children ,
  theme: theme ,
  h_e: h_e ,
  forbidden_colors: forbidden_colors
}

puts "CLIENT INFORMATION"
puts " "

puts "Client's Name"
puts post [:client_name]
puts " "

puts "Client's age"
puts post [:age]
puts " "

puts "Rooms to decorate"
puts post [:which_rooms]
puts " "

puts "Children?"
unless 
  children == true
puts post [:children] 
puts " "
end

if children == true
puts "Number of children"
puts post [:no_of_children]
puts " "
end

puts "Theme"
puts post [:theme]
puts " "

puts "Are they using high-efficiency lighting?"
puts post [:h_e]
puts " "

puts "Off-limits colors"
puts post [:forbidden_colors]
puts " "

puts "Is there anything you'd like to update?  Answer yes or no."
update = gets.chomp
if update == "no"
  puts "Thank you!"
elsif update == "yes"
  puts "What would you like to update?"  
  update_input = gets.chomp.to_sym
  puts "What should the new value for #{update_input} be?"
  post[update_input] = gets.chomp
  puts "Thank you!"
end

puts post