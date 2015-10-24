require 'rspec' 
require_relative '../app/models/calculator'

describe 'Calculator' do

  let(:calculator) { Calculator.new}

  #Test 1
  it 'calculator sum de 1 y 2 should be 3' do
    expected = 3
    expect(expected).to eq calculator.sum(1,2)
  end

  #Test 2
  it 'calculator sub de 2 y 2 should be 0' do
    expected = 0
    expect(expected).to eq calculator.subtract(2,2)
  end


end