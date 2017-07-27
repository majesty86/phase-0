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

tv_res = {"Sony" => 4000, "Toshiba" =>1920, "Panasonic" => 800}
puts tv_res.has_value?(4000)
puts tv_res.has_key?("Sanyo")

# For number four, some ideas:


# delete_if?
# drop_while


