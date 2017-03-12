require 'sinatra'
require 'digest'

#require_relative './restclient.rb'
TOKEN = "secret"
API_URL = "http://localhost:3000/fifty_fifty"

get '/home' do
	@url = API_URL
	@token = Digest::SHA256.hexdigest(TOKEN)

	erb :index
end