require 'sinatra'

# Configuration unique et robuste
set :root, File.dirname(__FILE__)
set :public_folder, Proc.new { File.join(root, "public") }
set :views, Proc.new { File.join(root, "app", "views") }

# Pour le débug
puts "Root: #{settings.root}"
puts "Public: #{settings.public_folder}"

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