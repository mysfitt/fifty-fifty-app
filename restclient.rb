require 'digest'

class FiftyClient
	attr_reader :endpoint

	TOKEN = "secret"

	def initialize endpoint
		@conn = Faraday.new(:url => endpoint) do |f|
			f.request	:url_encoded
		end
	end

	def post_token
		@conn.post do |req|
			req.headers['Authorization'] = "Token token=" + TOKEN
		end
	end
end