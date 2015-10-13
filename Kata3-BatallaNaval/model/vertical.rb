class Vertical

  def put_ship(board, ship, row, column)
  	lenght_ship = ship.size
  	column2 = column
  	while(lenght_ship > 0)
  		board.positions[row, column2] = ship
  		column2 = column2 + 1
  		lenght_ship = lenght_ship -1
  	end
    
  end


end
