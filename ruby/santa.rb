# Practice code from attributes video (refer to if needed)

# class Reindeer
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

#   def about
#     puts "Name: #{@name}"
#     puts "Location: #{@location}"
#   end 
# end


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

end

santa = Santa.new("male", "black")
santa.speak
santa.eat_milk_and_cookies("peanut butter")

