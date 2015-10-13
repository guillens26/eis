require_relative '../model/board'

class Battleship

  def board
    @board
  end

  def create_empty_board(rows, columns)
    @board = Board.new(rows, columns)
  end
 

end
