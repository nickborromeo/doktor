require 'faraday'

module Papi
  FULFILLERS = [:marco, :rpi_minted, :globalsoft, :timberline, :taylor_api,
  :taylor_art_api, :cgx_api, :whcc_api, :taylor_taymark, :minted_facility,
  :minted_facility_home_decor, :endicia, :taylor_labelworks, :cgx_sample,
  :taylor_sample_api].freeze

  def self.printer_api_url
    ENV.fetch('PRINTER_API_URL') { "https://printer-api.minted.com" }
  end

  def self.conn
    Faraday.new(url: printer_api_url) do |c|
      c.use Faraday::Response::Logger
      c.use Faraday::Adapter::NetHttp
    end
  end

  def self.request(*path_segments)
    fulfiller, *po_path = path_segments

    conn.basic_auth(fulfiller, 'password')
    conn.get do |req|
      puts req.url File.join('/', *po_path)
      req.url File.join('/', *po_path)
    end
  end

  def self.get(*path_segments)
    req = request(*path_segments)
    [req.status, req.body]
  end
end
