class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.integer :design_id
      t.integer :material_id
      t.string :name
      t.text :description
      t.string :image_original_filename
      t.string :image
      t.string :url
      t.integer :price
      t.integer :sale_status
      t.boolean :active
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
