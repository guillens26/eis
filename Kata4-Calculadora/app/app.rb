require_relative '../app/models/calculator'

module CalculatorApp
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers
    calculator = Calculator.new

    enable :sessions

    
    get '/' do
      render '/home'
    end

    post '/' do
      @operation_choose = params[:operations]
      @result = calculator.send(@operation_choose, params[:operator1].to_i, params[:operator2].to_i)
      render '/home'
    end

  end
end