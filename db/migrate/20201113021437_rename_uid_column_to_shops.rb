class RenameUidColumnToShops < ActiveRecord::Migration[6.0]
  def change
    rename_column :shops, :uid, :user_id
  end
end
