def hello
  puts "Hello World!"
  yield("Amanuel", "Toby")
end

hello { |name1 ,name2| puts "Welcome, #{name1} and #{name2}!" }

countries = ["America", "China", "Brazil"]
capital_cities = {
    America: "D.C",
    China: "Beijing",
    Brazil: "Brasisla"
}

countries.each {|countries| puts countries.upcase}

countries.map! do |country|
    puts country
    country.upcase
end

puts countries

capital_cities.each do |key, value|
    puts key.upcase
    puts value
end

puts capital_cities


states_provinces = [50, 23, 26]
states_provinces.delete_if {|number| number < 25}
puts states_provinces

lunches = {"Taco" => 2, "Burrito" => 6, "Hot Dog" => 1}
lunches.delete_if {|key, value| value >= 5}
puts lunches

states_provinces = [50, 23, 26]
states_provinces.keep_if {|number| number == 50}
puts states_provinces

lunches = {"Taco" => 2, "Burrito" => 6, "Hot Dog" => 1}
lunches.keep_if {|key, value| value == 1}
puts lunches

grades = [104, 3, 0, 98, 27].select { |grades| grades.even?}
p grades

# For number four, made it 'real-world' by giving numbers, but these numbers are based on a local
# fast-food joint who used to be gladly known for its GIANT drinks!  However, with the obesity
# epidemic and all, they've decided to drop the three biggest sizes.

# Number 4 - Array

drink_sizes = [16, 20, 32, 48, 96, 128]
p drink_sizes.take_while{ |oz| oz < 48} 

# Number 4 - Hash

drink_sizes = {
  Small: 16,
  Medium: 20,
  Large: 32,
  XLarge: 48,
  DoubleXLarge: 96,
  Gallon: 128
}

p drink_sizes.keep_if{ |key, value| value < 48}




