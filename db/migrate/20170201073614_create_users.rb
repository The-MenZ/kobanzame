class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.integer :active
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
