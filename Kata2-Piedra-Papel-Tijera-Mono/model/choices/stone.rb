require_relative '../choices/choice'
require_relative '../state/lose'
require_relative '../state/win'
require_relative '../state/tie'

class Stone < Choice

  def initialize  
    lose = Lose.new
    win = Win.new
    tie = Tie.new
    
    @name = 'stone'   
    @paper = lose.string
    @scissors = win.string
    @stone = tie.string
    @monkey = tie.string
 
  end




end
