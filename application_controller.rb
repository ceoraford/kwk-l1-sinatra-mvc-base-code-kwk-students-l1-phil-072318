require 'bundler'
require './models/model'
Bundler.require

class MyApp < Sinatra::Base
  get '/' do 
    "This is our home page"
  end 
  get '/AllAboutMe' do 
    erb:index
  end
  get '/hello/:name' do 
    @yourname = params[:name]
    "Hello #{@yourname}"
  end 
  get  '/favoriteanimal' do 
    erb:favorite_animal
  end 
  post '/favoriteanimal' do 
    "My name is #{params[:name]} and I love #{params[:favoriteanimal]}s"
  end
end
