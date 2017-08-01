# GROCERY LIST

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # First separate items and store them in an array.
  # Quantity: 2 of each.
  # Call method I made to print list.
# Output into a hash.  The key is the item; the value is the quantity of the item.

  # REFERENCE
  # items = "carrots apples cereal pizza"
  # grocery_list = create_list (items)
  # add_item(grocery_list, "bananas", 1)

# Method to add an item to a list
# input: Put hash, item name for key, and optional quantity for value.
# steps: 
# 1. Add name and quantity to hash as key-value pair.
# Output is the hash with all the key-value pairs.

# Method to remove an item from the list
# input: List, item to remove.
# steps: Find item and remove it from list.
# output: List without removed item.

# Method to update the quantity of an item
# input: List, key to update, new quantity.
# steps: Indicate item and update the number of this item on the list.
# output: List with new item quantity.

# Method to print a list and make it look pretty
# input: List, separator. 
# steps: Print list with separator to more clearly indicate next items or quantities on list.
# output: Pretty list.

def create_list (items)
  grocery_list = {}
  items = items.split(' ')
  items.each do |item|
    grocery_list[item] = 2
  end
   return grocery_list
end 

def add_item (list, item, quantity)
  list[item] = quantity
end

def remove_item (list, item)
  list.delete(item)
end

def update_item (list, key, newval)
  list[key] = newval
end

def print_list (list)
  puts " "
  puts "Today's Grocery List"
  puts "===================="
  puts (list.map{|k, v| "#{k}: #{v}" }.sort)
end

# DRIVER CODE

grocery_list = create_list("Lemonade Tomatoes Onions")

add_item(grocery_list, "Ice Cream", 4)

update_item(grocery_list, "Tomatoes", 3)

update_item(grocery_list, "Onions", 1)

remove_item(grocery_list, "Lemonade")

update_item(grocery_list, "Ice Cream", 1)

print_list(grocery_list)

# REFLECTION

# What did you learn about psuedocode from working on this challenge?
  # From my guide, I learned that psuedocode goes a certain place in the Ruby document.
  # Too much psuedocode between my other lines of code can make the page seem cluttered.
  # I also learned that although the psuedocode is in plain English, it still has to relate
  # to the code as much as possible without actually looking like code.

# What are the tradeoffs of using arrays and hashes for this challenge?
  # It seems to me like arrays are more for order, and hashes are more for customization.
  # When I just need a basic ordered list of something, I can use an array.  When I want
  # to be a little more specific, I can use a hash.

# What does a method return?
  # A method returns an object.  What it returns is based on what method was called last.

# What kind of things can you pass into methods as arguments?
  #  Values (strings, integers, methods) and other methods.

# How can you pass information between methods?
  # You can call a method inside another method.  To do this, a method should first be called
  # and given a variable, so the method scope accommodates calling it into other methods.

# What concepts were solidified in this challenge, and what concepts are still confusing?
  # Method parameters are a lot clearer to me now, and the fact that if you give a method
  # parameters, you have to fulfill those parameters in method or it won't work.  What's 
  # still a bit confusing to me is writing the actual methods.  The most confusing part
  # of that is when variables start changing inside methods.  I tend to lose track of them
  # then, and mix up them up with the parameters.  This GPS really helped though, and may
  # be just what I needed to get back on track.