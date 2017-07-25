# Replace in the "<???>" with the appropriate method (and arguments, if any).
# Uncomment the calls to catch these methods red-handed.

# When there's more than one suspect who could have
# committed the crime, add additional calls to prove it.

# Note that I have found an "easy" answer to some of these, which is '.replace'.  However, this
# isn't always the most efficient way.

puts "iNvEsTiGaTiOn".swapcase
# => “InVeStIgAtIoN”

puts "zom".sub(/[o]/,"oo")
# => “zoom”

# Other possible culprits:
puts "zom".gsub(/[o]/,"oo")
puts "zom".insert(1, 'o')
puts "zom".insert(2, 'o')
puts "zom".replace("zoom")

puts "enhance".rjust(14).ljust(21)
# => "    enhance    "

puts "Stop! You’re under arrest!".upcase
# => "STOP! YOU’RE UNDER ARREST!"

puts "the usual" + " suspects"
#=> "the usual suspects"

# Other possible culprits:
puts "the usual".replace("the usual suspects")
puts "the usual" << " suspects"

puts " suspects".prepend("the usual")
# => "the usual suspects"

# Other possible culprits:
puts " suspects".replace("the usual suspects")

puts "The case of the disappearing last letter".chop
# => "The case of the disappearing last lette"

puts "The mystery of the missing first letter".delete("T")
# => "he mystery of the missing first letter"

# Other possible culprits:
puts "The mystery of the missing first letter".reverse.chop.reverse

puts "Elementary,    my   dear        Watson!".split.join(" ")
# => "Elementary, my dear Watson!"

puts "z".ord
# => 122 
# (What is the significance of the number 122 in relation to the character z?)
# Answer: 122 is the ascii printable character code for "z".  Ascii is used for encoding on the web.

puts "How many times does the letter 'a' appear in this string?".count("a")
# => 4

# USER INTERFACE

# Printed all the answers so anyone looking over this file can easily see who justice was served to.