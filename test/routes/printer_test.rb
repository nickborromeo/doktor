require_relative './routes_helper'

class AppRoutesPrinterTest < Minitest::Test
  include Rack::Test::Methods

  def app
    Doktor::App
  end

  def test_response_code_for_valid_fulfiller
    get '/printer/cgx_api/check/response'
    assert_equal 200, last_response.status
  end

  def test_response_code_for_invalid_fulfiller
    get '/printer/invalid_fulfiller/check/response'
    assert_equal 404, last_response.status
  end
end
