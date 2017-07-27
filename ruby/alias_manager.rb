# SPY NAME GENERATOR

# This generator will take a spy's real name and change it (because who uses their real name when spying?)

# STEPS

# 1.  Swaps spy's first and last name.
# 2.  Changes all vowels to next vowel, and all consonants become next consonant.
#     example: 'a' becomes 'e', 'u' becomes 'a', 'd' becomes 'f', and so on.

puts "What is the spy's name?"
original = gets.chomp

p original.split.chars