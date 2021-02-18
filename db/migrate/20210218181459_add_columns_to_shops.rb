class AddColumnsToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :postal_code, :string
    add_column :shops, :city, :string
    add_column :shops, :building, :string
  end
end
