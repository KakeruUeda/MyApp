class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  private

  def after_sign_in_path_for(resource)
    public_user_path(resource)
  end

  def after_sign_out_path_for(resource)
    root_path
  end
  
  def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:last_name, :first_name, :last_name_kana, :first_name_kana, :user_name, :postal_code, :prefecture, :municipality, :housenumber_building, :telephone_number])
  end

end
