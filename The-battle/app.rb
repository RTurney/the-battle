require 'sinatra'

class Battle < Sinatra::Base
enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player_1] = params[:player_1]
    session[:player_2] = params[:player_2]
    session[:player_2_health] = 50
    redirect '/play'
  end

  post '/attacks' do
  @player_1 = session[:player_1]
  @player_2 = session[:player_2]
    erb(:attacks)
  end


  get '/play' do
    @player_1 = session[:player_1]
    @player_2 = session[:player_2]
    @player_2_health = session[:player_2_health]
    erb(:play)
  end

  run! if app_file == $0
end
