#require_relative 'algunmodelo?'

module Calculator
  class App < Padrino::Application
    register Padrino::Rendering
    register Padrino::Helpers

    enable :sessions

  end
end