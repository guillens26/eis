require 'matrix'

# for a set a value directly in a position in my board as a method set
class Matrix
  def []=(row, column, value)
    @rows[row][column] = value
  end
end