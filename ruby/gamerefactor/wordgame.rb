# Class for word-guessing game:

# Side-note: 
# Driver code is what "user" uses to play the game.
# The class described below is what the "computer" uses to determine the game's specifications, rules and results.

# Create a class called "game" or the title of your game.

# Class allows:
  # 1 user to enter word or phrase (writer), and another user(guesser) attempts to guess the word.
    # If possible, user 1 should be able to enter input without user 2 seeing. 

  # Limiting of guesses by guesser, which is directly related to the word length.

  # In this class, repeated guesses won't count against the guesser.

  # Guesser will receive continual feedback on the word's current state.  If a correct letter is guessed, 
  # they will see their letter and the remaining spaces.

  # Guesser receives congratulatory message if they win, and a taunting one if they lose.

class Wordgame
  attr_reader :guess_count, :is_over, :game_name
  attr_accessor :user1, :user2, :secret_word, :guessed_word, :words_guessed

  def initialize
    puts "Game is starting..."
    @user1 = ""
    @user2 = ""
    @game_name = "Guess the Word"
    @secret_word = ""
    @guessed_word = ""
    @guess_count = 0
    @words_guessed = []
  end

  def welcome
    "#{@user1} and #{@user2}, WELCOME TO #{@game_name.upcase}!"
  end

  def limit
    @guess_count = @secret_word.length
  end

  def counter
    if @words_guessed.drop(1).include?(@guessed_word)
      @guess_count -= 0
    else
      @guess_count -= 1
    end
  end

  def endgame
    @guessed_word == @secret_word
  end

  def feedback(secret, guessed)
    display_str = ' '
    secret.chars.each do |char|
      if guessed.include?(char)
        display_str << "#{char} "
      else
        display_str << '_ '
      end
    end
    display_str
    end
end

taunts = [
  "numbnuts",
  "airhead",
  "ya dweeb",
  "klutz",
  "ya womp",
  "Einstein",
  "doofus"
]

compliments = [
  "smarty-pants",
  "wordmaster",
  "Shakespeare",
  "buddy",
  "chief",
  "champ"
]


# USER INTERFACE

game = Wordgame.new

puts "User 1, please enter your name:"
game.user1 = gets.chomp
puts "User 2, please enter your name:"
game.user2 = gets.chomp
puts " "
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts game.welcome
puts "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
puts " "

puts "#{game.user2}, please face away from the screen and count to 30."
puts " "
puts "#{game.user1}, please enter your secret word."
game.secret_word = gets.chomp
game.limit

50.times.each do
  puts " "
end

puts "There are #{game.secret_word.length} letters in the secret word!"
puts " "

until game.guess_count == 0 || game.endgame == true
  puts "You have #{game.guess_count} guesses remaining."
  puts "#{game.user2}, guess the word!"
  game.guessed_word = gets.chomp
  game.words_guessed.insert(0, game.guessed_word)
  game.counter
  p game.feedback(game.secret_word, game.guessed_word)
end

puts " "
if game.guess_count == 0 && game.endgame == false
  puts "Way to go, #{taunts.sample}! You lost!"
else
  puts "Congratulations, #{compliments.sample}! You won!"
end

puts "Thank you for playing #{game.game_name}!!!"
