class CreateOrders < ActiveRecord::Migration[5.0]
  def change
    create_table :orders do |t|
      t.integer :user_id, null: false
      t.integer :design_id, null: false
      t.string :title, null: false
      t.text :comment
      t.integer :recipient_name, null: false
      t.integer :tel, null: false
      t.integer :postal_code, null: false
      t.string :address_1, null: false
      t.string :address_2, null: false
      t.integer :progress, null: false

      t.timestamps
    end
  end
end
