require_relative './lib/doktor/papi'
require_relative './app/routes'

module Doktor
  class App < Sinatra::Base
    use Routes::Core
    use Routes::Printer
  end
end

