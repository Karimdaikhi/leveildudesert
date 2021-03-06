require "csv"

class ProductsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show, :products]

  def index
  end

  def products
    @products = Product.all
    if params[:query].present?
      @products = Product.search_by_title(params[:query])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product.save
  end

  def reservation
    @product = Product.find(params[:id])
  end

  def sendmail

  end

  # private

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo, :skin_type, :body_zone, :fullness, :sexe, :ethnicity, :query)
  end

  # def profile_params
  #   params.require(:profile).permit(:photo)
  # end
end
