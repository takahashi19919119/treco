class ApplicationController < ActionController::Base

before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource)
  	
  treco_main_treco_main_select_path
  	
  end

  def after_sign_up_path_for(resource)
   
  new_user_session_path
    
  end

  def after_sign_out_path_for(resource)
    new_user_session_path
  end

 # def after_sign_out_path_for(resource)
  #  index_user_management_path
  #end

 protected

  def configure_permitted_parameters
    # 新規登録時にnicknameの取得を許可
    #devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email])
    # 情報更新時にnicknameの取得を許可
    #devise_parameter_sanitizer.permit(:account_update, keys: [:nickname])

   
  end



end
