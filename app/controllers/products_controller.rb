class ProductsController < ApplicationController
  def index
    @products = Product.all.order(:created_at)
  end
  def show
    @product = Product.all.find(params[:id])
  end
end
