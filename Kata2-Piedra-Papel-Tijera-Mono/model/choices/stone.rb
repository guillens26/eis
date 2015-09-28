require_relative '../choices/choice'
require_relative '../state/lose'
require_relative '../state/win'

class Stone < Choice

  def initialize  
  	lose = Lose.new
  	win = Win.new
    
    @name = 'stone'   
    @paper = lose.string
    @scissors = win.string
 
  end




end
