require 'sinatra'

dogs = []

get '/dogs' do
    @dogs = dogs
    erb :dogs
end

get '/dogs/new' do
    erb :new
end

post '/dogs' do
    # "Dispare un post request y tus params son #{params}"
    dogs.push(params["name"])
    redirect '/dogs'
end
