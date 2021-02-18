class Shop < ApplicationRecord
    belongs_to :user
    has_many :cloths, dependent: :destroy
    mount_uploader :image, ImageUploader
    # geocoderを使用するため。この記述で住所（カラムaddress）を入れたときに、自動でその住所の緯度、経度をカラムlatitude,longitudeに記述してくれる。#
    geocoded_by :address
    after_validation :geocode ,if: :address_changed?

    # ###############################
    include JpPrefecture
    jp_prefecture :prefecture_code,method_name: :pref
    
    def prefecture_name
      JpPrefecture::Prefecture.find(code: prefecture_code).try(:name)
    end
      
    def prefecture_name=(prefecture_name)
      self.prefecture_code = JpPrefecture::Prefecture.find(name: prefecture_name).code
    end
end
