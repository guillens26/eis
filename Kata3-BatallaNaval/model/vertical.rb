require_relative '../model/section'

class Vertical

  def put_ship(board, ship, row, column)
    lenght_ship = ship.size
    column2 = column
    while(lenght_ship > 0)
      pos = 0
      ship.ubication[pos] = Section.new(ship)
      if(board.positions[row, column2] == nil)
        board.positions[row, column2] = ship.ubication[pos]
      else
        raise 'The position is already occuped'
      end
      column2 = column2 + 1
      pos = pos + 1
      lenght_ship = lenght_ship -1
    end
    
  end


end
