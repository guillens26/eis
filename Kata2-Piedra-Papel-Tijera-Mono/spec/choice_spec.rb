require 'rspec' 
require_relative '../model/choices/stone'
require_relative '../model/choices/paper'


describe 'Stone' do

  let(:stone) { Stone.new }
  let(:paper) { Paper.new } 

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

end