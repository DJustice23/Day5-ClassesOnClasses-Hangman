class Player

  def prompt_for_move
    print "Guess a letter smarty! > "
    @input = gets.chomp
  end

  def user_quit?
    if @input == 'quit'
      return true
    end
  end

end