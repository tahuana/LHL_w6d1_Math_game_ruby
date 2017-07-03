class Turn

  def initialize (player1, player2)
    @player1 = player1
    @player2 = player2
    @current_player = ""
  end

  def play_turn
    puts "--- NEW TURN ---"
    @current_player = @player1
    call_question
    @current_player = @player2
    call_question
  end

  def call_question
    question = Question.new(@current_player)
    result = question.show_question
    if result
      puts "#{@current_player.name}: YES! You are correct."
    else
      @current_player.lose_life
      puts "#{@current_player.name}: Seriously? No!"
    end
  end
end
