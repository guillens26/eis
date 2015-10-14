require_relative '../model/ship'

class Submarine < Ship

  def initialize()
  	@name = 'submarine'
    @size = 1
    @ubication = Array.new(1) 
    @state = 1
  end


end
