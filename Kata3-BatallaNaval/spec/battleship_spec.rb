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

 

end