require 'sinatra'
require 'digest'
require 'sinatra/config_file'

config_file 'config.yml'


#require_relative './restclient.rb'
TOKEN = "secret"
API_URL = "http://#{settings.apihostname}:#{settings.apiport}/fifty_fifty"

get '/home' do
	@url = API_URL
	@token = Digest::SHA256.hexdigest(TOKEN)

	erb :index
end