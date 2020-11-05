class CreateShops < ActiveRecord::Migration[6.0]
  def change
    create_table :shops do |t|
      t.string :name
      t.string :genre
      t.integer :uid
      t.text :content

      t.timestamps
    end
  end
end
