require 'sinatra'
require 'shotgun'

set :session_secret, 'super secret'


get '/' do
  "Hello World, Michael is here"
end

get '/secret' do
  'secret' 
end 

get '/banana' do 
  'bananasv cdfxcvdfnzvdfhv '
end 

get '/random_cat' do
  @name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

