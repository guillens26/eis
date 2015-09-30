require 'rspec' 
require_relative '../model/choices/stone'
require_relative '../model/choices/paper'
require_relative '../model/player'
require_relative '../model/game'
require_relative '../model/choices/monkey'
require_relative '../model/choices/scissors'


describe 'Stone,Paper,Scissors or Monkey' do

  let(:stone) { Stone.new }
  let(:paper) { Paper.new }
  let(:player1) {Player.new} 
  let(:player2) {Player.new} 
  let(:game) {Game.new}
  let(:monkey) { Monkey.new }
  let(:scissors) { Scissors.new }

  #Test 1
  it 'name de stone deberia ser stone ' do
    expected = stone.name
    expect(expected).to eq 'stone'
  end

  #Test 2
  it 'stone paper deberia ser lose ' do
    expected = stone.paper
    expect(expected).to eq 'lose'
  end

  #Test 3
  it 'stone scissors deberia ser win ' do
    expected = stone.scissors
    expect(expected).to eq 'win'
  end

  #Test 4
  it 'stone stone deberia ser tie ' do
    expected = stone.stone
    expect(expected).to eq 'tie'
  end

  #Test 5
  it 'stone monkey deberia ser tie ' do
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
    p1_r1 = player1.paper
    p2_r1 = player2.stone
    game.play_round(p1_r1, p2_r1)
    expected = game.rounds[0]
    expect(expected).to eq 'p1'
  end

  #Test 9
  it 'j1 y j2 juegan un game deberia ganar Player1 ' do
    p1_r1 = player1.paper
    p1_r2 = player1.paper
    p1_r3 = player1.paper
    p2_r1 = player2.stone
    p2_r2 = player2.stone
    p2_r3 = player2.stone
    expected = game.play_game(p1_r1, p1_r2, p1_r3, p2_r1, p2_r2, p2_r3 )
    expect(expected).to eq 'Player1'
  end

  #Test 10
  it 'scissors compare con monkey deberia ser lose ' do
    expected = scissors.compare(monkey)
    expect(expected).to eq 'lose'
  end

  #Test 11
  it 'scissors compare con scissors deberia ser tie ' do
    expected = scissors.compare(scissors)
    expect(expected).to eq 'tie'
  end

  #Test 12
  it 'scissors compare con stone deberia ser lose ' do
    expected = scissors.compare(stone)
    expect(expected).to eq 'lose'
  end

  #Test 13
  it 'scissors compare con paper deberia ser win ' do
    expected = scissors.compare(paper)
    expect(expected).to eq 'win'
  end

  #Test 14
  it 'monkey compare con scissors deberia ser lose ' do
    expected = monkey.compare(scissors)
    expect(expected).to eq 'lose'
  end

  #Test 15
  it 'monkey compare con stone deberia ser tie ' do
    expected = monkey.compare(stone)
    expect(expected).to eq 'tie'
  end

  #Test 16
  it 'monkey compare con paper deberia ser win ' do
    expected = monkey.compare(paper)
    expect(expected).to eq 'win'
  end

  #Test 17
  it 'monkey compare con monkey deberia ser tie ' do
    expected = monkey.compare(monkey)
    expect(expected).to eq 'tie'
  end

  #Test 18
  it 'paper compare con scissors deberia ser lose ' do
    expected = paper.compare(scissors)
    expect(expected).to eq 'lose'
  end

  #Test 19
  it 'paper compare con stone deberia ser win ' do
    expected = paper.compare(stone)
    expect(expected).to eq 'win'
  end

  #Test 20
  it 'paper compare con paper deberia ser tie ' do
    expected = paper.compare(paper)
    expect(expected).to eq 'tie'
  end

  #Test 21
  it 'paper compare con monkey deberia ser lose ' do
    expected = paper.compare(monkey)
    expect(expected).to eq 'lose'
  end

  #Test 22
  it 'j1 play monkey y j2 play scissors deberia ganar j2 ' do
    p1_r1 = player1.monkey
    p2_r1 = player2.scissors
    game.play_round(p1_r1, p2_r1)
    expected = game.rounds[0]
    expect(expected).to eq 'p2'
  end

  #Test 23
  it 'j1 play monkey y j2 play monkey deberia ser round tie ' do
    p1_r1 = player1.paper
    p2_r1 = player2.paper
    game.play_round(p1_r1,p2_r1)
    expected = game.rounds[0]
    expect(expected).to eq 'tie'
  end

  #Test 24
  it 'j1 y j2 juegan un game y gana j2 deberia ser Player2 ' do
    p1_r1 = player1.paper
    p1_r2 = player1.paper
    p1_r3 = player1.paper
    p2_r1 = player2.scissors
    p2_r2 = player2.scissors
    p2_r3 = player2.scissors
    expected = game.play_game(p1_r1, p1_r2, p1_r3, p2_r1, p2_r2, p2_r3 )
    expect(expected).to eq 'Player2'
  end

end