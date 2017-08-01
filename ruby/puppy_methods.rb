class Puppy

  def initialize
    puts "Initializing new puppy instance..."
  end

  def self.fetch(toy)
    puts "I brought back the #{toy}!"
    toy
  end

  def self.speak(number)
    number.times do |woof|
      puts "Woof!"
    end
  end

  def self.roll_over
    puts "roll over"
  end

  def self.dog_years(human_years)
    p human_years * 7
  end

  def self.bark(object)
    puts "Dog is barking at the #{object}."
  end
end 

Puppy.fetch("ball")
Puppy.speak(5)
Puppy.roll_over
Puppy.dog_years(8)
Puppy.bark("closed blinds")
Puppy.new

# use a loop to make 50 instances of our class
  # we will ask user for a name
  # after name is entered, store name as a new instance of class
  # push name into student_array
# call each index in student_array and call both .sorting_hat and .owl_score method on student

class Hogwarts

  def initialize
    puts "Welcome to the School of Witchcraft and Wizardry."
  end

  def sorting_hat(house)
    puts "Congratulations, you're a #{house}!"
  end

  def owl_score(number)
    if number >= 75 && number <= 100
      puts "Congratulations, you passed your OWL exam."
    elsif number < 75 && number >= 0
      puts "Congratulations, you're a squib."
    else
      puts "You didn't take your OWL yet, did you? Please enter a valid score."
    end
  end
end

# Hogwarts.new
# Hogwarts.sorting_hat("Slytherin")
# Hogwarts.owl_score(50)
# Hogwarts.owl_score(80)
# Hogwarts.owl_score(103)

student_hash = {}

50.times do |student_name, student_id|
  puts "What is the student's name?"
  student_name = gets.chomp
  student_id = Hogwarts.new
  student_hash.store(student_name, student_id)
  student_hash
end

student_hash.each do |student_name, student_id|
  p "Results for " + student_name + ":"
  student_id.sorting_hat("GRYFFINDOR")
  student_id.owl_score(78)
end
