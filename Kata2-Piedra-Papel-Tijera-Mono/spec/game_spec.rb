require 'rspec' 
require_relative '../model/choices/stone'
require_relative '../model/choices/paper'
require_relative '../model/player'
require_relative '../model/game'


describe 'Stone,Paper,Scissors or Monkey' do

  let(:stone) { Stone.new }
  let(:paper) { Paper.new }
  let(:player1) {Player.new} 
  let(:player2) {Player.new} 
  let(:game) {Game.new}

  #Test 1
  it 'name de stone deberia ser stone ' do
    expected = stone.name
    expect(expected).to eq 'stone'
  end

  #Test 2
  it 'paper de stone deberia ser lose ' do
    expected = stone.paper
    expect(expected).to eq 'lose'
  end

  #Test 3
  it 'scissors de stone deberia ser win ' do
    expected = stone.scissors
    expect(expected).to eq 'win'
  end

  #Test 4
  it 'stone de stone deberia ser tie ' do
    expected = stone.stone
    expect(expected).to eq 'tie'
  end

  #Test 5
  it 'monkey de stone deberia ser tie ' do
    expected = stone.monkey
    expect(expected).to eq 'tie'
  end

  #Test 6
  it 'stone compare con paper gana paper deberia ser lose ' do
    expected = stone.compare(paper)
    expect(expected).to eq 'lose'
  end

  #Test 7
  it 'jugador1 juega stone deberia ser stone ' do
    expected = player1.stone
    expect(expected.name).to eq 'stone'
  end

  #Test 8
  it 'j1 play paper y j2 play stone deberia ganar j1 ' do
    choice1 = player1.paper
    choice2 = player2.stone
    game.compare(choice1, choice2)
    expected = game.rounds[0]
    expect(expected).to eq 'p1'
  end

  #Test 9
  it 'j1 y j2 juegan y gana j1 deberia ser Player1 ' do
    expected = game.play_game(player1, player2)
    expect(expected).to eq 'Player1'
  end


end