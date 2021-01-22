require 'sinatra'
require_relative './lib/player'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    $player_2 = Player.new(params[:player_2])
    $game = Game.new
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    @player_2 = $player_2
    erb(:play)
  end

  post '/attacks' do
    @player_1 = $player_1
    @player_2 = $player_2
    $game.attack($player_2)
    erb(:attacks)
  end

  run! if app_file == $0
end
