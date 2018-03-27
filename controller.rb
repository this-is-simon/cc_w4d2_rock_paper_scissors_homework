require 'sinatra'
require 'sinatra/contrib/all'
require 'pry-byebug'
require_relative './models/game.rb'

get '/' do
   return "Hello world!"
end

get '/game/:player1/:player2' do
  game_result = Game.new(params[:player1], params[:player2])
  return game_result.winner
  #We call the method .winner from our game.rb on the variable game_result
end
