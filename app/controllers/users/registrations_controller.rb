class Users::RegistrationsController < Devise::RegistrationsController
  # POST /resource
  def create
    build_resource(sign_up_params)

    if resource.save
      #Here we can check if the registration is for Barber or Customer
      #Create empty barber

      if resource.is_barber == true
        Barber.create! :user_id => resource.id, :zip => params[:zip]
      else
        Customer.create! :user_id => resource.id, :zip => params[:zip]
      end

      Notifier.welcome_email(resource).deliver

      yield resource if block_given?
      if resource.active_for_authentication?
        set_flash_message :notice, :signed_up if is_flashing_format?
        sign_up(resource_name, resource)
        respond_with resource, :location => after_sign_up_path_for(resource)
      else
        set_flash_message :notice, :"signed_up_but_#{resource.inactive_message}" if is_flashing_format?
        expire_data_after_sign_in!
        respond_with resource, :location => after_inactive_sign_up_path_for(resource)
      end
    else
      clean_up_passwords resource
      respond_with resource
    end
  end


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
      if(Barber.find_by user_id: resource.id)
        '/users/edit'
      else
        '/haircuts'
      end      
  end

  def edit
    #passes value to devise/registrations/edit.html.erd 
    @barber = Barber.find_by user_id: current_user.id

  end
end
