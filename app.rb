require 'sinatra'

# On définit explicitement la racine du projet
set :root, File.dirname(__FILE__)

# Configuration des dossiers (Syntaxe la plus sûre pour Render)
set :views, File.join(settings.root, 'app', 'views', 'pages')
set :public_folder, File.join(settings.root, 'public')

# Pour voir l'erreur réelle si ça replante
set :show_exceptions, :after_handler

helpers do
  def image_tag(path, options = {})
    src = "/assets/images/#{path}" # On suppose que tes images sont dans public/assets/images
    attrs = options.map { |k, v| "#{k}='#{v}'" }.join(" ")
    "<img src='#{src}' #{attrs}>"
  end
end

get '/' do
  # On s'assure de chercher le bon fichier (home.erb ou home.html.erb)
  erb :home
end