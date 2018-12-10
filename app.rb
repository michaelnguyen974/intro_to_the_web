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
  @random_name = ["Amigo", "Oscar", "Viking"].sample
  erb(:index)
end

get '/named_cat' do 
  @name = params[:name]
  @age = params[:age]
  erb(:index)
end 

