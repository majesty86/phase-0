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
    @age = rand(0..140)
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
genders = [
  "Bi-gendered",
  "Cross-dresser",
  "Drag King",
  "Drag Queen",
  "Femme Queen",
  "Female-to-Male",
  "Gender Bender",
  "Male-to-Female",
  "Non-Op",
  "HIJRA",
  "Pangender",
  "Trans",
  "Woman",
  "Man",
  "Butch",
  "Two-Spirit",
  "Agender",
  "Third Sex",
  "Gender Fluid",
  "Non-Binary Transgender",
  "Androgynous",
  "Gender Gifted",
  "Gender Blender",
  "Femme",
  "Person of Transgender Experience",
  "Cis Man",
  "Cis Woman",
  "Neither",
  "Genderqueer"
]

ethnicities = [
  "Algerian",
  "Belarusian",
  "Chinese",
  "Dane",
  "Goth",
  "Teuton",
  "Viking",
  "Nord",
  "Elven",
  "Dwarven",
  "Orc",
  "Khajiit",
  "Argonian",
  "Finnish",
  "Norwegian",
  "Euro-Canadian",
  "Native Viking",
  "Inuit",
  "Trans-Siberian Orchestran",
  "German",
  "Prussian",
  "Gambian",
  "Afrikaaner",
  "Togolese",
  "Japanese-Chinese-Indian-Canadian-African-Russian-American"
]

# genders.length.times do |i|
#   santas << Santa.new(genders[i], ethnicities[i])
# end 

# p santas

# santa = Santa.new("female", "Korean")
# santa.about
# santa.get_mad_at("Comet")
# santa.gender = "cis female"
# santa.about
# santa.celebrate_birthday

puts " "
puts "======================================================"
puts " "

# santa = Santa.new("male", "caucasian")
# santa.about
# santa.speak
# santa.gender = "teenage boy"
# santa.ethnicity = "Viking Indian"
# santa.about
# santa.celebrate_birthday

# PSUEDOCODE FOR "LOTS OF SANTAS" PROGRAM

# Update the 2 arrays for genders and for ethnicities.  Put 30 examples in each one.
# To determine the gender and ethnicity for each Santa, find out how to randomly select something
# from each array for each Santa.

# Set Santa's age anywhere between 0 and 140.  I have a feeling I can use 0 .. 140 here, and not use
# a data structure.  That's my hunch anyway.

# When printing these Santas, print out the attributes using the instance methods.

x = 250000
while x > 0
  x -= 1
  santa = Santa.new(genders.sample, ethnicities.sample)  
  puts santa.about
  puts "=============================="
  puts " "
end
