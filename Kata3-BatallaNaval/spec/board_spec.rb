require 'rspec' 
require_relative '../model/board'

describe 'Board' do

  let(:board) { Board.new(3,3)}

  #Test 1
  it 'created empty board 3,3 witch water should be water  ' do
    expected = 'water'
    expect(expected).to eq board.positions[0,0]
  end


end