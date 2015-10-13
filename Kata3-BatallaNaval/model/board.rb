require 'matrix'

class Board

  def initialize(rows, columns)
   @positions = Matrix.build(rows, columns){}
  end

  def positions
    @positions
  end

end
