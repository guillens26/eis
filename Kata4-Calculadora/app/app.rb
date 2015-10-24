require_relative '../app/models/calculator'

module CalculatorApp
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers
    calculator = Calculator.new

    enable :sessions

    
    get '/' do
      calculator.reset_number_of_operations()
      @memory = calculator.number_of_operations()
      render '/home'
    end

    post '/' do
      @operation_choose = params[:operations]
      @result = calculator.send(@operation_choose, params[:operator1].to_i, params[:operator2].to_i)
      @memory = calculator.number_of_operations()
      render '/home'
    end

  end
end