class Horizontal

  def put_ship(board, ship, row, column)
  	lenght_ship = ship.size
  	row2 = row
  	while(lenght_ship > 0)
  		board.positions[row2, column] = ship
  		row2 = row2 + 1
  		lenght_ship = lenght_ship -1
  	end
    
  end


end
