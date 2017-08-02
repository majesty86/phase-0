# Practice code from attributes video (refer to if needed)
  
# class Reindeer
#   attr_reader :location
#   attr_accessor :name

#   def initialize(name)
#     @name = name
#     @location = "the North Pole"
#   end

#   def take_off(altitude)
#     puts "#{@name} took off."
#     puts "#{@name} ascended to #{altitude} feet."
#   end

#   def land(location)
#     puts "#{@name} landed safely in #{location}."
#     @location = location
#   end 

  # def about
  #   puts "Name: #{@name}"
  #   puts "Location: #{@location}"
  # end
# end



# reindeer = Reindeer.new("Dasher")
# puts "#{reindeer.name} is in #{reindeer.location}."
# reindeer.take_off(3000)
# reindeer.land("Cape Town")
# reindeer.name = "The Reindeer Formerly Known as Dasher"
# puts "#{reindeer.name} is in #{reindeer.location}."


# reindeer = Reindeer.new("Blitzen")
# reindeer.about
# reindeer.take_off(3000)
# reindeer.land("Bombay")
# reindeer.about

# reindeer = Reindeer.new("Vixen")
# reindeer.about
# reindeer.take_off(1000)
# reindeer.land("California")
# reindeer.about

# SANTAAAAAA!  I KNOW HIM!
# Create Santa class
# Santa class should have two behaviors: speak, eat milk and cookies, and one method that initializes the instances.

# Add driver code below the Santa class to test it out.

class Santa
  attr_reader :age
  attr_accessor :gender, :ethnicity

def initialize(gender, ethnicity)
    puts "Initializing Santa instance..."
    @gender = gender
    @ethnicity = ethnicity
    @reindeer_ranking = ["Rudolph", "Dasher", "Dancer", "Prancer", "Vixen", "Comet", "Cupid", "Donner", "Blitzen"]
    @age = 0
  end

  def speak
    puts "The #{@gender} #{@ethnicity} Santa says 'Ho, ho, ho!  Haaaaaapppy Holidays!'  Which is surprising, because his age is #{@age} years!"
  end

  def eat_milk_and_cookies(cookie)
    puts "That was a good #{cookie} cookie!"
  end

  def celebrate_birthday
    age = @age + 1
    p "Happy birthday! The #{@gender} #{@ethnicity} Santa is now #{age} years old!"
  end


  def get_mad_at(reindeer_name)
    reindeer = @reindeer_ranking
    reindeer.delete(reindeer_name)
    reindeer.insert(-1, reindeer_name)
    puts "Santa is mad at you, #{reindeer_name}!  Get to the back of the line!"
  end

  def about
    puts "Age: #{@age}"
    puts "Gender: #{@gender}"
    puts "Ethnicity: #{ethnicity}"
  end 
end

# santa = Santa.new("male", "black")
# santa.speak
# santa.eat_milk_and_cookies("peanut butter")

santas = []
genders = ["agender", "female", "bigender", "male", "female", "gender fluid", "N/A"]
ethnicities = ["black", "Latino", "Arab", "Indian", "Japanese", "Mystical Creature (Chupacabra)"]

# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end 

# p santas

santa = Santa.new("female", "Korean")
santa.about
santa.get_mad_at("Comet")
santa.gender = "cis female"
santa.about
santa.celebrate_birthday

puts " "
puts "======================================================"
puts " "

santa = Santa.new("male", "caucasian")
santa.about
santa.speak
santa.gender = "teenage boy"
santa.ethnicity = "Viking Indian"
santa.about

