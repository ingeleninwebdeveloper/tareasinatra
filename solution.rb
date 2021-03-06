require 'sinatra'
require 'make_todo'

get '/' do
  erb :index
end

get '/completas' do
  erb :completas
end

post '/nueva/tarea' do
  Tarea.create(params[:titulo])
  redirect '/'
end

patch '/tarea/:id/actualizar' do
  Tarea.update(params[:id])
  redirect '/'
end

delete '/tarea/:id/eliminar' do
  Tarea.destroy(params[:id])
  redirect '/'
end
