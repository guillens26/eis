require_relative '../model/ship'

class Destroyer < Ship

  def initialize()
    @name = 'destroyer'
    @size = 3
    @ubication = Array.new(3) 
    @state = 3
  end


end
