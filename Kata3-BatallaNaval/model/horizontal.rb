require_relative '../model/section'

class Horizontal

  def put_ship(board, ship, row, column)
    lenght_ship = ship.size
    row2 = row
    while(lenght_ship > 0)
      pos = 0
      ship.ubication[pos] = Section.new(ship)
      if(board.positions[row2, column] == nil)
        board.positions[row2, column] = ship.ubication[pos]
      else
        raise 'The position is already occuped'
      end

      row2 = row2 + 1
      pos = pos + 1
      lenght_ship = lenght_ship -1
    end

  end


end
