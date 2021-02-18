class AddPrefectureCodeToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :prefecture_code, :integer
  end
end
