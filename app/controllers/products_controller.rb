class ProductsController < ApplicationController
  def index
    @products = Product.all.order(:created_at)
  end
end
