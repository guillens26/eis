require_relative '../choices/choice'


class Paper < Choice

  def initialize
    lose = Lose.new
    win = Win.new
    tie = Tie.new
    
    @name = 'paper'   
    @paper = tie.string
    @scissors = lose.string
    @stone = win.string
    @monkey = lose.string
   
  end


end
