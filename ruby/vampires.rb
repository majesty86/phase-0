# Questions first, as the if statements below rely on the answers.

puts "What is your name?"
employee_name = gets.chomp 

if employee_name == "Drake Cula"
  then employee_name = false
elsif employee_name == "Tu Fang"
  then employee_name = false
else true
end


puts "How old are you?" 
age = gets.to_i

puts "What year were you born?"
birthyear = gets.to_i

if age == (2017 - birthyear)
  then age = true
elsif age != (2017 - birthyear) 
  then age = false
else  
  res_inc = true
end

puts "Our company cafeteria serves garlic bread.  Should we order some for you?"
garlic = gets.chomp

if garlic == "yes"
  garlic = true
elsif garlic == "no"
  garlic = false
else 
  res_inc = true
end

puts "Would you like to enroll in the company's health insurance?"
health = gets.chomp

if health == "yes"
  health = true
elsif health == "no"
  health = false
else
  res_inc = true
end

# Conditional Statements
c_vampire = false
d_vampire = false

if employee_name == false 
  then d_vampire = true
end 

unless d_vampire == true
  if age == true && (garlic == true || health == true)
    then puts "Probably not a vampire."
  end

  if age == false && (garlic == true || health == true)
    then puts "Probably a vampire."
  end

  if age == false && garlic == false && health == false
    then puts "Almost certainly a vampire."
  end
end

if d_vampire == true
  puts "Definitely a vampire."
end

if res_inc == true
  then puts "Results inconclusive."
end

