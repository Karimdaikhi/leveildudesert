class ProfilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new, :diagnostic, :results]

  def diagnostic
    # afficher les 3 premirèes données de probabilité de age, sexe, ethnicité
    # récupérées depuis le json
  end

  def results
    # matcher le profil avec les produits
  end

  private

  def profile_params
    params.require(:profile).permit(:photo, :age, :sexe, :ethnicity, :skin_type, :body_zone)
  end

end
