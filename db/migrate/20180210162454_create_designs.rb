class CreateDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :designs do |t|
      t.integer :user_id, null: false
      t.string :name, null: false
      t.boolean :enable_cut, null: false, default: false
      t.integer :print_type, null: false
      t.string :design_original_filename, null: false
      t.string :design_file, null: false
      t.boolean :active, null: false, default: false
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
