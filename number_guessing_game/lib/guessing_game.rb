class Game
  def initialize
    number
    try
    hints
  end

  def number
    @number = rand(1..100)
  end

  def try
    puts "What number am I thinking of?"
    @guess = gets.chomp.to_i
  end

  def hints
    loop do
    if @guess > @number
      puts "Too high!"
      try
    elsif @guess < @number
      puts "Too low!"
      try
    else @guess == @number
      endgame
    end
  end
  end

  def endgame
      puts "YOU GOT IT! Type 'y' to play again!"
        play = gets.chomp
    if play.include? "y"
      system("clear")
      try
    else
    system("clear")
    exit
    end
   end
end


Game.new

