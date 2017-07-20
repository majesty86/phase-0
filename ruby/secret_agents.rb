# Encrypt Program
# Get user_input.
# Find length of user_input.
# Loop through user_input, changing each character or letter into next one in alphabet.
# Store variable.

# Decrypt Program
# Find indexes of user_input.
# Reduce to previous index, print.

puts "Please enter your password."
user_input = gets.chomp

len = user_input.length
encrypt = ""

index = 0

while index < len
  encrypt[index] = user_input[index].next
  index += 1
end

puts encrypt