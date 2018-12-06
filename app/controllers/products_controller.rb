class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @profile = Profile.create(profile_params)
    url = @profile.photo.url

    Clarifai::Rails::Detector.new('url', 'c0c0ac362b03416da06ab3fa36fb58e3').image

    # @products = Product.all
    # if params[:query].present?
    #   @products = Product.search_by_title_and_description(params[:query])
    # else
    #   @products = Product.all
    # end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo, :skin_type, :body_zone, :fullness, :sexe, :ethnicity)
  end

  def profile_params
    params.require(:profile).permit(:photo, :age, :sexe, :ethnicity)
  end

end
