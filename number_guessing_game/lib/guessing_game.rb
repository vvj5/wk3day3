class Game
  def initialize
    puts guess

  def number
    number = rand(1..100)
  end

  def guess
    puts "What number am I thinking of?"
    guess = gets.chomp.to_i
  end

  def hints
    if guess > number
      puts "Too high!"
    elsif guess < number
      puts "Too low!"
    else guess == number
      endgame
    end

  def endgame
      puts "YOU GOT IT! Type 'y' to play again!"
        play = gets.chomp
    if play.include? "y"
      number
    end
   end
end
