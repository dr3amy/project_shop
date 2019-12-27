class UsersController < ApplicationController
  def profile
      @orders = Order.where(user_id: current_user.id) unless !(current_user)
    end
end