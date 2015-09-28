require_relative '../choices/choice'
require_relative '../state/lose'

class Stone < Choice

  def initialize  
  	lose = Lose.new
    
    @name = 'stone'   
    @paper = lose.string
 
  end




end
