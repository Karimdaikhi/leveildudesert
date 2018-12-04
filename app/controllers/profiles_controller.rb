class ProfilesController < ApplicationController
  def show
    @profile = Profile.find(params[:id])
  end

  private

  def profile_params
    params.require(:profile).permit(:age, :sexe, :ethnicity, :body_zone, :skin_type)
  end
end