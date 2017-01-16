require_relative 'player'
require_relative 'game'

p = Player.new
g = Game.new

puts "Welcome to Hangman, Good Luck!\n\n"
until g.win || g.out_of_tries?
  begin
    puts "#{g.show_word_line}\n\n"
    puts "Number of guesses remaining: #{g.turns}"
    puts "Already guessed:  #{g.guess.join()}\n\n"
    guess = p.prompt_for_move
    g.take_turn(guess)
    if p.user_quit?
      puts "You are a quitter, GAME OVER"
      break
    end
  end
end
if g.win
  puts "You Win!! The word was #{g.word.join()} !"
else
  g.out_of_tries?
  puts "Out of turns! The word was #{g.word.join()}.  Your guesses were:  #{g.guess.join()}, and you failed to guess the word correctly"
end



