require_relative '../model/board'
require_relative '../model/vertical'
require_relative '../model/horizontal'
require_relative '../model/submarine'
require_relative '../model/cruiser'
require_relative '../model/destroyer'

class Battleship

  def initialize()
    @horizontal = Horizontal.new
    @vertical = Vertical.new
  end

  def board
    @board
  end

  def horizontal
    @horizontal 
  end

  def vertical
    @vertical 
  end
  
  def submarine
    @submarine
  end

  def destroyer
    @destroyer
  end

  def cruiser
    @cruiser
  end

  def create_empty_board(rows, columns)
    @board = Board.new(rows, columns)
  end

  def put_ship(pos, ship, direction)
    row = pos[0]
    column = pos[1]
    ship2 = choose_ship(ship)
    direction2 = choose_direction(direction)
    direction2.put_ship(@board, ship2, row, column)
  end

  def choose_direction(direction)
    if ('horizontal' == direction)
      @horizontal
    else
      @vertical    
    end

  end


  def choose_ship(ship)
    if ('submarine' == ship)
      @submarine = Submarine.new
      @submarine
    elsif ('cruiser' == ship)
      @cruiser = Cruiser.new
      @cruiser    
    else
      @destroyer = Destroyer.new
      @destroyer
    end
  end

  def shoot(pos)
    row = pos[0]
    column = pos[1]
    elem_in_pos = state_in(pos)
    if (elem_in_pos == 'water') 
      'water'
    else
      ship = elem_in_pos
      ship.sub_state()
      ship.ubication[row,column] = nil
      board.positions[row,column] = 'water'
      if (ship.state == 0)
        'sunken'
      else
        'touched'
      end
    end

  end

  def state_in(pos)
    row = pos[0]
    column = pos[1]
    @board.positions[row, column]
  end

end
