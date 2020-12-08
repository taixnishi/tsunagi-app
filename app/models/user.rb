class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable # ,:omniauthable, omniauth_providers:[:twitter] 

  has_many :shops
  has_many :cloths
  mount_uploader :image, ImageUploader
end
