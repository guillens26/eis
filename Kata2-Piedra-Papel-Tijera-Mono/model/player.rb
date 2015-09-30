require_relative '../model/choices/monkey'
require_relative '../model/choices/scissors'
require_relative '../model/choices/paper'
require_relative '../model/choices/stone'

class Player

  #Un jugador conoce a las 4 posibles variantes y se puede acordar del que eligio(selected)
  def initialize()
    @stone = Stone.new
    @monkey = Monkey.new
    @scissors = Scissors.new
    @paper = Paper.new
    @selected = nil

  end

  def selected
    @selected
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

  def choose(select)
    @selected = select
    @selected
  end



end
