#require_relative '../models/calculator'

module Calculator
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

    get '/' do
      render '/home'
    end

  end
end