class ApplicationController < ActionController::Base

  #before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?



  def after_sign_in_path_for(resource)

  user_path(@user.id) #your path
  end






  protected
  def configure_permitted_parameters
    attributes = [:role,:first_name,:last_name,:profile,:subject_id,:tutor_id]
    devise_parameter_sanitizer.permit(:sign_up, keys: attributes)
  #  params.require(:user).permit(:role,:first_name,:last_name,:profile)
  end




end
