require_relative '../model/ship'

class Cruiser < Ship

  def initialize()
    @name = 'cruiser'
    @size = 2
    @ubication = Array.new(2) 
    @state = 2
  end



end
