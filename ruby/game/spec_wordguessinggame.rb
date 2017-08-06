require_relative 'wordguessinggame'

describe Wordgame do

  it "Allows user 1 to define secret word" do
  game = Wordgame.new
    expect(game.secret_word).to eq game.secret_word
  end

  it "Limits number of user 2's guesses to length of the secret word, minus one" do
    game = Wordgame.new
    expect(game.limit).to eq game.secret_word.length - 1
  end

  it "Ends game if user 2 guesses right word" do
    game = Wordgame.new
    expect(game.end_game).to eq true
  end

  it "Doesn't count repeated guesses against the user" do
    game = Wordgame.new
    expect(game.repeats_ok(game.guessed_word)).to eq true
  end

  # it "Updates user 2 on state of word after each guess" do
  #   game = Wordgame.new
  #   expect(game.update).to eq true
  # end

  # it "Gives congratulatory message if user 2 wins or taunting message if user 2 loses" do
    # something like this: 
    # if (game.win = true)expect(congratulatory message)
    # if (game.win = false)expect(taunting message)
  # end

end 