require_relative '../choices/choice'

class Monkey < Choice

  #Seteo como juega el mono
  def initialize
  	@name = 'monkey'
  	@paper = 'win'
    @scissors = 'lose'
    @stone = 'tie'
    @monkey = 'tie'
  end

end
