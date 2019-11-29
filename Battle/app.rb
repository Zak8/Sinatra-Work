require 'sinatra/base'

class Battle < Sinatra::Base
  # ... app code here ...
  get "/" do
    erb :index
  end

  post "/names" do
    @playerOneName = params[:playerOne]
    @playerTwoName = params[:playerTwo]
    erb :play
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end