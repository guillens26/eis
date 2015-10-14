require 'rspec' 
require_relative '../model/battleship'

describe 'Battleship' do

  let(:battleship) { Battleship.new}

  #Test 1
  it 'created empty board 3,3 rows should be 3  ' do
    battleship.create_empty_board(3,3)
    expected = 3
    expect(expected).to eq battleship.board.positions.row_size
  end

  #Test 2
  it 'put a submarine in pos 1,1 in empty board should be submarine  ' do
    battleship.create_empty_board(3,3)
    battleship.put_ship([1,1], 'submarine' , 'horizontal')
    expected = 'submarine'
    expect(expected).to eq battleship.board.positions[1,1].ship.name
  end

  #Test 3
  it 'put a cruiser in pos 1,1 in empty board horizontal should be cruiser in 2,1  ' do
    battleship.create_empty_board(3,3)
    battleship.put_ship([1,1], 'cruiser' , 'horizontal')
    expected = 'cruiser'
    expect(expected).to eq battleship.board.positions[2,1].ship.name
  end

  #Test 4
  it 'put a destroyer in pos 0,0 in empty board horizontal should be cruiser in 0,2  ' do
    battleship.create_empty_board(3,3)
    battleship.put_ship([0,0], 'destroyer' , 'vertical')
    expected = 'destroyer'
    expect(expected).to eq battleship.board.positions[0,2].ship.name
  end

  #Test 5
  it 'put a cruiser in pos 2,2 wich a submarine should be pos already occuped  ' do
    battleship.create_empty_board(3,3)
    battleship.put_ship([2,2], 'submarine' , 'vertical')
    begin
      battleship.put_ship([2,1], 'cruiser' , 'vertical')
    rescue Exception => e
     @excepcion = e
    end
    expect(@excepcion.message).to eq 'The position is already occuped'
  end


  #Test 6
  it 'put a cruiser in pos outside de board should be The poscion is outside the limits' do
    battleship.create_empty_board(3,3)
    begin
      battleship.put_ship([4,2], 'cruiser' , 'vertical')
    rescue Exception => e
     @excepcion = e
    end
    expect(@excepcion.message).to eq 'The poscion is outside the limits'
  end

  #Test 7
  it 'shoot in the pos 1,1 should be water  ' do
    battleship.create_empty_board(3,3)
    expected = 'water'
    expect(expected).to eq battleship.shoot([1,1])
  end

end