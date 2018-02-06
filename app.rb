require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello Josu and Hunor and world!'
end

get '/secret' do
  'password to NASA is = 12345'
end

get '/cat' do
  @name = ["Amigo", "Óscar", "Viking"].sample
  erb(:index)
end
