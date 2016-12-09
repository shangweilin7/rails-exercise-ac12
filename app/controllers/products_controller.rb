class ProductsController < ApplicationController

  def index
    @products = Product.page(params[:page])
  end

  def show
    @product = Product.find_by_friendly_id(params[:id])
  end

end
