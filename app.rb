require 'sinatra'

#require_relative './restclient.rb'
TOKEN = "secret"
API_URL = "http://localhost:3000/fifty_fifty"

get '/home' do
	@url = API_URL
	@token = TOKEN

	erb :index
end