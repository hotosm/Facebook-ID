require 'rubygems'
require 'sinatra'
require 'crack'


post '/canvas' do
  raw = request.env["rack.input"].read #not sure if this is right, just need the post info
  params = Crack::JSON.parse(raw)
  username = params["user"]
  algorithm = params["algorithm"]
  issued_at = params["issued_at"]
  
  erb :index
end

post '/denied' do
  
  
end

post '/allowed' do
  
  
end