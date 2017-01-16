class Game
  attr_reader :guess
  attr_reader :turns
  attr_reader :word


  def initialize
    @word = ['boomtown',
             'manage',
             'saw',
             'serious',
             'tough',
             'frame',
             'mine',
             'average',
             'thunder',
             'plantation',
             'compare',
             'flood',
             'rinse',
             'wacky',
             'vagabond',
             'tacit',
             'lively',
             'disastrous',
             'blade',
             'quixotic',
             'interfere',
             'lackadaisical',
             'hammer',
             'gorgeous',
             'pine',
             'fly'].sample.split("")
    @turns = @word.length
    @guess = Array.new @word.length
  end

  def win
    @display == @word
  end

  def take_turn(guess)
    if @guess.include?(guess)
      puts "You already guessed #{guess} !"
    elsif @guess == @word
      puts "You Win!! The word was #{@word}"
    elsif !@guess.include?(guess)
      @guess.push(guess)
      @display = @word.map do |l|
        if @guess.include?(l)
          l
        else
          '_'
        end
      end
      @turns -= 1
    end
  end

  def show_word_line
    @display = @word.map do |l|
      if @guess.include?(l)
        l
      else
        '_'
      end
    end
    @display.join(' ')
  end


  def out_of_tries?
    @turns == 0
  end

end

