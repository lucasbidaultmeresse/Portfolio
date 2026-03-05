class ProjetsController < ApplicationController
  def show
    # On récupère l'ID passé dans l'URL (ex: "Greenpulse")
    # On utilise .downcase directement ici pour être tranquille
    @nom = params[:id].downcase

    # Rails va chercher dans app/views/projets/le_nom_du_projet.html.erb
    render "projets/#{@nom}"
  end
end