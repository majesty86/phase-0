# GROCERY LIST

# Method to create a list
# input: string of items separated by spaces (example: "carrots apples cereal pizza")
# steps: 
  # First separate items and store them in an array.
  # Quantity: 2 of each.
  # Call method I made to print list.
# Output into a hash.  The key is the item; the value is the quantity of the item.

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
   # print_list(grocery_list, '*')
   return grocery_list
end 

def add_item (list, item, quantity)
  list[item] = quantity
  p list
end

items = "carrots apples cereal pizza"
grocery_list = create_list (items)
add_item(grocery_list, "bananas", 1)