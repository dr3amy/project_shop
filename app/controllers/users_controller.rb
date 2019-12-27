class UsersController < ApplicationController
  def cart
    @orders = Order.where(user_id: current_user.id) unless !(current_user)
  end
  def add_to_cart
    if !(Order.find_by(user_id: current_user.id).present?)
      o = Order.create(user_id: current_user.id)
      o.products.push(Product.find_by_id(params[:id]))
    else
      Order.find_by(user_id: current_user.id).products.push(Product.find_by_id(params[:id]))
    end
  end
end