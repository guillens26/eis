require 'rspec' 
require_relative '../model/battleship'
require_relative '../model/submarine'
require_relative '../model/horizontal'

describe 'Battleship' do

  let(:battleship) { Battleship.new}
  let(:submarine) { Submarine.new }
  let(:horizontal) { Horizontal.new }

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
    expected = submarine.size
    expect(expected).to eq battleship.board.positions[1,1].size
  end


 

end