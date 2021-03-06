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

  #Test 3
  it 'calculator average de 1 y 3 should be 2' do
    expected = 2
    expect(expected).to eq calculator.average(1,3)
  end

  #Test 4
  it 'calculator without operations should be 0' do
    expected = 0
    expect(expected).to eq calculator.number_of_operations()
  end

  #Test 5
  it 'calculator with  2 operations should be 2' do
    calculator.sum(2,2)
    calculator.subtract(2,2)
    expected = 2
    expect(expected).to eq calculator.number_of_operations()
  end

  #Test 6
  it 'calculator with  2 operations and reset operations should be 0' do
    calculator.sum(2,2)
    calculator.subtract(2,2)
    calculator.reset_number_of_operations()
    expected = 0
    expect(expected).to eq calculator.number_of_operations()
  end


end