require 'sinatra'
require 'sinatra/contrib/all' if development?
require 'pry-byebug'
require_relative './models/rps'
also_reload './models/*'


get '/rps/:option1/:option2' do
  rps = Rps.new(params[:option1], params[:option2])
  @game = rps.play()
  @player1 = params[:option1]
  @player2 = params[:option2]
  erb (:result)
end
