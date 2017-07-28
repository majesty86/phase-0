# SPY NAME GENERATOR

# This generator will take a spy's real name and change it (because who uses their real name when spying?)

# STEPS

# 1.  Swaps spy's first and last name.
# 2.  Changes all vowels to next vowel, and all consonants become next consonant.
#     example: 'a' becomes 'e', 'u' becomes 'a', 'd' becomes 'f', and so on.

# User enters name.
# 


puts "What is the spy's name?"
orgname = gets.chomp

spyname = orgname.split.reverse.join(" ")

puts spyname.tr("aeiouAEIOU", "eiouaEIOUA").tr("bcdfghjklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ", "cdfghjklmnpqrstvwxyzbCDFGHJKLMNPQRSTVWXYZ")


# Run the loop, store it.  Then done!