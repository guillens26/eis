require 'rspec' 
require_relative '../model/choices/stone'


describe 'Stone' do

  let(:stone) { Stone.new }

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

end