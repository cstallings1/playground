require 'sinatra'
require 'sinatra/reloader'


get '/' do 
	@title = "Drink Order"
	erb :index
end

post '/order' do
	@title = 'Thank you for placing your order!'
	@name = params["name"]
	@drink = params["drink"] 
	@temperature = params["temperature"]
	
	erb :order
end

get '/history' do 
	@title = 'Today\'s Order History'
	erb :history, :locals => {"name" => @name, "drink" => @drink}
end


	
