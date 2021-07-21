require 'sinatra'
require 'sinatra/reloader'
require('./lib/Stage')
also_reload 'lib/**/*.rb'
require 'pry'

get '/' do
  "Hello world!"
end