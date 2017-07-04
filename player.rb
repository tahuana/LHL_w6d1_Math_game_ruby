class Player

  attr_accessor :total_of_life, :name

  def initialize
    self.name = ""
    self.total_of_life = 3
  end

  def get_name
    puts "What is your name?"
    self.name = gets.chomp
  end

  def lose_life
    self.total_of_life -= 1
  end

end
