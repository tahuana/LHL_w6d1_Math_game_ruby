class Question

  def initialize(current_player)
    @number1 = Random.new.rand(1..20)
    @number2 = Random.new.rand(1..20)
    @player_name = current_player.name
  end

  def show_question
    puts "#{@player_name}: What does #{@number1} plus #{@number2} equal?"
    result = gets.chomp
    if @number1 + @number2 == result.to_i
      return true
    else
      return false
    end
  end

end
