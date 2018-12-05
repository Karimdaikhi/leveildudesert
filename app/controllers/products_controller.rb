class ProductsController < ApplicationController
  def index
    @products = Product.all
    if params[:query].present?
      @products = Product.search_by_title_and_description(params[:query])
    else
      @products = Product.all
    end
  end

  def show
    @product = Product.find(params[:id])
  end

  private

  def product_params
    params.require(:product).permit(:name, :description, :price, :photo, :skin_type, :body_type, :fullness, :sexe, :ethnicity)
  end
end
