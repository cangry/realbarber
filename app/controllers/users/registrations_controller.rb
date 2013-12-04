class Users::RegistrationsController < Devise::RegistrationsController
  def update
    # For Rails 4
    account_update_params = devise_parameter_sanitizer.sanitize(:account_update)
   
    # required for settings form to submit when password is left blank
    if account_update_params[:password].blank?
      account_update_params.delete("password")
      account_update_params.delete("password_confirmation")
    end

    @user = User.find(current_user.id)
    if @user.update_attributes(account_update_params)
      set_flash_message :notice, :updated
      # Sign in the user bypassing validation in case his password changed
      sign_in @user, :bypass => true
      redirect_to after_update_path_for(@user)
    else
      render "edit"
    end
  end

  def after_sign_up_path_for(resource)
    '/users/edit'
  end

  def edit
    #passes value to devise/registrations/edit.html.erd 
    @barber = Barber.where("user_id = ?", current_user.id)
  end
end
