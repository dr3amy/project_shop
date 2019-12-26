class RegistrationsController < Devise::RegistrationsController
  private

  def signup_params
    params.require(:users).permit(:email,
                                  :password,
                                  :password_confirmation)
  end

  def account_update_params
    params.require(:users).permit(:email,
                                  :password,
                                  :password_confirmation,
                                  :current_password)
  end
end