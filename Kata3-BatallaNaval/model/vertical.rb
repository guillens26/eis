class Vertical

  def put_ship(board, ship, row, column)
    lenght_ship = ship.size
    column2 = column
    if (check_limits_board(board, lenght_ship, row, column2))
      if (check_empty_pos(board, lenght_ship, row, column2))
        while(lenght_ship > 0)
          pos = 0
          ship.ubication[pos] = [row,column2]
          board.positions[row, column2] = ship
          column2 = column2 + 1
          pos = pos + 1
          lenght_ship = lenght_ship -1
        end
      else
        raise 'The position is already occuped'    
      end
    else
      raise 'The poscion is outside the limits'
    end
  end

  def check_empty_pos(board, lenght, row, column)
    lenght_ship  = lenght
    column2  = column
    empty = true
    while(lenght_ship > 0)
      if(board.positions[row, column2] != 'water')
        empty =false
      end
      column2 = column2 + 1
      lenght_ship = lenght_ship -1
    end
    empty
  end

  def check_limits_board(board, lenght, row, column)
    lenght_ship  = lenght
    column2 = column
    limit = true
    while(lenght_ship > 0)
      if(board.positions[row, column2] == nil)
        limit =false
      end
      column2 = column2 + 1
      lenght_ship = lenght_ship -1
    end
    limit
  end
end
