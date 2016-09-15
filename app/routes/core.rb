module Doktor
  module Routes
    class Core < Sinatra::Application
      get '/' do
        'The Doktor is in!!'
      end
    end
  end
end
