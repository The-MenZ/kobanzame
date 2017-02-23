class CreateMaterials < ActiveRecord::Migration[5.0]
  def change
    create_table :materials do |t|
      t.integer :content_type
      t.text :content_value
      t.integer :status
      t.text :internal_comment
      t.text :external_comment
      t.integer :created_user_id
      t.integer :updated_user_id
      t.integer :active

      t.timestamps
    end
  end
end
