class Horizontal

  def put_ship(board, ship, row, column)
    lenght_ship = ship.size
    row2 = row
    if (check_limits_board(board, lenght_ship, row2, column))
      if (check_empty_pos(board, lenght_ship, row2, column))
        while(lenght_ship > 0)
          pos = 0
          ship.ubication[pos] = [row2,column]
          board.positions[row2, column] = ship
          row2 = row2 + 1
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
    row2 = row
    empty = true
    while(lenght_ship > 0)
      if(board.positions[row2, column] != 'water')
        empty =false
      end
      row2 = row2 + 1
      lenght_ship = lenght_ship -1
    end
    empty
  end

  def check_limits_board(board, lenght, row, column)
    lenght_ship  = lenght
    row2 = row
    limit = true
    while(lenght_ship > 0)
      if(board.positions[row2, column] == nil)
        limit =false
      end
      row2 = row2 + 1
      lenght_ship = lenght_ship -1
    end
    limit
  end
end
