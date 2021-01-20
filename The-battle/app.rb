require 'sinatra'

class Battle < Sinatra::Base
  get '/' do
    p 'Test infrastructure working!'
  end

  run! if app_file == $0
end
