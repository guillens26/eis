require_relative '../model/choices/monkey'
require_relative '../model/choices/scissors'
require_relative '../model/choices/paper'
require_relative '../model/choices/stone'

class Player

  #Un jugador conoce a las 4 posibles variantesdel juego
  def initialize()
    @stone = Stone.new
    @monkey = Monkey.new
    @scissors = Scissors.new
    @paper = Paper.new

  end

  def stone
    @stone
  end

  def monkey
    @monkey
  end

  def paper
    @paper
  end

  def scissors
    @scissors
  end

end
