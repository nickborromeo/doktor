require_relative './routes_helper'

class AppRoutesPrinterAPITest < Minitest::Test
  include Rack::Test::Methods

  def app
    Doktor::App
  end

  def test_response_code_for_fulfiller
    get '/printer/cgx/check/response'
    assert_equal 200, last_response.status
  end
end
