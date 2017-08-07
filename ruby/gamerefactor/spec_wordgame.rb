require_relative 'wordgame'

describe Wordgame do

  it "welcomes users to the game" do
    game = Wordgame.new
    expect(game.welcome).to eq "#{game.user1} and #{game.user2}, welcome to Guess the Word!"
  end

  it "allows player 1 to enter a secret word" do
    game = Wordgame.new
    expect(game.secret_word).to eq game.secret_word
  end

  it "limits number of player 2's guesses based on length of the secret word" do
    game = Wordgame.new
    expect(game.limit).to eq game.secret_word.length
  end

  it "ends game if player 2 guesses the secret word" do
    game = Wordgame.new
    expect(game.endgame).to eq true
  end

  it "displays feedback of the current letters of the secret word that player 2 has guessed" do
    game = Wordgame.new
    expect(game.feedback(game.secret_word, game.guessed_word)).to eq ""
  end
  
end
