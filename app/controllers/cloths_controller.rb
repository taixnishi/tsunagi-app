class ClothsController < ApplicationController
    # def create
    #     @shop = Shop.find(params[:shop_id])
    #     @cloth = @shop.cloths.new(cloth_params)
    #     @cloth.user_id = current_user.id
    #     if @cloth.save
    #       redirect_to request.referer
    #     else
    #       @shop_new = Shop.new
    #       @cloths = @shop.cloths
    #       redirect_to new_shop_path
    #     end
    #   end
    # end

    #     private
    #         def cloth_params
    #         params.require(:cloth).permit(:cloth_contents, :shop_id,image,cloth_name)  #formにてpost_idパラメータを送信して、コメントへpost_idを格納するようにする必要がある。
    #         end
end
