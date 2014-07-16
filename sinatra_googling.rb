require 'sinatra'
require 'googling'
  # keywords = "apple"
  # request.url + "?q=#{keywords}"

get '/search' do 
  @q = params[:q]
  @results = Googling.search(@q)
  erb :search
end