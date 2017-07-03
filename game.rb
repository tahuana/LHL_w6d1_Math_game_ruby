class Game

  def initialize
    @winner = false
  end

  def play_game
    player1 = Player.new
    player1.get_name
    player2 = Player.new
    player2.get_name

    while !@winner
      turn = Turn.new(player1, player2)
      turn.play_turn

      p1 = player1.total_of_life
      p2 = player2.total_of_life
      puts "#{player1.name}: #{p1}/3 vs #{player2.name}: #{p2}/3"

      if p1.to_i == 0 && p2.to_i == 0
        puts "\n---> No winner. Try again. <---"
        return
      end

      if p1.to_i == 0
        puts "\n---> #{player2.name} wins with a score of #{p2}/3 <---"
        @winner = true
      elsif p2.to_i == 0
        puts "\n---> #{player1.name} wins with a score of #{p1}/3 <---"
        @winner = true
      end
    end
  end

end
