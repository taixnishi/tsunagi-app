class ApplicationController < ActionController::Base
  # before_action :authenticate_user!
  # ログイン後に遷移したいページを指定
  def after_sign_in_path_for(resource)
    root_path
  end


    private
    # before_action :sign_in_required, only: [:show]をpostに追加
    # ー>ログインしているユーザーだけにアクセス可能に、ログインしてない場合はログインページに遷移
      def sign_in_required
          redirect_to new_user_session_url unless user_signed_in?
      end
end
