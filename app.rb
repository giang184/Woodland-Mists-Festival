require 'sinatra'
require 'sinatra/reloader'
require './lib/stage'
require './lib/artist'
also_reload 'lib/**/*.rb'
require 'pry'

get '/' do
  @stages = Stage.all
  erb :stages
end

post '/stages' do
  stage = Stage.new(params[:stage_name], nil)
  stage.save
  @stages = Stage.all
  erb :stages
end

get '/stages/new' do
  erb :new_stage
end

get '/stages/:id' do
  @stage = Stage.find(params[:id].to_i())
  erb :stage
end