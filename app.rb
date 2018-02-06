require 'sinatra'

set :session_secret, 'super secret'

get '/' do
  'Hello Josu and Hunor and world!'
end

get '/secret' do
  'password to NASA is = 12345'
end

get '/random-cat' do
  @name = %w[Amigo Óscar Viking].sample
  erb(:index)
end

get '/named-cat' do
  p params
  @name = params[:name]
  erb(:index)
end
