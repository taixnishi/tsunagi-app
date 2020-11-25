class AddMapInfoToShops < ActiveRecord::Migration[6.0]
  def change
    add_column :shops, :address, :string
    add_column :shops, :latitude, :float 
    add_column :shops, :longitude, :float
  end
end


