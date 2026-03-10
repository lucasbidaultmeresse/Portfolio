require 'sinatra'

# Racine du projet
set :root, File.dirname(__FILE__)

# On remonte d'un dossier pour englober 'pages' et 'projets'
set :views, File.join(settings.root, 'app', 'views')
set :public_folder, File.join(settings.root, 'public')

set :show_exceptions, :after_handler

helpers do
  def image_tag(path, options = {})
    src = "/assets/images/#{path}"
    attrs = options.map { |k, v| "#{k}='#{v}'" }.join(" ")
    "<img src='#{src}' #{attrs}>"
  end
end

# --- PAGES PRINCIPALES ---

get '/' do
  erb :"pages/home"
end

get '/contacter' do
  erb :"pages/contacter"
end

get '/projets' do
  # Sinatra trouvera projets.html.erb ou projets.erb
  erb :"pages/projets"
end

# --- PAGES DÉTAILS PROJETS ---

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