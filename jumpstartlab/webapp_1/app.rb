require 'sinatra'
require 'sinatra/reloader'
require 'rubygems'
require 'data_mapper'

DataMapper.setup(:default, ENV['DATABASE_URL'] || "sqlite3://#{Dir.pwd}/development.db")

class Order
  include DataMapper::Resource
  property :id,           Serial
  property :name,         String, :required => true
  property :drink, 		  String
  property :temperature,  String
  property :ordered_on, DateTime
end
DataMapper.finalize

get '/' do 
	@title = "Drink Order"
	erb :index
end

post '/order' do
	@title = 'Thank you for placing your order!'
	@name = params["name"]
	@drink = params["drink"] 
	@temperature = params["temperature"]

	Order.new(params).save!
	
	erb :order
end

get '/history' do 
	@title = 'Today\'s Order History'
	@orders = Order.all

	erb :history
end



	
