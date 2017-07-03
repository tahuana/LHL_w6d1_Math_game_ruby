class Player

  attr_reader :total_of_life, :name

  def initialize
    @name = ""
    @total_of_life = 3
  end

  def get_name
    puts "What is your name?"
    @name = gets.chomp
  end

  def lose_life
    @total_of_life -= 1
  end

end
