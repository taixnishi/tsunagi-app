class UsersController < ApplicationController
  before_action :authenticate_user!
  # マイページ
  def show
    @user = User.find(params[:id])
    @shops = @user.shops
  end

  def following
      #@userがフォローしているユーザー
      @user  = User.find(params[:id])
      @users = @user.following
      render 'show_follow'
  end

  def followers
      #@userをフォローしているユーザー
      @user  = User.find(params[:id])
      @users = @user.followers
      render 'show_follower'
  end
  
end
