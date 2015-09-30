class Game

  $rounds_wins_p1 = 0
  $rounds_wins_p2 = 0
  $count_tie = 0

  def initialize()
    #Para guardar que jugador gano que ronda
    @rounds = Array.new()
  end

  def rounds
    @rounds 
  end

  #Comparo la seleccion del jugador 1 con la del 2
  def compare(choice1, choice2)
    result = choice1.compare(choice2)
    result

  end

  #Grabo quien gano la ronda en el array rounds y sumo con los contadores para verificar posteriormente
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

  #JUego una ronda con las opciones que elijan los jugadores, las comparo y guardo el ganador de la ronda
  def play_round(choice1, choice2)
    result = self.compare(choice1, choice2)
    self.save_win_round(result)
  end

  # Para jugar una partida a tres rondas
  def play_game(p1_r1, p1_r2, p1_r3, p2_r1, p2_r2, p2_r3)
    #Seteo en 0 y vacio las variables globales
    $rounds_wins_p1 = 0
    $rounds_wins_p2 = 0
    $count_tie = 0
    @rounds = []
    #Juego las primeras 2 rondas
    self.play_round(p1_r1,p2_r1)
    self.play_round(p1_r2,p2_r2)
    if (not hay_ganador())
      self.play_round(p1_r3,p2_r3)  
    end
    self.result_global_is()

  end

  #Saber si hay ganador
  def hay_ganador() 
    ($rounds_wins_p1 == 2 || $rounds_wins_p2 == 2 || $count_tie  == 2) ||
     ($rounds_wins_p1 == 1 && $rounds_wins_p2 == 1 && $count_tie  == 1)
  
  end

  def result_global_is()
    #Tie cuando la cant de ties es mayor a la cantidad de rondas ganadas por los jugadores
    if ($count_tie > $rounds_wins_p1 && $count_tie > $rounds_wins_p2) 
      'Tie'
    elsif ($rounds_wins_p1 > $rounds_wins_p2)
      'Player1'
    elsif ($rounds_wins_p1 < $rounds_wins_p2)
      'Player2'
    #Este tie es cuando hay 1 tie 1 player1 win y 1 player2 win
    else 
      'Tie2'
    end
  end

end
