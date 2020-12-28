class Cloth < ApplicationRecord
  belongs_to :user
  belongs_to :shop
  mount_uploader :image, ImageUploader
end
