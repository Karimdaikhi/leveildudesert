class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.require(:profile).permit(:age, :sexe, :ethnicity, :skin_type, :body_type)
  end


end
