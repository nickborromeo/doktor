module Doktor
  module Routes
    class PrinterAPI < Core
      get '/printer/:name/check/response' do |name|
        "valid route for fulfiller #{name}"
      end
    end
  end
end
