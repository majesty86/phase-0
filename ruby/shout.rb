# module Shout
  
#   def self.yell_angrily(words)
#     puts words + "!!!" + " :( "
#   end

#   def self.yelling_happily(words)
#     puts words.upcase + "!!!!!!!!!!!!!!!!!!!!!!!!" + " :) :) :) :) "
#   end 

# end

# Shout.yell_angrily("jumpin' jahosaphat")
# Shout.yelling_happily("alright")

# Modules, classes, and methods

module Shout

  def yell_loud_for_sake_of_being_loud(words)
    puts "#{words.upcase}!!!!!!! Look at me! #{words.upcase}!!!!!!!"
  end

  def yelling_in_library(words)
    puts "(((#{words.downcase}))) SHHHHHHH!!!"
  end
end 

class Caveman
  include Shout
end

class Kid
  include Shout
end

# DRIVER CODE

caveman = Caveman.new
caveman.yell_loud_for_sake_of_being_loud("oog oog ooga booga")
caveman.yelling_in_library("uha uh uha guh uha?")

kid = Kid.new
kid.yell_loud_for_sake_of_being_loud("I got a brand new fidget spinner")
kid.yelling_in_library("Are there any books about fidget spinners?")