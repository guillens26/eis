require_relative '../model/my_matrix'

class Board

  def initialize(rows, columns)
   @positions = Matrix.build(rows, columns){|row, col| 'water'}
  end

  def positions
    @positions
  end

end
