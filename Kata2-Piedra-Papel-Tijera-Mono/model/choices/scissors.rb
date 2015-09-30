require_relative '../choices/choice'

class Scissors < Choice

  def initialize
  	@name = 'scissors'
  	@paper = 'win'
    @scissors = 'tie'
    @stone = 'lose'
    @monkey = 'lose'
  end

end
