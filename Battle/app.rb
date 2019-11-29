require 'sinatra/base'

class Battle < Sinatra::Base
  enable :sessions

  get "/" do
    erb :index
  end

  post "/names" do
    session[:playerOneName] = params[:playerOne]
    session[:playerTwoName] = params[:playerTwo]
    redirect '/play'
  end

  get '/play' do
    @playerOneName = session[:playerOneName]
    @playerTwoName = session[:playerTwoName]
    
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
