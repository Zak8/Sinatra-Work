require 'sinatra'

get '/' do
    "Hello World"
end
get '/secret' do
    "Shh this is a secret"
end
get '/new' do
    "This is a new one"
end
get '/old' do
    "This is an old one"
end
get '/special' do
    "This is a special case"
end
get '/random-cat' do
    @name =  ["Amiga", "Oscar", "Viking"].sample
    erb :index
end
post '/named-cat' do
    p params
    @name = params[:name]
    erb :index
end
get '/cat_route' do
    erb :cat_route
end

