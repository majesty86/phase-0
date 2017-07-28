# INSERTION-SORT ALGORITHM

# Create empty result array called new_array

# Using all integers from first_array (one at a time) loop for each integer in new_array

# If new_array is empty, put integer from first_array inside new_array.
  # After first loop, array will have '4' inside it.
  # After second loop, '12'
  # After third loop, '1'
  # After fourth loop, '9'
  # After fifth loop, '30'
  # After final loop, '2'
    #For each of these loops, check integer against other integers to see if they less than or greater than.
      # If less than integer, put before.
      # If greater than integer, put after.
 

# NOTES FROM OFFICE HOURS: 

# Print constantly when trying it out.

# Start with Outermost loop, work your way in.

[4, 12, 1, 9, 30, 2]    

[1, 2, 4, 9, 12, 30]

new_array = []
first_array = [4, 12, 1, 9, 30, 2]

first_array.each do |x, new_ary|
  if new_ary == 0
  x << new_ary
  end
end 

