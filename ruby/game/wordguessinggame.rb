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

require 'io/console'


class Wordgame
  attr_accessor :secret_word, :guess_count, :guessed_word
  attr_reader :previous_guesses

  def initialize
    puts "Game is starting..."
    @secret_word = "abcdef"
    @guess_count = 0
    @guessed_word = "abghij"
    @previous_guesses = []
  end

  def limit
    @guess_count = @secret_word.length - 1
  end

  def end_game
    @guessed_word == @secret_word
  end

  def repeats_ok(word)
    @guessed_word = word
    repeat = false
    @previous_guesses << word
    if @previous_guesses.include?(word)
      repeat = true
    else
      false
    end
  end

    def feedback(guessed)
      letter_present = false
      guessed.split(//).each do |letter|
        if @secret_word.include?(letter)
          letter_present = true
          p letter
        else
          false
        end
      end
    end 

end

# Current notes:  Left off on the feedback method.  I'm almost there.  Right now, I have the method displaying
# which letters of the guessed word match the letter of the secret word.  I just need to find out how to display 
# the secret word with ONLY those letters and spaces for the rest.   

game = Wordgame.new
game.feedback(game.guessed_word)


# puts "User 1, what is your secret word?"
# game.secret_word = STDIN.noecho(&:gets).to_s
# puts game.secret_word
# puts game.secret_word.length
# puts game.limit

# until game.guess_count == 0 || game.end_game == true
#   game.guess_count -= 1
#   puts "User 2, what is your guess?"
#   game.guessed_word = gets.chomp"/n"
# 
#   if game.repeats_ok(@guessed_word) == true 
#     @guess_count += 1
# end

# if
#   game.guessed_word == game.secret_word
#   puts "Congratulations, you won!" 
# else
#   puts "You lost!"
# end











# word = STDIN.noecho(&:gets)
# puts word.downcase
