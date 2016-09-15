ENV['RACK_ENV'] = 'test'

require 'minitest/autorun'
require 'rack/test'
require 'sinatra/base'

require_relative '../../app/routes/'
require_relative '../../app'
