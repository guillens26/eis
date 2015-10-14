require_relative '../model/section'

class Vertical

  def put_ship(board, ship, row, column)
    lenght_ship = ship.size
    column2 = column
    if (check_empty_pos(board, lenght_ship, row, column2))
      while(lenght_ship > 0)
        pos = 0
        ship.ubication[pos] = Section.new(ship)
        board.positions[row, column2] = ship.ubication[pos]
        column2 = column2 + 1
        pos = pos + 1
        lenght_ship = lenght_ship -1
      end
    else
      raise 'The position is already occuped'    
    end
    
  end

  def check_empty_pos(board, lenght, row, column)
    lenght_ship  = lenght
    column2  = column
    empty = true
    while(lenght_ship > 0)
      if(board.positions[row, column2] != nil)
        empty =false
      end
      column2 = column2 + 1
      lenght_ship = lenght_ship -1
    end
    empty
  end

  
end
