class UsersController < ApplicationController
  def profile
    @orders = Order.where(user_id: current_user.id)
  end
end