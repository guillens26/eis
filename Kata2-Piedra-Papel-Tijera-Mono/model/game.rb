class Game

  def initialize()
    @rounds = Array.new() 
  end

  def rounds
    @rounds 
  end

  def compare(choice1, choice2)
    result = choice1.compare(choice2)
    if(result == 'win')
      @rounds.push('p1')
    elsif (result == 'lose')
      @rounds.push('p2')
    else
      @rounds.push('tie')
    end
      
  end

end
