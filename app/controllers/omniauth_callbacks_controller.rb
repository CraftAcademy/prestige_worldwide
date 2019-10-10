class OmniauthCallbacksController < Devise::OmniauthCallbacksController

  def facebook
    @user = User.from_omniauth(request.env['omniauth.auth'])
    set_flash_message(:notice, :success, kind: 'Facebook' if is_navigational_format?
    else
      session['devise.facebook_date'] = request.env['ominauth.auth']
      redirect_to new_user_registration_path
    end
  end
end