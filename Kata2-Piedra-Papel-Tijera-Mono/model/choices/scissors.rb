require_relative '../choices/choice'

class Scissors < Choice

  #Seteo como juega la tijera
  def initialize
  	@name = 'scissors'
  	@paper = 'win'
    @scissors = 'tie'
    @stone = 'lose'
    @monkey = 'lose'
  end

end
