require 'sinatra'

# Configuration des dossiers
set :views, File.join(settings.root, 'app/views/pages')
set :public_folder, File.expand_path('../public', __FILE__)

# Helper pour simuler Ruby on Rails
helpers do
  def image_tag(path, options = {})
    # On gère le fait que tes images sont dans des sous-dossiers spécifiques
    src = "/#{path}" 
    attrs = options.map { |k, v| "#{k}='#{v}'" }.join(" ")
    "<img src='#{src}' #{attrs}>"
  end
end

get '/' do
  erb :home # Cherche app/views/pages/home.html.erb
end