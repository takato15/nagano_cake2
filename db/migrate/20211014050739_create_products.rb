class CreateProducts < ActiveRecord::Migration[5.2]
  def change
    create_table :products do |t|
      t.integer :genre_id
      t.string :name
      t.text :caption
      t.integer :price
      t.string :image_id
      t.boolean :is_active, default: true

      t.timestamps
    end
  end
end
