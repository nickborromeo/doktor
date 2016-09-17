module Doktor
  module Routes
    class Printer < Core
      FULFILLERS = [:marco, :rpi_minted, :globalsoft, :timberline, :taylor_api,
      :taylor_art_api, :cgx_api, :whcc_api, :taylor_taymark, :minted_facility,
      :minted_facility_home_decor, :endicia, :taylor_labelworks, :cgx_sample,
      :taylor_sample_api].freeze

      get '/printer/:name/check/response' do |name|
        return status 404 unless FULFILLERS.include?(name.to_sym)
        "valid route for fulfiller #{name}"
      end
    end
  end
end
