class ClothsController < ApplicationController
    before_action :set_find, only: [:create,:destroy]
    def create
        @cloth = @shop.cloths.new(cloth_params)
        @cloth.user_id = current_user.id
        if @cloth.save
            flash[:success] = "投稿に成功しました"
            redirect_to request.referer
        else
            @shop_new = Shop.new
            @cloths = @shop.cloths
            flash[:alert] = "投稿に失敗しました"
            redirect_to new_shop_path
        end
    end

    def destroy
        @cloth = @shop.cloths.find(params[:id])
        @cloth.destroy
        redirect_back(fallback_location: root_path)
        # if @cloth.destroy
        #     flash[:success] = "削除しました"
        #     redirect_to @shop_path(@shop)
        # else
        #     flash[:alert] = '削除に失敗しました'
        #     render @shop_path(@shop)
        # end
    end

        private
            def cloth_params
                params.require(:cloth).permit(:cloth_contents,:shop_id,:image,:cloth_name)  
            end
            def set_find
                @shop = Shop.find(params[:shop_id])
            end
end