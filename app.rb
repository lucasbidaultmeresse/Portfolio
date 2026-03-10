require 'sinatra'

# Force le chemin absolu vers la racine du projet
set :root, File.expand_path('..', __FILE__)

# Configuration explicite des dossiers
set :views, File.join(settings.root, 'app', 'views')
set :public_folder, File.join(settings.root, 'public')
set :public_folder, File.dirname(__FILE__) + '/public'

# Optionnel : pour vérifier que Sinatra "voit" bien le dossier au démarrage
puts "Dossier public configuré sur : #{settings.public_folder}"

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
get '/projets/busterblockapi' do
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