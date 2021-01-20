require 'sinatra'

class Battle < Sinatra::Base

get '/' do
  p 'Hi battle fans'
end

run! if app_file == $0
end
