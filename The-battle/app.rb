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
    session[:player_2_health] = 50
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1.name
    @player_2 = $player_2.name
    @player_2_health = session[:player_2_health]
    erb(:play)
  end

  post '/attacks' do
  @player_1 = $player_1.name
  @player_2 = $player_2.name
    erb(:attacks)
  end

  run! if app_file == $0
end
