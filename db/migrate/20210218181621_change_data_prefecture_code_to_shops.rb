class ChangeDataPrefectureCodeToShops < ActiveRecord::Migration[6.0]
  def change
    change_column :shops, :prefecture_code, :string
  end
end
