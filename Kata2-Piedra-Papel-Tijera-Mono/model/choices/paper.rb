require_relative '../choices/choice'


class Paper < Choice

  def initialize

    @name = 'paper'   
    @paper = 'tie'
    @scissors = 'lose'
    @stone = 'win'
    @monkey = 'lose'
   
  end


end
