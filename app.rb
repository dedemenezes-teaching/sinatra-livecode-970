require "sinatra"
require "sinatra/reloader" if development?
require "sinatra/activerecord"
require "pry-byebug"
require "better_errors"
require_relative "config/application"

get "/" do
  @restaurants = Restaurant.all
  erb :index
end

get "/restaurants/:id" do
  # 1. retrieve the restaurant by the id
  @restaurant = Restaurant.find(params[:id])
  # 2. display the restaraunt details
  erb :show
end
