class Game

  $count_p1 = 0
  $count_p2 = 0
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

  def compare(choice1, choice2)
    result = choice1.compare(choice2)
    if(result == 'win')
      @rounds.push('p1')
      $count_p1 = $count_p1 +1
    elsif (result == 'lose')
      @rounds.push('p2')
      $count_p2 = $count_p2 +1
    else
      @rounds.push('tie')
      $count_tie = $count_tie +1
    end
      
  end

  def play_game(player1, player2)
    self.set_player1(player1)
    self.set_player2(player2)
    x = 3
    while (x<3)
      choice1 = @player1.paper
      choice2 = @player2.stone
      self.compare(choice1, choice2)
    end 
    self.the_winner_is()
  end

  def the_winner_is()
    if $count_tie > $count_p2 && $count_tie > $count_p1 
      'Tie'
    elsif $count_p1 < $count_p2
      'Player2'
    elsif $count_p1 > $count_p2
      'Player1'
    else 
      'Tie2'
    end
  end

end
