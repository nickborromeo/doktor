module Doktor
  module Routes
    class Printer < Core
      get '/printer/:name/check/response' do |name|
        return status 404 unless Papi::FULFILLERS.include?(name.to_sym)
        Papi.get(name, 'v1', 'pos')
      end
    end
  end
end
