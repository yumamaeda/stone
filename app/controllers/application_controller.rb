class ApplicationController < ActionController::Base
  before_action :authenticate_user!, except: [:option]
  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

 def after_sign_in_path_for(resource)
    stone_images_path # ログイン後に遷移するpathを設定
  end

  def configure_permitted_parameters
    added_attrs = [ :name, :email, :password, :password_confirmation　]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end
end
