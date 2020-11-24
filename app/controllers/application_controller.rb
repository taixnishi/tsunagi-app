class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  # before_action :authenticate_user!
  # ログイン後に遷移したいページを指定
  def after_sign_in_path_for(resource)
    user_path(resource.id)
  end


    private
    # before_action :sign_in_required, only: [:show]をpostに追加
    # ー>ログインしているユーザーだけにアクセス可能に、ログインしてない場合はログインページに遷移
      def sign_in_required
          redirect_to new_user_session_url unless user_signed_in?
      end
      def configure_permitted_parameters
        devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username])
        devise_parameter_sanitizer.permit(:account_update, keys: [:image])
      end
end
