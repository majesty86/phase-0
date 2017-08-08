# Array Drills

zombie_apocalypse_supplies = ["hatchet", "rations", "water jug", "binoculars",
                              "shotgun", "compass", "CB radio", "batteries"]

# 1. Iterate through the zombie_apocalypse_supplies array using #each,
# printing each item in the array separated by an asterisk
# ----

# zombie_apocalypse_supplies.each {|x| print x, "*"}

# 2. Create a method to see if a particular item (string) is in the
# zombie_apocalypse_supplies using #each.
# For instance: are boots in your list of supplies?

# The easy way: puts zombie_apocalypse_supplies.include?("boots")

# zombie_apocalypse_supplies.each do |str|
#   if str == "hatchet"
#     puts "#{str} is in the array."
#   elsif str == "compass"
#     puts "#{str} is in the array."
#   elsif str == "boots"
#     puts "#{str} is in the array."
#   elsif str == "sunscreen"
#     puts "#{str} is in the array."
#   elsif str == "batteries"
#     puts "#{str} is in the array."
#   end
# end

# ----

# 3. You can't carry too many things, you've only got room in your pack for 5.
# Remove items in your zombie_apocalypse_supplies in any way you'd like,
# leaving only 5, using #each.

# puts "You are overencumbered.  Please reduce your item count to 5."
# puts "Please select what items you would like to remove:"

# zombie_apocalypse_supplies.each do |item|
  
#   break if zombie_apocalypse_supplies.length == 5
  
#   answer = gets.chomp
#   if answer == "hatchet"
#     puts "You have removed the hatchet from your pack.  You have now lost the ability to chop wood."
#     zombie_apocalypse_supplies.delete("hatchet")
#     puts "You now have #{zombie_apocalypse_supplies.length} items in your pack."


#   elsif answer == "rations"
#     puts "You have removed the rations from your pack.  It is recommended you now keep the shotgun to hunt."
#     zombie_apocalypse_supplies.delete("rations")
#     puts "You now have #{zombie_apocalypse_supplies.length} items in your pack."


#   elsif answer == "water jug"
#     puts "You have removed the water jug from your pack.  Hope you're not thirsty!"
#     zombie_apocalypse_supplies.delete("water jug")
#     puts "You now have #{zombie_apocalypse_supplies.length} items in your pack."


#   elsif answer == "binoculars"
#     puts "You have removed the binoculars from your pack. Now you can't see the zombies coming!"
#     zombie_apocalypse_supplies.delete("binoculars")
#     puts "You now have #{zombie_apocalypse_supplies.length} items in your pack."


#   elsif answer == "shotgun"
#     puts "You have removed the shotgun from your pack. Better hold onto a rock!"
#     zombie_apocalypse_supplies.delete("shotgun")
#     puts "You now have #{zombie_apocalypse_supplies.length} items in your pack."


#   elsif answer == "compass"
#     puts "You have removed the compass from your pack. Remember: the sun sets in the west."
#     zombie_apocalypse_supplies.delete("compass")
#     puts "You now have #{zombie_apocalypse_supplies.length} items in your pack."


#   elsif answer == "CB radio"
#     puts "You have removed the CB radio from your pack. I don't blame you - it probably would have broken anyway."
#     zombie_apocalypse_supplies.delete("CB radio")
#     puts "You now have #{zombie_apocalypse_supplies.length} items in your pack."


#   elsif answer == "batteries"
#     puts "You have removed the batteries from your pack.  Outta juice!"
#     zombie_apocalypse_supplies.delete("batteries")
#     puts "You now have #{zombie_apocalypse_supplies.length} items in your pack."

#   end
# end

# ----

# 4. You found another survivor! This means you can combine your supplies.
# Create a new combined supplies list out of your zombie_apocalypse_supplies
# and their supplies below. You should get rid of any duplicate items.
# Find the built-in method that helps you accomplish this in the Ruby
# documentation for Arrays.

other_survivor_supplies = [ "warm clothes", "rations", "compass", "camp stove",
                            "solar battery", "flashlight"]

# combined_supplies = []
# combined_supplies = zombie_apocalypse_supplies + other_survivor_supplies
# combined_supplies = combined_supplies.uniq
# puts combined_supplies

# ----

# Hash Drills

extinct_animals = {
  "Passenger Pigeon" => 1914,
  "Tasmanian Tiger" => 1936,
  "Eastern Hare Wallaby" => 1890,
  "Dodo" => 1662,
  "Pyrenean Ibex" => 2000,
  "West African Black Rhinoceros" => 2011,
  "Laysan Crake" => 1923
}

# 1. Iterate through extinct_animals hash using #each, printing each key/value pair
# with a dash in between the key and value, and an asterisk between each pair.

# extinct_animals.each {|x, y| puts "#{x}-#{y}", "*"}

# ----

# 2. Keep only animals in extinct_animals if they were extinct before
# the year 2000, using #each.

# extinct_animals_before_2000

# extinct_animals.each do |key, value|
#   if value < 2000
#     puts key
#     puts value
#   end
# end

# extinct_animals.keep_if {|key, value| value < 2000}

# puts extinct_animals

# ----

# 3. Our calculations were completely off, turns out all of those animals went
# extinct 3 years before the date provided. Update the values in extinct_animals
# using #each, so they accurately reflect what year the animal went extinct.

# extinct_animals.each do |key, value|
#   extinct_animals[key] = value - 3
# end

# p extinct_animals

# ----

# 4. You've heard that the following animals might be extinct, but you're not sure.
# Build a method  using #each that checks if an animal is in the hash and returns true/false.
# Call the method in your driver code with each of the following animals to check if
# they are extinct or not:
# "Andean Cat"
# "Dodo"
# "Saiga Antelope"
# Driver code example: is_extinct?(extinct_animals, "Andean Cat")

# def check_extinct(hash, animal)
#     if hash[animal]
#       puts true
#     else 
#       puts false
#     end 
# end 

# check_extinct(extinct_animals, "Andean Cat")
# check_extinct(extinct_animals, "Dodo")
# check_extinct(extinct_animals, "Saiga Antelope")

  # For this one, iterating through with .each returned a value for every single key, basically 
  # asking the question "Is (animal) here?" to every other animal in the hash.  By getting rid
  # of .each here, I was able to return a single value.  I don't think .each is even needed.


# ----

# 5. We just found out that the Passenger Pigeon is actually not extinct!
# Remove them from extinct_animals and return the key value pair as a two item array.
# Find a Ruby Hash built-in method that helps you accomplish this or build
# your own method using #each


p extinct_animals.shift

# ----
