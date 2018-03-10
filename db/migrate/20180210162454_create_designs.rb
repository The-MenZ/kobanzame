class CreateDesigns < ActiveRecord::Migration[5.0]
  def change
    create_table :designs do |t|
      t.integer :user_id, null: false
      t.string :design_original_filename, null: false
      t.string :design_file, null: false
      t.boolean :active
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
