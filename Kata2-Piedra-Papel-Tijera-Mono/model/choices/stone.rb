require_relative '../choices/choice'

class Stone < Choice

  #Seteo como juega la piedra
  def initialize  
    @name = 'stone'   
    @paper = 'lose'
    @scissors = 'win'
    @stone = 'tie'
    @monkey = 'tie'
 
  end




end
