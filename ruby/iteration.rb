def hello
  puts "Hello World!"
  yield("Amanuel", "Toby")
end

hello { |name1 ,name2| puts "Welcome, #{name1} and #{name2}!" }