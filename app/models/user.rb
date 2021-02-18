class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
        #  :confirmable # ,:omniauthable, omniauth_providers:[:twitter] 

  has_many :shops
  has_many :cloths
  mount_uploader :image, ImageUploader

  def self.guest
    find_or_create_by!(email: 'guest@example.com',username: 'ゲストユーザー') do |user|
      user.password = SecureRandom.urlsafe_base64
      # user.confirmed_at = Time.now  # Confirmable を使用している場合は必要
    end
  end
end
