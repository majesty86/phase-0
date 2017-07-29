# SPY NAME GENERATOR

# This generator will take a spy's real name and change it (because who uses their real name when spying?)

# STEPS

# 1.  Swaps spy's first and last name.
# 2.  Changes all vowels to next vowel, and all consonants become next consonant.
#     example: 'a' becomes 'e', 'u' becomes 'a', 'd' becomes 'f', and so on.

# User enters name.

spy_array = []

loop do  
puts "What is the spy's name?  Type 'quit' when done entering all names."
orgname = gets.chomp
  
  break if orgname == 'quit'

swapname = orgname.split.reverse.join(" ")

spyname = swapname.tr("aeiouAEIOU", "eiouaEIOUA").tr("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ", "cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZ")

spy_array << spyname

end

puts "Presenting our new spies:"
puts spy_array





# Run the loop, store it.  Then done!