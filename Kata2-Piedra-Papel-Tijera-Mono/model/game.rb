class Game

  $rounds_wins_p1 = 0
  $rounds_wins_p2 = 0
  $count_tie = 0

  def initialize()
    @rounds = Array.new()
  end

  def rounds
    @rounds 
  end

  def player1
    @player1
  end

  def player2
    @player2
  end

  def set_player1(player)
    @player1 = player
  end

  def set_player2(player)
    @player2 = player
  end

  def compare()
    result = @player1.selected.compare(@player2.selected)
    result

  end

  def save_win_round(result)
    if(result == 'win')
      @rounds.push('p1')
      $rounds_wins_p1 = $rounds_wins_p1 +1
    elsif (result == 'lose')
      @rounds.push('p2')
      $rounds_wins_p2 = $rounds_wins_p2 +1
    else
      @rounds.push('tie')
      $count_tie = $count_tie +1
    end
      
  end

  def play_round(choice1, choice2) 
    @player1.choose(choice1)
    @player2.choose(choice2)
    result = self.compare()
    self.save_win_round(result)
  end

  def play_game(player1, player2)
    self.set_player1(player1)
    self.set_player2(player2)
    x = 3
    not_ended = true 
    while (x>0 && not_ended)
      if (hay_ganador())
        result_global = self.result_global_is()
        not_ended = false  
      else
        self.play_round(@player1.paper, @player2.stone)
      end
      x = x - 1 
    end
    result_global
    
  end

  def hay_ganador() 
    $rounds_wins_p1 == 2 || $rounds_wins_p2 == 2
  
  end

  def result_global_is()
    #Tie cuando la cant de ties es mayor a la cantidad de rondas ganadas por los jugadores
    if ($count_tie > $rounds_wins_p2 && $count_tie > $rounds_wins_p1) 
      'Tie'
    elsif ($rounds_wins_p1 < $rounds_wins_p2)
      'Player2'
    elsif ($rounds_wins_p1 > $rounds_wins_p2)
      'Player1'
    #Este tie es cuando hay 1 tie 1 player1 win y 1 player2 win
    else 
      'Tie'
    end
  end

end
