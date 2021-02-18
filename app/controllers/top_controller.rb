class TopController < ApplicationController
  before_action :authenticate_user!, except: [:index]  
  def index
    # 最新の投稿を6件取得
    @latest_shops = Shop.order(created_at: :desc).limit(6)
  end

  def search 
  end

  private
  def shop_params
      params.require(:shop).permit(:content,:genre,:name,:image,:address,:latitude,:longitude)
  end
end
