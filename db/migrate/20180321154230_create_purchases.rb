class CreatePurchases < ActiveRecord::Migration[5.0]
  def change
    create_table :purchases do |t|
      t.integer :user_id
      t.integer :order_id
      t.integer :purchase_status
      t.boolean :active
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
