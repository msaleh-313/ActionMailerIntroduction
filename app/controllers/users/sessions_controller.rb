# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :configure_sign_in_params, only: [:create]
    after_action :send_signIn_email ,only: [:create]
    
    protected 

    def send_signIn_email
      if user_signed_in?
        UserMailer.with(user: current_user).signIn_email.deliver_later
      end
    end
  
  
    # GET /resource/sign_in
  # def new
  #   super
  # end

  # POST /resource/sign_in
  #  def create
  #  super
  #  end

  # DELETE /resource/sign_out
  # def destroy
  #   super
  # end


  #  def after_sign_in_path_for(resource)
  #   # devise ka baki sign_in system wohi rahay ga
  #   #  bus oper wala system alehda say add hoga
  #   super(resource)     
  #  end



  # If you have extra params to permit, append them to the sanitizer.
  # def configure_sign_in_params
  #   devise_parameter_sanitizer.permit(:sign_in, keys: [:attribute])
  # end
end
