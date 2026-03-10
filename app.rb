require 'sinatra'

set :root, File.dirname(__FILE__)
set :views, File.join(settings.root, 'app', 'views')
set :public_folder, File.expand_path('../public', __FILE__)

# Très important pour le débug sur Render
set :show_exceptions, :after_handler

# ROUTES PRINCIPALES
get '/' do
  erb :"pages/home" # Sinatra va automatiquement utiliser views/layout.erb
end

get '/contacter' do
  erb :"pages/contacter"
end

get '/projets' do
  erb :"pages/projets"
end

# ROUTES PROJETS
get '/projets/busterblock' do
  erb :"projets/busterblockapi"
end

get '/projets/greenpulse' do
  erb :"projets/greenpulse"
end

get '/projets/kaypicphoto' do
  erb :"projets/kaypicphoto"
end

get '/projets/recherchestage' do
  erb :"projets/recherchestage"
end