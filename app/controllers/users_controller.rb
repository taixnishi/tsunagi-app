class UsersController < ApplicationController
  # before_action :authenticate_user!
  # マイページ
  def show
    @user = User.find(params[:id])
    @shops = @user.shops
  end
end
