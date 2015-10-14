require_relative '../model/section'

class Horizontal

  def put_ship(board, ship, row, column)
    lenght_ship = ship.size
    row2 = row
    if (check_empty_pos(board, lenght_ship, row2, column))
      while(lenght_ship > 0)
        pos = 0
        ship.ubication[pos] = Section.new(ship)
        board.positions[row2, column] = ship.ubication[pos]
        row2 = row2 + 1
        pos = pos + 1
        lenght_ship = lenght_ship -1
      end
    else
      raise 'The position is already occuped'    
    end

  end

  def check_empty_pos(board, lenght, row, column)
    lenght_ship  = lenght
    row2 = row
    empty = true
    while(lenght_ship > 0)
      if(board.positions[row2, column] != nil)
        empty =false
      end
      row2 = row2 + 1
      lenght_ship = lenght_ship -1
    end
    empty
  end

end
