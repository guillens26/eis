require_relative '../choices/choice'


class Paper < Choice

  #Seteo como juega el papel
  def initialize
    @name = 'paper'   
    @paper = 'tie'
    @scissors = 'lose'
    @stone = 'win'
    @monkey = 'lose'
   
  end


end
