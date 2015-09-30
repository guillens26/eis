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

  #Comparo la seleccion del jugador 1 con la del 2
  def compare()
    result = @player1.selected.compare(@player2.selected)
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
    @player1.choose(choice1)
    @player2.choose(choice2)
    result = self.compare()
    self.save_win_round(result)
  end

  # Para jugar una partida a tres rondas
  def play_game(player1, player2)
    #Selecciono los jugadores
    self.set_player1(player1)
    self.set_player2(player2)
    # Creo un ciclo para jugar tres rondas
    x = 3
    not_ended = true 
    #Si es menor a 0 fue tie si fue not_ended es que ya hubo un ganador sino sigo
    while (x>0 && not_ended)
      if (hay_ganador())
        #si termino salgo del ciclo y guardo el resultado
        result_global = self.result_global_is()
        not_ended = false  
      else
        #JUego siguiente ronda
        self.play_round(@player1.paper, @player2.stone)
      end
      x = x - 1 
    end
    #Muestro el resultado
    result_global
    
  end

  #SAber si hay ganador
  def hay_ganador() 
    $rounds_wins_p1 == 2 || $rounds_wins_p2 == 2
  
  end

  def result_global_is()
    #Tie cuando la cant de ties es mayor a la cantidad de rondas ganadas por los jugadores
    if ($count_tie > $rounds_wins_p2 && $count_tie > $rounds_wins_p1) 
      'Tie'
    elsif ($rounds_wins_p1 > $rounds_wins_p2)
      'Player1'
    elsif ($rounds_wins_p1 < $rounds_wins_p2)
      'Player2'
    #Este tie es cuando hay 1 tie 1 player1 win y 1 player2 win
    else 
      'Tie'
    end
  end

end
