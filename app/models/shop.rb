class Shop < ApplicationRecord
    belongs_to :user
    has_many :cloths, dependent: :destroy
    mount_uploader :image, ImageUploader
    # geocoderを使用するため。この記述で住所（カラムaddress）を入れたときに、自動でその住所の緯度、経度をカラムlatitude,longitudeに記述してくれる。#
    geocoded_by :address
    after_validation :geocode ,if: :address_changed?

    # ###############################
end
