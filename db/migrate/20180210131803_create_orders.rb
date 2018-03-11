class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false
      t.integer :product_id, null: false
      t.string :title, null: false
      t.text :comment
      t.string :recipient_name, null: false
      t.string :tel, null: false
      t.integer :postal_code, null: false
      t.string :address_1, null: false
      t.string :address_2, null: false
      t.integer :shipping_type, null: false
      t.integer :progress, null: false
      t.boolean :active
      t.integer :created_user_id
      t.integer :updated_user_id

      t.timestamps
    end
  end
end
