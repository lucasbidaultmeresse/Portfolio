require 'sinatra'

# FORCE l'affichage de l'erreur détaillée sur Render
set :show_exceptions, :after_handler
set :raise_errors, true

# Chemins simplifiés vers tes dossiers
set :views, File.join(File.dirname(__FILE__), 'app', 'views', 'pages')
set :public_folder, File.join(File.dirname(__FILE__), 'public')

get '/' do
  # On essaie d'afficher home.erb ou home.html.erb
  erb :home
end