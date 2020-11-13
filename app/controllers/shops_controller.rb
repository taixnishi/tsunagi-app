class ShopsController < ApplicationController
  # ログインしていないユーザーをログイン画面に送る
  before_action :authenticate_user!, except: [:index]  
  before_action :set_find, only: [:show, :edit,:update,:destroy]
  def index
    @shops = Shop.all
  end

  def new
    @shop = Shop.new
  end

  def create 
    @shop = Shop.new(shop_params)
    @shop.user_id = current_user.id
    if @shop.save 
      # flash[:success] = "投稿が完了しました"
      redirect_to shops_path
    else
      # flash[:alert] = "投稿失敗しました"
      render 'new'
    end
  end

  def show
    @user = @shop.user
  end

  def edit
  end

    private
        def shop_params
            params.require(:shop).permit(:content,:genre,:name)
        end

        def set_find 
          @shop = Shop.find(params[:id])
        end
end
