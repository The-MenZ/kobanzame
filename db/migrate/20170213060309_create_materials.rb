class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.integer :material_type
      t.text :description
      t.boolean :enable_cut, null: false, default: false
      t.integer :print_type, null: false
      t.integer :price
      t.integer :provide_status, null: false
      t.integer :active
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
